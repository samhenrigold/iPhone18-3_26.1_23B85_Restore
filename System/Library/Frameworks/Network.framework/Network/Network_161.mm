uint64_t ___ZL41nw_protocol_ohttp_deliver_failure_messageP17nw_protocol_ohttpP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  nw_protocol_ohttp_context_deliver_failure_message(*(a1 + 32), extra, *(a1 + 40));
  return 1;
}

uint64_t nw_protocol_ohttp_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v18 = ___ZL40nw_protocol_ohttp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v19 = &__block_descriptor_tmp_34_29837;
      v20 = a2;
      v21 = handle;
      tqh_first = a2->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v4 = *(tqh_first + 4);
        v5 = v18(v17);
        tqh_first = v4;
      }

      while ((v5 & 1) != 0);
      return 1;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_ohttp_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null ohttp", buf, 12);
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &v23, &v22))
    {
      goto LABEL_35;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ohttp_finalize_output_frames";
        v11 = "%{public}s called with null ohttp";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ohttp_finalize_output_frames";
        v11 = "%{public}s called with null ohttp, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v23;
    v16 = os_log_type_enabled(v9, v23);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_ohttp_finalize_output_frames";
        v11 = "%{public}s called with null ohttp, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_ohttp_finalize_output_frames";
      v26 = 2082;
      v27 = backtrace_string;
      v15 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_ohttp_finalize_output_frames";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &v23, &v22))
  {
    goto LABEL_35;
  }

  if (v23 != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_ohttp_finalize_output_frames";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v23;
    v14 = os_log_type_enabled(v9, v23);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v25 = "nw_protocol_ohttp_finalize_output_frames";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v25 = "nw_protocol_ohttp_finalize_output_frames";
      v26 = 2082;
      v27 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v9 = __nwlog_obj();
  v10 = v23;
  if (os_log_type_enabled(v9, v23))
  {
    *buf = 136446210;
    v25 = "nw_protocol_ohttp_finalize_output_frames";
    v11 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t ___ZL40nw_protocol_ohttp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32) + 8);
  v3 = a2[4];
  v4 = a2[5];
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  a2[4] = 0;
  a2[5] = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = a2[11];
    if (v7)
    {
      if (v5 + 64 == v7)
      {
        if (*(v5 + 48))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = *(v5 + 304);
        if (v8)
        {
          *uu = 0;
          *&uu[8] = uu;
          v42 = 0x2000000000;
          v43 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
          v38 = &unk_1E6A30598;
          v39 = uu;
          v40 = v7;
          nw_hash_table_apply(v8, buf);
          v9 = *(*&uu[8] + 24);
          _Block_object_dispose(uu, 8);
          if (v9)
          {
LABEL_8:
            v10 = *(v7 + 232);
            if ((*(v5 + 356) & 2) != 0)
            {
              if (v10 >= 2)
              {
LABEL_10:
                if (*(v5 + 356))
                {
                  goto LABEL_19;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v11 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                v12 = *(v7 + 232);
                *buf = 136446978;
                *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                *&buf[12] = 2082;
                *&buf[14] = v5 + 357;
                *&buf[22] = 2080;
                v38 = " ";
                LOWORD(v39) = 1024;
                *(&v39 + 2) = v12;
                v13 = "%{public}s %{public}s%sState is not valid for sending: %u";
                v14 = v11;
                v15 = 38;
LABEL_18:
                _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_19:
                nw_frame_finalize(a2);
                return 1;
              }
            }

            else if (v10)
            {
              goto LABEL_10;
            }

            v18 = *(v7 + 236);
            if ((v18 & 4) != 0)
            {
              if (*(v5 + 356))
              {
                goto LABEL_19;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v16 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_19;
              }

              *buf = 136446722;
              *&buf[4] = "nw_ohttp_context_finalize_output_frame";
              *&buf[12] = 2082;
              *&buf[14] = v5 + 357;
              *&buf[22] = 2080;
              v38 = " ";
              v13 = "%{public}s %{public}s%sRequest is already complete";
            }

            else
            {
              memset(uu, 0, sizeof(uu));
              v19 = a2[8];
              if (v19)
              {
                v20 = (*(v19 + 66) >> 6) & 1;
                if (*(v19 + 48))
                {
                  *uu = *(v19 + 16);
                }
              }

              else
              {
                LOWORD(v20) = 0;
              }

              if (*(v7 + 224) || (v18 & 1) != 0)
              {
LABEL_49:
                *(v7 + 236) = *(v7 + 236) & 0xFFFB | (4 * v20);
                v24 = (v7 + 16);
                v25 = a2 + 2;
                v26 = a2[2];
                v27 = a2[3];
                if (v26)
                {
                  v24 = (v26 + 24);
                }

                *v24 = v27;
                *v27 = v26;
                a2[3] = 0;
                *v25 = 0;
                v28 = *(v7 + 32);
                a2[3] = v28;
                *v28 = a2;
                *(v7 + 32) = v25;
                nw_protocol_ohttp_prepare_request(v5, v7);
                return 1;
              }

              if (uuid_is_null(uu))
              {
                if (*(v5 + 356))
                {
                  goto LABEL_19;
                }

                v16 = __nwlog_obj();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                *buf = 136446722;
                *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                *&buf[12] = 2082;
                *&buf[14] = v5 + 357;
                *&buf[22] = 2080;
                v38 = " ";
                v13 = "%{public}s %{public}s%sNo request UUID in output frame";
                goto LABEL_17;
              }

              v21 = nw_protocol_copy_http_definition();
              v22 = nw_frame_copy_metadata_for_protocol(a2, v21);
              if (v21)
              {
                os_release(v21);
              }

              if (v22)
              {
                v23 = *(v7 + 72);
                if (v23)
                {
                  os_release(v22);
                  if (v23 != v22 && !uuid_compare((v7 + 56), uu))
                  {
                    if (*(v5 + 356))
                    {
                      goto LABEL_19;
                    }

                    v16 = __nwlog_obj();
                    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_19;
                    }

                    *buf = 136446722;
                    *&buf[4] = "nw_ohttp_context_finalize_output_frame";
                    *&buf[12] = 2082;
                    *&buf[14] = v5 + 357;
                    *&buf[22] = 2080;
                    v38 = " ";
                    v13 = "%{public}s %{public}s%sInvalid request UUID in output frame";
                    goto LABEL_17;
                  }
                }

                else
                {
                  *(v7 + 72) = v22;
                  *(v7 + 56) = *uu;
                }

                goto LABEL_49;
              }

              if (*(v5 + 356))
              {
                goto LABEL_19;
              }

              v16 = __nwlog_obj();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_19;
              }

              *buf = 136446722;
              *&buf[4] = "nw_ohttp_context_finalize_output_frame";
              *&buf[12] = 2082;
              *&buf[14] = v5 + 357;
              *&buf[22] = 2080;
              v38 = " ";
              v13 = "%{public}s %{public}s%sNo HTTP request in output frame";
            }

LABEL_17:
            v14 = v16;
            v15 = 32;
            goto LABEL_18;
          }
        }
      }
    }

    if (*(v5 + 356))
    {
      goto LABEL_19;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    *&buf[4] = "nw_ohttp_context_finalize_output_frame";
    *&buf[12] = 2082;
    *&buf[14] = v5 + 357;
    *&buf[22] = 2080;
    v38 = " ";
    v13 = "%{public}s %{public}s%sReceived invalid output frame";
    goto LABEL_17;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_ohttp_context_finalize_output_frame";
  v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null ohttp", buf, 12);
  uu[0] = 16;
  v36 = 0;
  if (__nwlog_fault(v30, uu, &v36))
  {
    if (uu[0] == 17)
    {
      v31 = __nwlog_obj();
      v32 = uu[0];
      if (!os_log_type_enabled(v31, uu[0]))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v33 = "%{public}s called with null ohttp";
      goto LABEL_65;
    }

    if (v36 != 1)
    {
      v31 = __nwlog_obj();
      v32 = uu[0];
      if (!os_log_type_enabled(v31, uu[0]))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v33 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = uu[0];
    v35 = os_log_type_enabled(v31, uu[0]);
    if (backtrace_string)
    {
      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "nw_ohttp_context_finalize_output_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_66;
    }

    if (v35)
    {
      *buf = 136446210;
      *&buf[4] = "nw_ohttp_context_finalize_output_frame";
      v33 = "%{public}s called with null ohttp, no backtrace";
LABEL_65:
      _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
    }
  }

LABEL_66:
  if (v30)
  {
    free(v30);
  }

  return 1;
}

uint64_t nw_protocol_ohttp_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null protocol";
      goto LABEL_50;
    }

    if (v30 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v25 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_50;
    }

    if (!v25)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v34 = 2082;
    v35 = backtrace_string;
    v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_36:
    _os_log_impl(&dword_181A37000, v19, v20, v26, buf, 0x16u);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (!handle)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null ohttp", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null ohttp";
      goto LABEL_50;
    }

    if (v30 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v27 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_50;
    }

    if (!v27)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v34 = 2082;
    v35 = backtrace_string;
    v26 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

  if (!a6)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null return_array", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null return_array";
      goto LABEL_50;
    }

    if (v30 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v33 = "nw_protocol_ohttp_get_output_frames";
      v21 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_50;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v28 = os_log_type_enabled(v19, type);
    if (backtrace_string)
    {
      if (v28)
      {
        *buf = 136446466;
        v33 = "nw_protocol_ohttp_get_output_frames";
        v34 = 2082;
        v35 = backtrace_string;
        v26 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_36;
      }

LABEL_37:
      free(backtrace_string);
      goto LABEL_51;
    }

    if (!v28)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v33 = "nw_protocol_ohttp_get_output_frames";
    v21 = "%{public}s called with null return_array, no backtrace";
LABEL_50:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
LABEL_51:
    if (v18)
    {
      free(v18);
    }

    return 0;
  }

  context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(handle, a2);
  if (!context_for_protocol)
  {
    return 0;
  }

  v10 = context_for_protocol;
  if (a4 >= 0xFFFF)
  {
    v11 = 0xFFFFLL;
  }

  else
  {
    v11 = a4;
  }

  if (a4)
  {
    v12 = nw_calloc_type<unsigned char>(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = nw_frame_create(0, v12, v11, nw_protocol_ohttp_output_frame_finalizer, v10);
  v14 = 1;
  nw_frame_set_buffer_used_malloc(v13, 1);
  *(v13 + 16) = 0;
  v15 = *(v10 + 16);
  *(v13 + 24) = v15;
  *v15 = v13;
  *(v10 + 16) = v13 + 16;
  *(v13 + 32) = 0;
  tqh_last = a6->tqh_last;
  *(v13 + 40) = tqh_last;
  *tqh_last = v13;
  a6->tqh_last = (v13 + 32);
  return v14;
}

void nw_protocol_ohttp_output_frame_finalizer(nw_frame *a1, BOOL a2, char *a3)
{
  v4 = a3 + 16;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v4 = (v5 + 24);
  }

  *v4 = v6;
  *v6 = v5;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a1);
}

void nw_protocol_ohttp_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ohttp_input_finished";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &type, &v19))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_input_finished";
      v10 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
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
          v22 = "nw_protocol_ohttp_input_finished";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v7)
        {
          return;
        }

LABEL_43:
        free(v7);
        return;
      }

      if (!v13)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_input_finished";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_input_finished";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if (*(handle + 88) == 1)
    {
      if ((handle[356] & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v22 = "nw_protocol_ohttp_input_finished";
          v23 = 2082;
          v24 = handle + 357;
          v25 = 2080;
          v26 = " ";
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived input finished", buf, 0x20u);
        }
      }

      nw_protocol_ohttp_read_response(handle, 1);
      v5 = *(handle + 38);
      if (v5)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = ___ZL32nw_protocol_ohttp_input_finishedP11nw_protocolS0__block_invoke;
        v18[3] = &__block_descriptor_tmp_33_29881;
        v18[4] = a1;
        nw_hash_table_apply(v5, v18);
      }
    }

    else if ((handle[356] & 1) == 0 && gLogDatapath == 1)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(handle + 88);
        *buf = 136446978;
        v22 = "nw_protocol_ohttp_input_finished";
        v23 = 2082;
        v24 = handle + 357;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v17;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
      }
    }

    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_ohttp_input_finished";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null ohttp", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v7, &type, &v19))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_input_finished";
    v10 = "%{public}s called with null ohttp";
    goto LABEL_41;
  }

  if (v19 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_input_finished";
    v10 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_41;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_input_finished";
    v10 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_41;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_protocol_ohttp_input_finished";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_43;
  }
}

uint64_t ___ZL32nw_protocol_ohttp_input_finishedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  v6 = *(extra + 236);
  if ((v6 & 8) == 0)
  {
    *(extra + 236) = v6 | 8;
    *(extra + 232) = 6;
    v7 = object;
    nw_protocol_error(object, *(a1 + 32));
    nw_protocol_disconnected(v7, *(a1 + 32));
  }

  return 1;
}

void nw_protocol_ohttp_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_ohttp_input_available";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
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
      v16 = "nw_protocol_ohttp_input_available";
      v7 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_protocol_ohttp_input_available";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v4)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_input_available";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_input_available";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {

    nw_protocol_ohttp_read_response(handle, 0);
    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_ohttp_input_available";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null ohttp", buf, 12);
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
    v16 = "nw_protocol_ohttp_input_available";
    v7 = "%{public}s called with null ohttp";
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
    v16 = "nw_protocol_ohttp_input_available";
    v7 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_input_available";
    v7 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_ohttp_input_available";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
LABEL_35:
    free(v4);
  }
}

BOOL nw_protocol_ohttp_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, uint64_t a4, unsigned int a5, nw_frame_array_s *a6)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v51, &type, &v65))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null protocol";
      goto LABEL_97;
    }

    if (v65 != 1)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v53 = type;
    v58 = os_log_type_enabled(v52, type);
    if (!backtrace_string)
    {
      if (!v58)
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_97;
    }

    if (!v58)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v69 = 2082;
    v70 = backtrace_string;
    v59 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_81:
    _os_log_impl(&dword_181A37000, v52, v53, v59, buf, 0x16u);
    goto LABEL_82;
  }

  handle = a1->handle;
  if (!handle)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null ohttp", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v51, &type, &v65))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null ohttp";
      goto LABEL_97;
    }

    if (v65 != 1)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v53 = type;
    v60 = os_log_type_enabled(v52, type);
    if (!backtrace_string)
    {
      if (!v60)
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_97;
    }

    if (!v60)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v69 = 2082;
    v70 = backtrace_string;
    v59 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_81;
  }

  if (!a6)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null return_array", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v51, &type, &v65))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null return_array";
      goto LABEL_97;
    }

    if (v65 != 1)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      v68 = "nw_protocol_ohttp_get_input_frames";
      v54 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_97;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v53 = type;
    v61 = os_log_type_enabled(v52, type);
    if (backtrace_string)
    {
      if (v61)
      {
        *buf = 136446466;
        v68 = "nw_protocol_ohttp_get_input_frames";
        v69 = 2082;
        v70 = backtrace_string;
        v59 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_81;
      }

LABEL_82:
      free(backtrace_string);
      goto LABEL_98;
    }

    if (!v61)
    {
      goto LABEL_98;
    }

    *buf = 136446210;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v54 = "%{public}s called with null return_array, no backtrace";
LABEL_97:
    _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0xCu);
LABEL_98:
    if (v51)
    {
      free(v51);
    }

    return 0;
  }

  context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(a1->handle, a2);
  if (!context_for_protocol)
  {
    if (handle[356])
    {
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446978;
    v68 = "nw_protocol_ohttp_get_input_frames";
    v69 = 2082;
    v70 = handle + 357;
    v71 = 2080;
    v72 = " ";
    v73 = 2048;
    v74 = a2;
    v22 = "%{public}s %{public}s%sfailed to find context for %p";
    v23 = v20;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 42;
LABEL_22:
    _os_log_impl(&dword_181A37000, v23, v24, v22, buf, v25);
    return 0;
  }

  if (*(context_for_protocol + 58) != 4)
  {
    if ((handle[356] & 1) != 0 || gLogDatapath != 1)
    {
      return 0;
    }

    v26 = context_for_protocol;
    v27 = __nwlog_obj();
    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v28 = *(v26 + 58);
    *buf = 136446978;
    v68 = "nw_ohttp_context_get_input_frames";
    v69 = 2082;
    v70 = handle + 357;
    v71 = 2080;
    v72 = " ";
    v73 = 1024;
    LODWORD(v74) = v28;
    v22 = "%{public}s %{public}s%sskipping, state %u";
    v23 = v27;
    v24 = OS_LOG_TYPE_DEBUG;
    v25 = 38;
    goto LABEL_22;
  }

  v12 = context_for_protocol[22];
  v11 = context_for_protocol[23];
  if ((*(context_for_protocol + 118) & 0x88) != 0x80 || v12 != v11)
  {
    v14 = a4;
    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 > a4;
    }

    if (v15)
    {
      v16 = v12 - v11;
      if (v12 - v11 <= a4)
      {
        v35 = context_for_protocol;
        if (v12 == v11)
        {
          v36 = 0;
        }

        else
        {
          v39 = nw_calloc_type<unsigned char>(v12 - v11);
          v36 = v39;
          if (v39)
          {
            memcpy(v39, (*(v35 + 168) + *(v35 + 184)), v16);
          }
        }

        v40 = nw_frame_create(0, v36, v16, nw_protocol_ohttp_input_frame_finalizer, v35);
        nw_frame_set_buffer_used_malloc(v40, 1);
        *(v35 + 184) += v16;
        nw_frame_set_metadata(v40, *(v35 + 80), 1, (*(v35 + 236) >> 3) & 1);
        *(v35 + 236) |= 0x80u;
        *(v40 + 16) = 0;
        v41 = *(v35 + 48);
        *(v40 + 24) = v41;
        *v41 = v40;
        *(v35 + 48) = v40 + 16;
        *(v40 + 32) = 0;
        tqh_last = a6->tqh_last;
        *(v40 + 40) = tqh_last;
        *tqh_last = v40;
        a6->tqh_last = (v40 + 32);
        if ((*(v35 + 236) & 8) != 0)
        {
          *(v35 + 232) = 5;
          if (handle[356])
          {
            return 1;
          }

          v46 = __nwlog_obj();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            return 1;
          }

          *buf = 136446722;
          v68 = "nw_ohttp_context_get_input_frames";
          v69 = 2082;
          v70 = handle + 357;
          v71 = 2080;
          v72 = " ";
          v34 = "%{public}s %{public}s%sDelivered end of response";
          v37 = v46;
          v38 = 32;
          goto LABEL_51;
        }

        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v43 = __nwlog_obj();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v45 = *(v35 + 176);
        v44 = *(v35 + 184);
        *buf = 136447234;
        v68 = "nw_ohttp_context_get_input_frames";
        v69 = 2082;
        v70 = handle + 357;
        v71 = 2080;
        v72 = " ";
        v73 = 2048;
        v74 = v44;
        v75 = 2048;
        v76 = v45;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu/%zu)";
      }

      else
      {
        v17 = context_for_protocol;
        if (a4)
        {
          v18 = nw_calloc_type<unsigned char>(a4);
          v19 = v18;
          if (v18)
          {
            memcpy(v18, (*(v17 + 168) + *(v17 + 184)), a4);
          }
        }

        else
        {
          v19 = 0;
        }

        v47 = nw_frame_create(0, v19, a4, nw_protocol_ohttp_input_frame_finalizer, v17);
        nw_frame_set_buffer_used_malloc(v47, 1);
        *(v17 + 184) += v14;
        nw_frame_set_metadata(v47, *(v17 + 80), 1, 0);
        *(v17 + 236) |= 0x80u;
        *(v47 + 16) = 0;
        v48 = *(v17 + 48);
        *(v47 + 24) = v48;
        *v48 = v47;
        *(v17 + 48) = v47 + 16;
        *(v47 + 32) = 0;
        v49 = a6->tqh_last;
        *(v47 + 40) = v49;
        *v49 = v47;
        a6->tqh_last = (v47 + 32);
        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v43 = __nwlog_obj();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v64 = *(v17 + 176);
        v63 = *(v17 + 184);
        *buf = 136447234;
        v68 = "nw_ohttp_context_get_input_frames";
        v69 = 2082;
        v70 = handle + 357;
        v71 = 2080;
        v72 = " ";
        v73 = 2048;
        v74 = v63;
        v75 = 2048;
        v76 = v64;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu/%zu)";
      }

      v37 = v43;
      v38 = 52;
    }

    else
    {
      v29 = context_for_protocol;
      v30 = nw_frame_create(0, context_for_protocol[21], v12, nw_protocol_ohttp_input_frame_finalizer, context_for_protocol);
      nw_frame_set_buffer_used_malloc(v30, 1);
      v29[21] = 0;
      v29[22] = 0;
      v29[23] = 0;
      nw_frame_set_metadata(v30, v29[10], 1, (*(v29 + 118) >> 3) & 1);
      *(v29 + 118) |= 0x80u;
      *(v30 + 16) = 0;
      v31 = v29[6];
      *(v30 + 24) = v31;
      *v31 = v30;
      v29[6] = v30 + 16;
      *(v30 + 32) = 0;
      v32 = a6->tqh_last;
      *(v30 + 40) = v32;
      *v32 = v30;
      a6->tqh_last = (v30 + 32);
      if ((*(v29 + 236) & 8) != 0)
      {
        *(v29 + 58) = 5;
        if (handle[356])
        {
          return 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        *buf = 136446978;
        v68 = "nw_ohttp_context_get_input_frames";
        v69 = 2082;
        v70 = handle + 357;
        v71 = 2080;
        v72 = " ";
        v73 = 2048;
        v74 = v12;
        v34 = "%{public}s %{public}s%sDelivered complete response (%zu)";
      }

      else
      {
        if (handle[356])
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v33 = __nwlog_obj();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        *buf = 136446978;
        v68 = "nw_ohttp_context_get_input_frames";
        v69 = 2082;
        v70 = handle + 357;
        v71 = 2080;
        v72 = " ";
        v73 = 2048;
        v74 = v12;
        v34 = "%{public}s %{public}s%sDelivered partial response (%zu)";
      }

      v37 = v33;
      v38 = 42;
    }

LABEL_51:
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, v34, buf, v38);
    return 1;
  }

  if ((handle[356] & 1) != 0 || gLogDatapath != 1)
  {
    return 0;
  }

  v62 = __nwlog_obj();
  result = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446722;
    v68 = "nw_ohttp_context_get_input_frames";
    v69 = 2082;
    v70 = handle + 357;
    v71 = 2080;
    v72 = " ";
    v22 = "%{public}s %{public}s%sskipping, no new bytes to read";
    v23 = v62;
    v24 = OS_LOG_TYPE_DEBUG;
    v25 = 32;
    goto LABEL_22;
  }

  return result;
}

void nw_protocol_ohttp_input_frame_finalizer(nw_frame *a1, BOOL a2, char *a3)
{
  v4 = a3 + 48;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v4 = (v5 + 24);
  }

  *v4 = v6;
  *v6 = v5;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a1);
}

uint64_t nw_protocol_ohttp_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v20, type, &v31))
    {
      goto LABEL_56;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v31 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type[0];
        if (!os_log_type_enabled(v21, type[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        v23 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type[0];
      v26 = os_log_type_enabled(v21, type[0]);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        v23 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_55;
      }

      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_43:
        _os_log_impl(&dword_181A37000, v21, v22, v27, buf, 0x16u);
      }

LABEL_44:
      free(backtrace_string);
      goto LABEL_56;
    }

    v21 = __nwlog_obj();
    v22 = type[0];
    if (!os_log_type_enabled(v21, type[0]))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v23 = "%{public}s called with null protocol";
LABEL_55:
    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
LABEL_56:
    if (v20)
    {
      free(v20);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null ohttp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v20, type, &v31))
    {
      goto LABEL_56;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (!os_log_type_enabled(v21, type[0]))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
      v23 = "%{public}s called with null ohttp";
      goto LABEL_55;
    }

    if (v31 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (!os_log_type_enabled(v21, type[0]))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
      v23 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type[0];
    v28 = os_log_type_enabled(v21, type[0]);
    if (backtrace_string)
    {
      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (!v28)
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_remove_input_handler";
    v23 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_55;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler == a2)
  {
    nw_protocol_set_input_handler(a1, 0);
    v9 = handle + 42;
    if (gLogDatapath == 1)
    {
      v29 = __nwlog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v10 = *v9;
    if (*v9)
    {
      *(v10 + 40) = type;
      v11 = handle[43];
      *type = v10;
      v33 = v11;
      handle[42] = 0;
      handle[43] = v9;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v35 = &__block_descriptor_tmp_21_49595;
      v36 = 0;
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
          v15 = &v33;
        }

        *v15 = v14;
        *v14 = v13;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    nw_protocol_remove_input_handler(a1->output_handler->flow_id, a1);
    output_handler = a1->output_handler;
    if (output_handler)
    {
      nw_protocol_remove_input_handler(output_handler, a1);
      nw_protocol_set_output_handler(a1, 0);
    }

    if (!a3)
    {
      return 1;
    }

    v17 = handle[38];
    if (v17 && v17[12]._os_unfair_lock_opaque)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = ___ZL38nw_protocol_ohttp_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v30[3] = &__block_descriptor_tmp_27_29925;
      v30[4] = handle;
      nw_hash_table_apply(v17, v30);
      return 1;
    }

LABEL_25:
    nw_protocol_ohttp_destroy(handle);
    return 1;
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    a2->output_handler_context = 0;
    nw_protocol_set_output_handler(a2, 0);
    nw_protocol_ohttp_context_destroy_node(handle, output_handler_context);
    if (!a3)
    {
      return 1;
    }

    if (a1->default_input_handler)
    {
      return 1;
    }

    v8 = handle[38];
    if (v8)
    {
      if (*(v8 + 48))
      {
        return 1;
      }
    }

    goto LABEL_25;
  }

  return 0;
}

void nw_protocol_ohttp_destroy(void *a1)
{
  v2 = a1[39];
  if (v2)
  {
    os_release(v2);
    a1[39] = 0;
  }

  v3 = a1[40];
  if (v3)
  {
    os_release(v3);
    a1[40] = 0;
  }

  v4 = a1[38];
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZL25nw_protocol_ohttp_destroyP17nw_protocol_ohttp_block_invoke;
    v6[3] = &__block_descriptor_tmp_28_29954;
    v6[4] = a1;
    nw_hash_table_apply(v4, v6);
    v5 = a1[38];
    if (v5)
    {
      _nw_hash_table_release(v5);
      a1[38] = 0;
    }
  }

  nw_protocol_ohttp_context_destroy(a1 + 8);
  free(a1);
}

uint64_t ___ZL38nw_protocol_ohttp_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_context_destroy_node(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_destroy_node";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null ohttp", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_destroy_node";
      v9 = "%{public}s called with null ohttp";
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
          v18 = "nw_protocol_ohttp_context_destroy_node";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          return;
        }

LABEL_37:
        free(v6);
        return;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_destroy_node";
      v9 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_destroy_node";
      v9 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_36;
  }

  if (a2)
  {
    nw_protocol_ohttp_context_destroy((a2 + 32));
    if ((nw_hash_table_remove_node(*(a1 + 304), a2) & 1) == 0 && (*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "nw_protocol_ohttp_context_destroy_node";
        v19 = 2082;
        v20 = (a1 + 357);
        v21 = 2080;
        v22 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snw_hash_table_remove_node failed", buf, 0x20u);
      }
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_ohttp_context_destroy_node";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null node", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_destroy_node";
    v9 = "%{public}s called with null node";
    goto LABEL_35;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_destroy_node";
    v9 = "%{public}s called with null node, backtrace limit exceeded";
    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_destroy_node";
    v9 = "%{public}s called with null node, no backtrace";
    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_ohttp_context_destroy_node";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }
}

void nw_protocol_ohttp_context_destroy(void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[12];
    if (v2)
    {
      xpc_release(v2);
      a1[12] = 0;
    }

    v3 = a1[17];
    if (v3)
    {
      free(v3);
      a1[17] = 0;
    }

    v4 = a1[21];
    if (v4)
    {
      free(v4);
      a1[21] = 0;
    }

    v5 = a1[13];
    if (v5)
    {
      free(v5);
      a1[13] = 0;
    }

    v6 = a1[15];
    if (v6)
    {
      free(v6);
      a1[15] = 0;
    }

    v7 = a1[24];
    if (v7)
    {
      free(v7);
      a1[24] = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      os_release(v8);
      a1[9] = 0;
    }

    v9 = a1[10];
    if (v9)
    {
      os_release(v9);
      a1[10] = 0;
    }

    v10 = a1[11];
    if (!v10)
    {
LABEL_23:
      v13 = a1[27];
      if (v13)
      {
        dispatch_release(v13);
        a1[27] = 0;
      }

      v14 = a1[28];
      if (v14)
      {
        free(v14);
        a1[28] = 0;
      }

      v15 = a1 + 1;
      if (gLogDatapath == 1)
      {
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
        }
      }

      v16 = *v15;
      if (!*v15)
      {
        goto LABEL_35;
      }

      *(v16 + 24) = type;
      v17 = a1[2];
      *type = v16;
      v69 = v17;
      a1[1] = 0;
      a1[2] = v15;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v71 = &__block_descriptor_tmp_21_49595;
      v72 = 0;
      do
      {
        v18 = *type;
        if (!*type)
        {
          break;
        }

        v19 = *(*type + 16);
        v20 = *(*type + 24);
        v21 = (v19 + 24);
        if (!v19)
        {
          v21 = &v69;
        }

        *v21 = v20;
        *v20 = v19;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
      if (!*v15)
      {
LABEL_35:
        v22 = a1 + 5;
        if (gLogDatapath == 1)
        {
          v43 = __nwlog_obj();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          }
        }

        v23 = *v22;
        if (!*v22)
        {
          goto LABEL_43;
        }

        *(v23 + 24) = type;
        v24 = a1[6];
        *type = v23;
        v69 = v24;
        a1[5] = 0;
        a1[6] = v22;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v71 = &__block_descriptor_tmp_21_49595;
        v72 = 0;
        do
        {
          v25 = *type;
          if (!*type)
          {
            break;
          }

          v26 = *(*type + 16);
          v27 = *(*type + 24);
          v28 = (v26 + 24);
          if (!v26)
          {
            v28 = &v69;
          }

          *v28 = v27;
          *v27 = v26;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
        if (!*v22)
        {
          goto LABEL_43;
        }

        v44 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        LODWORD(v62) = 12;
        v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s frame array is not empty after finalize", buf, v62);
        type[0] = OS_LOG_TYPE_ERROR;
        v67 = 0;
        if (__nwlog_fault(v45, type, &v67))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v46 = __nwlog_obj();
            v47 = type[0];
            if (!os_log_type_enabled(v46, type[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v48 = "%{public}s frame array is not empty after finalize";
            goto LABEL_107;
          }

          if (v67 != 1)
          {
            v46 = __nwlog_obj();
            v47 = type[0];
            if (!os_log_type_enabled(v46, type[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v48 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
            goto LABEL_107;
          }

          backtrace_string = __nw_create_backtrace_string();
          v46 = __nwlog_obj();
          v47 = type[0];
          v59 = os_log_type_enabled(v46, type[0]);
          if (backtrace_string)
          {
            if (v59)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_finalize_master_frame_array";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_108;
          }

          if (v59)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            v48 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_107:
            _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
          }
        }

LABEL_108:
        if (v45)
        {
          free(v45);
        }

LABEL_43:
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 0x40000000;
        v64 = ___ZL33nw_protocol_ohttp_context_destroyP16nw_ohttp_context_block_invoke;
        v65 = &__block_descriptor_tmp_29_29948;
        v66 = a1;
        v29 = a1[3];
        do
        {
          if (!v29)
          {
            break;
          }

          v30 = *(v29 + 16);
          v31 = v64(v63);
          v29 = v30;
        }

        while ((v31 & 1) != 0);
        return;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      LODWORD(v62) = 12;
      v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s frame array is not empty after finalize", buf, v62);
      type[0] = OS_LOG_TYPE_ERROR;
      v67 = 0;
      if (__nwlog_fault(v39, type, &v67))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v41 = type[0];
          if (!os_log_type_enabled(v40, type[0]))
          {
            goto LABEL_103;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v42 = "%{public}s frame array is not empty after finalize";
          goto LABEL_102;
        }

        if (v67 != 1)
        {
          v40 = __nwlog_obj();
          v41 = type[0];
          if (!os_log_type_enabled(v40, type[0]))
          {
            goto LABEL_103;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v42 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
          goto LABEL_102;
        }

        v56 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type[0];
        v57 = os_log_type_enabled(v40, type[0]);
        if (v56)
        {
          if (v57)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = v56;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v56);
          goto LABEL_103;
        }

        if (v57)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_master_frame_array";
          v42 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_102:
          _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
        }
      }

LABEL_103:
      if (v39)
      {
        free(v39);
      }

      goto LABEL_35;
    }

    v11 = v10;
    if (nw_protocol_metadata_is_oblivious_http(v11))
    {
      nw_protocol_metadata_access_handle(v11, &__block_literal_global_66);
LABEL_21:

      v12 = a1[11];
      if (v12)
      {
        os_release(v12);
        a1[11] = 0;
      }

      goto LABEL_23;
    }

    v49 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_clear_context_handle";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v50, type, &v67))
    {
LABEL_114:
      if (v50)
      {
        free(v50);
      }

      goto LABEL_21;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v51, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v53 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)";
LABEL_112:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else
    {
      if (v67 == 1)
      {
        v60 = __nw_create_backtrace_string();
        v51 = __nwlog_obj();
        v52 = type[0];
        v61 = os_log_type_enabled(v51, type[0]);
        if (v60)
        {
          if (v61)
          {
            *buf = 136446466;
            *&buf[4] = "nw_oblivious_http_clear_context_handle";
            *&buf[12] = 2082;
            *&buf[14] = v60;
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v60);
          goto LABEL_114;
        }

        if (!v61)
        {
          goto LABEL_113;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v53 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), no backtrace";
        goto LABEL_112;
      }

      v51 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v51, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_clear_context_handle";
        v53 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), backtrace limit exceeded";
        goto LABEL_112;
      }
    }

LABEL_113:

    goto LABEL_114;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ohttp_context_destroy";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null ohttp_context", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (__nwlog_fault(v33, type, &v67))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v36 = "%{public}s called with null ohttp_context";
      goto LABEL_97;
    }

    if (v67 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_98;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v36 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
      goto LABEL_97;
    }

    v54 = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type[0];
    v55 = os_log_type_enabled(v34, type[0]);
    if (v54)
    {
      if (v55)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_context_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v54;
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v54);
      goto LABEL_98;
    }

    if (v55)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_context_destroy";
      v36 = "%{public}s called with null ohttp_context, no backtrace";
LABEL_97:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    }
  }

LABEL_98:
  if (v33)
  {
    free(v33);
  }
}

uint64_t ___ZL33nw_protocol_ohttp_context_destroyP16nw_ohttp_context_block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 32) + 32);
  v4 = a2[2];
  v5 = a2[3];
  if (v4)
  {
    v3 = (v4 + 24);
  }

  *v3 = v5;
  *v5 = v4;
  a2[2] = 0;
  a2[3] = 0;
  buffer = nw_frame_get_buffer(a2, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a2);
  return 1;
}

uint64_t nw_protocol_ohttp_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, type, &v74))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null protocol";
LABEL_173:
      _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
      goto LABEL_174;
    }

    if (v74 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_173;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v52 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (!v52)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_173;
    }

    if (!v52)
    {
      goto LABEL_87;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v53 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_86:
    _os_log_impl(&dword_181A37000, v47, v48, v53, buf, 0x16u);
    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null ohttp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, type, &v74))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null ohttp";
      goto LABEL_173;
    }

    if (v74 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_173;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v54 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (!v54)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_173;
    }

    if (!v54)
    {
      goto LABEL_87;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v53 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
    goto LABEL_86;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    if (default_input_handler == a2 || (~handle[356] & 6) != 0)
    {
      return 0;
    }

    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v7 = parameters;
      v8 = _nw_parameters_copy_protocol_options_with_level();

      if (v8)
      {
        if ((nw_oblivious_http_get_use_context_ids(v8) & 1) == 0)
        {
          if (handle[356])
          {
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 357;
          *&buf[22] = 2080;
          v80 = " ";
          v13 = "%{public}s %{public}s%sOptions do not enable using context IDs";
          v14 = v32;
          v15 = 32;
          goto LABEL_44;
        }

        context_id = nw_oblivious_http_get_context_id(v8);
        if (*(handle + 8) == context_id)
        {
LABEL_12:
          if (handle[356])
          {
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 357;
          *&buf[22] = 2080;
          v80 = " ";
          LOWORD(v81) = 2048;
          *(&v81 + 2) = context_id;
          v13 = "%{public}s %{public}s%sContext already added for ID %llu";
          v14 = v12;
          v15 = 42;
LABEL_44:
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_45:
          os_release(v8);
          return 0;
        }

        v10 = *(handle + 38);
        if (!v10)
        {
          goto LABEL_49;
        }

        *type = 0;
        v76 = type;
        v77 = 0x2000000000;
        v78 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL44nw_protocol_ohttp_get_context_for_context_idP17nw_protocol_ohttpy_block_invoke;
        v80 = &unk_1E6A30570;
        *&v81 = type;
        *(&v81 + 1) = context_id;
        nw_hash_table_apply(v10, buf);
        v11 = *(v76 + 3);
        _Block_object_dispose(type, 8);
        if (v11)
        {
          goto LABEL_12;
        }

        internal = *(handle + 38);
        if (!internal)
        {
LABEL_49:
          internal = nw_hash_table_create_internal(5u, 240, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
          if (internal)
          {
            *(internal + 56) &= ~2u;
          }

          *(handle + 38) = internal;
        }

        type[0] = OS_LOG_TYPE_DEFAULT;
        v34 = nw_hash_table_add_object(internal, a2, type);
        v35 = type[0];
        if ((type[0] & 1) == 0)
        {
          if ((handle[356] & 1) == 0)
          {
            v44 = __nwlog_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 136447234;
              *&buf[4] = "nw_protocol_ohttp_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 357;
              *&buf[22] = 2080;
              v80 = " ";
              LOWORD(v81) = 1042;
              *(&v81 + 2) = 16;
              WORD3(v81) = 2098;
              *(&v81 + 1) = a2;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sInput handler already registered for %{public,uuid_t}.16P", buf, 0x30u);
            }
          }

          os_release(v8);
          return v35;
        }

        v36 = v34;
        extra = nw_hash_node_get_extra(v34);
        *(extra + 232) = 0;
        *(extra + 96) = nw_oblivious_http_copy_config(v8);
        *(extra + 236) = *(extra + 236) & 0xFFFE | nw_oblivious_http_get_config_is_standalone_aead(v8);
        is_receive_aead = nw_oblivious_http_get_config_is_receive_aead(v8);
        if (is_receive_aead)
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        *(extra + 236) = *(extra + 236) & 0xFFFD | v39;
        if (is_receive_aead)
        {
          if (!*(extra + 96) && !*(extra + 88))
          {
            v40 = _nw_parameters_copy_context();
            *(extra + 88) = nw_oblivious_http_create_metadata_for_context(handle, extra, v40);
            if (v40)
            {
              os_release(v40);
            }
          }
        }

        *extra = context_id;
        media_type = nw_oblivious_http_get_media_type(v8);
        if (!media_type)
        {
LABEL_64:
          *(extra + 8) = 0;
          v43 = (extra + 8);
          v43[2] = 0;
          v43[1] = v43;
          v43[3] = v43 + 2;
          v43[4] = 0;
          v43[5] = v43 + 4;
          os_release(v8);
          a2->output_handler_context = v36;
          nw_protocol_set_output_handler(a2, a1);
          return v35;
        }

        v42 = strdup(media_type);
        if (v42)
        {
LABEL_63:
          *(extra + 224) = v42;
          goto LABEL_64;
        }

        v70 = __nwlog_obj();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "strict_strdup";
        v72 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s strdup() failed", buf, 12);
        result = __nwlog_should_abort(v72);
        if (!result)
        {
          free(v72);
          v42 = 0;
          goto LABEL_63;
        }

LABEL_181:
        __break(1u);
        return result;
      }

      v56 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null ohttp_options", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v74 = 0;
      if (!__nwlog_fault(v46, type, &v74))
      {
LABEL_174:
        if (v46)
        {
          free(v46);
        }

        return 0;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = type[0];
        if (!os_log_type_enabled(v47, type[0]))
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v49 = "%{public}s called with null ohttp_options";
        goto LABEL_173;
      }

      if (v74 != 1)
      {
        v47 = __nwlog_obj();
        v48 = type[0];
        if (!os_log_type_enabled(v47, type[0]))
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v49 = "%{public}s called with null ohttp_options, backtrace limit exceeded";
        goto LABEL_173;
      }

      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type[0];
      v65 = os_log_type_enabled(v47, type[0]);
      if (!backtrace_string)
      {
        if (!v65)
        {
          goto LABEL_174;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v49 = "%{public}s called with null ohttp_options, no backtrace";
        goto LABEL_173;
      }

      if (v65)
      {
        goto LABEL_128;
      }

      goto LABEL_87;
    }

    v55 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null parameters", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, type, &v74))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters";
      goto LABEL_173;
    }

    if (v74 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_173;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v64 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (!v64)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_173;
    }

    if (!v64)
    {
      goto LABEL_87;
    }

    goto LABEL_124;
  }

  if (nw_protocol_common_add_input_handler(a1, a2))
  {
    *(handle + 88) = 0;
    *(handle + 74) = 0;
    v16 = nw_protocol_get_parameters(a2);
    if (v16)
    {
      v17 = v16;
      handle[356] = handle[356] & 0xFE | _nw_parameters_get_logging_disabled(v16);
      v18 = v17;
      v19 = _nw_parameters_copy_protocol_options_with_level();

      if (v19)
      {
        v20 = v19;
        _nw_protocol_options_get_log_id_str(v20, handle + 357);

        if (nw_oblivious_http_get_use_chunks(v20))
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        handle[356] = handle[356] & 0xFD | v21;
        if (nw_oblivious_http_get_use_context_ids(v20))
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        handle[356] = handle[356] & 0xFB | v22;
        *(handle + 20) = nw_oblivious_http_copy_config(v20);
        *(handle + 8) = nw_oblivious_http_get_context_id(v20);
        *(handle + 150) = *(handle + 150) & 0xFFFE | nw_oblivious_http_get_config_is_standalone_aead(v20);
        if (nw_oblivious_http_get_config_is_receive_aead(v20))
        {
          v23 = 2;
        }

        else
        {
          v23 = 0;
        }

        *(handle + 150) = *(handle + 150) & 0xFFFD | v23;
        v24 = nw_oblivious_http_get_media_type(v20);
        if (v24)
        {
          v25 = strdup(v24);
          if (!v25)
          {
            v61 = __nwlog_obj();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "strict_strdup";
            v63 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s strdup() failed", buf, 12);
            result = __nwlog_should_abort(v63);
            if (result)
            {
              goto LABEL_181;
            }

            free(v63);
            v25 = 0;
          }

          *(handle + 36) = v25;
        }

        request_path = nw_oblivious_http_get_request_path(v20);
        v27 = _nw_http_request_create("POST", 0, 0, request_path);
        v28 = v27;
        if ((handle[356] & 2) != 0)
        {
          v29 = "message/ohttp-chunked-req";
        }

        else
        {
          v29 = "message/ohttp-req";
        }

        nw_http_fields_append(v27, "Content-Type", v29);
        *(handle + 39) = nw_http_create_metadata_for_request(v28);
        if (v28)
        {
          os_release(v28);
        }

        os_release(v20);
        if (*(handle + 20))
        {
          if (*(handle + 39))
          {
            return 1;
          }

          v60 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          LODWORD(v73) = 12;
          v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null ohttp->oblivious_request_metadata", buf, v73);
          type[0] = OS_LOG_TYPE_ERROR;
          v74 = 0;
          if (!__nwlog_fault(v46, type, &v74))
          {
            goto LABEL_174;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v47 = __nwlog_obj();
            v48 = type[0];
            if (!os_log_type_enabled(v47, type[0]))
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->oblivious_request_metadata";
            goto LABEL_173;
          }

          if (v74 != 1)
          {
            v47 = __nwlog_obj();
            v48 = type[0];
            if (!os_log_type_enabled(v47, type[0]))
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->oblivious_request_metadata, backtrace limit exceeded";
            goto LABEL_173;
          }

          backtrace_string = __nw_create_backtrace_string();
          v47 = __nwlog_obj();
          v48 = type[0];
          v69 = os_log_type_enabled(v47, type[0]);
          if (!backtrace_string)
          {
            if (!v69)
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->oblivious_request_metadata, no backtrace";
            goto LABEL_173;
          }

          if (v69)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v53 = "%{public}s called with null ohttp->oblivious_request_metadata, dumping backtrace:%{public}s";
            goto LABEL_86;
          }
        }

        else
        {
          v59 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          LODWORD(v73) = 12;
          v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null ohttp->default_context.config", buf, v73);
          type[0] = OS_LOG_TYPE_ERROR;
          v74 = 0;
          if (!__nwlog_fault(v46, type, &v74))
          {
            goto LABEL_174;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v47 = __nwlog_obj();
            v48 = type[0];
            if (!os_log_type_enabled(v47, type[0]))
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->default_context.config";
            goto LABEL_173;
          }

          if (v74 != 1)
          {
            v47 = __nwlog_obj();
            v48 = type[0];
            if (!os_log_type_enabled(v47, type[0]))
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->default_context.config, backtrace limit exceeded";
            goto LABEL_173;
          }

          backtrace_string = __nw_create_backtrace_string();
          v47 = __nwlog_obj();
          v48 = type[0];
          v68 = os_log_type_enabled(v47, type[0]);
          if (!backtrace_string)
          {
            if (!v68)
            {
              goto LABEL_174;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            v49 = "%{public}s called with null ohttp->default_context.config, no backtrace";
            goto LABEL_173;
          }

          if (v68)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ohttp_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v53 = "%{public}s called with null ohttp->default_context.config, dumping backtrace:%{public}s";
            goto LABEL_86;
          }
        }
      }

      else
      {
        v58 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_add_input_handler";
        v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null ohttp_options", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v74 = 0;
        if (!__nwlog_fault(v46, type, &v74))
        {
          goto LABEL_174;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v47 = __nwlog_obj();
          v48 = type[0];
          if (!os_log_type_enabled(v47, type[0]))
          {
            goto LABEL_174;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v49 = "%{public}s called with null ohttp_options";
          goto LABEL_173;
        }

        if (v74 != 1)
        {
          v47 = __nwlog_obj();
          v48 = type[0];
          if (!os_log_type_enabled(v47, type[0]))
          {
            goto LABEL_174;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v49 = "%{public}s called with null ohttp_options, backtrace limit exceeded";
          goto LABEL_173;
        }

        backtrace_string = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = type[0];
        v67 = os_log_type_enabled(v47, type[0]);
        if (!backtrace_string)
        {
          if (!v67)
          {
            goto LABEL_174;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          v49 = "%{public}s called with null ohttp_options, no backtrace";
          goto LABEL_173;
        }

        if (v67)
        {
LABEL_128:
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ohttp_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v53 = "%{public}s called with null ohttp_options, dumping backtrace:%{public}s";
          goto LABEL_86;
        }
      }

LABEL_87:
      free(backtrace_string);
      goto LABEL_174;
    }

    v57 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null parameters", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, type, &v74))
    {
      goto LABEL_174;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters";
      goto LABEL_173;
    }

    if (v74 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_173;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v66 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (!v66)
      {
        goto LABEL_174;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_add_input_handler";
      v49 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_173;
    }

    if (!v66)
    {
      goto LABEL_87;
    }

LABEL_124:
    *buf = 136446466;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v53 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
    goto LABEL_86;
  }

  if ((handle[356] & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    *&buf[4] = "nw_protocol_ohttp_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 357;
    *&buf[22] = 2080;
    v80 = " ";
    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sfailed to add input handler", buf, 0x20u);
  }

  return 0;
}

void sub_18254E578(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_masque_connection_pair;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void nw_masque_connection_pair_cancel_waiting_timer(NWConcrete_nw_masque_connection_pair *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (*(v1 + 36))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 2);
        v5 = *(v2 + 6);
        *buf = 136446722;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        v19 = 2114;
        v20 = v4;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}@ cancelling wait timer for %@", buf, 0x20u);
      }

      dispatch_source_cancel(*(v2 + 36));
      v6 = *(v2 + 36);
      *(v2 + 36) = 0;
    }

    goto LABEL_6;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_connection_pair_cancel_waiting_timer";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null pair", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_masque_connection_pair_cancel_waiting_timer";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

LABEL_6:
}

void sub_18254EA4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_masque_listener_pair;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void __nw_masque_connection_start_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke;
  v11[3] = &unk_1E6A3D868;
  v3 = v1;
  v12 = v3;
  nw_connection_set_read_close_handler(v2, v11);
  v4 = v1[6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke_199;
  v9[3] = &unk_1E6A3D820;
  v5 = v3;
  v10 = v5;
  nw_connection_set_state_changed_handler(v4, v9);
  nw_connection_set_queue(v1[6], v5[4]);
  v6 = v5;
  v7 = v1[6];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke;
  v14 = &unk_1E6A39638;
  v15 = v6;
  nw_connection_receive_internal(v7, 0, 0, 0, buf);

  nw_connection_start(v1[6]);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = "nw_masque_connection_start_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}@ started connection", buf, 0x16u);
  }
}

void ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[112];
  if (v2 == 200)
  {
    if (gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v9 = 136446466;
        v10 = "nw_masque_connection_start_on_queue_block_invoke";
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring in connection read close event", &v9, 0x16u);
      }
    }
  }

  else if (v2 != 255)
  {
    if (gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = 136446466;
        v10 = "nw_masque_connection_start_on_queue_block_invoke";
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ in connection read close before proxy connection ready, cancelling", &v9, 0x16u);
      }

      v1 = *(a1 + 32);
    }

    nw_masque_connection_cancel_on_queue(v1, 0);
  }
}

void ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke_199(uint64_t a1, unsigned int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*(*(a1 + 32) + 112) != 255)
  {
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
      v12 = 136446722;
      v13 = "nw_masque_connection_start_on_queue_block_invoke";
      v14 = 2114;
      v15 = v8;
      v16 = 2082;
      v17 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection event %{public}s", &v12, 0x20u);
    }

    if (a2 == 3)
    {
      v9 = *(a1 + 32);
      if (*(v9 + 112) == 1)
      {
        *(v9 + 112) = 2;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v12 = 136446466;
          v13 = "nw_masque_connection_start_on_queue_block_invoke";
          v14 = 2114;
          v15 = v11;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}@ connection masque connected", &v12, 0x16u);
        }
      }
    }

    else if (a2 == 4)
    {
      nw_masque_connection_cancel_on_queue(*(a1 + 32), v5);
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v288 = *MEMORY[0x1E69E9840];
  v198 = a2;
  v7 = a3;
  v8 = a5;
  context = v7;
  if (!v7 || v8)
  {
    goto LABEL_36;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v9 = nw_protocol_copy_http_definition_http_definition;
  v10 = nw_content_context_copy_protocol_metadata(v7, v9);

  v195 = v10;
  if (!v10)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 32);
      v41 = *(v40 + 48);
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v40;
      *&applier[22] = 2112;
      *v284 = v41;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Received non-HTTP message, cancelling %@", applier, 0x20u);
    }

    nw_masque_connection_cancel_on_queue(*(a1 + 32), 0);
    v8 = 0;
    goto LABEL_36;
  }

  v11 = nw_http_metadata_copy_request(v10);
  v194 = v11;
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = *(a1 + 32);
      v44 = *(v43 + 48);
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v43;
      *&applier[22] = 2112;
      *v284 = v44;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Received non-request HTTP message, cancelling %@", applier, 0x20u);
    }

    nw_masque_connection_cancel_on_queue(*(a1 + 32), 0);
    goto LABEL_35;
  }

  v275[0] = MEMORY[0x1E69E9820];
  v275[1] = 3221225472;
  v275[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_201;
  v275[3] = &unk_1E6A33B10;
  v276 = *(a1 + 32);
  v12 = v11;
  v13 = v275;
  _nw_http_request_access_method(v12, v13);

  v269 = 0;
  v270 = &v269;
  v271 = 0x3032000000;
  v272 = __Block_byref_object_copy__30254;
  v273 = __Block_byref_object_dispose__30255;
  v274 = 0;
  v263 = 0;
  v264 = &v263;
  v265 = 0x3032000000;
  v266 = __Block_byref_object_copy__30254;
  v267 = __Block_byref_object_dispose__30255;
  v268 = 0;
  v257 = 0;
  v258 = &v257;
  v259 = 0x3032000000;
  v260 = __Block_byref_object_copy__30254;
  v261 = __Block_byref_object_dispose__30255;
  v262 = 0;
  v251 = 0;
  v252 = &v251;
  v253 = 0x3032000000;
  v254 = __Block_byref_object_copy__30254;
  v255 = __Block_byref_object_dispose__30255;
  v256 = 0;
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_203;
  v250[3] = &unk_1E6A307F8;
  v250[4] = &v257;
  v250[5] = &v269;
  v14 = v12;
  v15 = v250;
  _nw_http_fields_access_value_by_name(v14, "Client-Connection-Id", v15);

  v249[0] = MEMORY[0x1E69E9820];
  v249[1] = 3221225472;
  v249[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2;
  v249[3] = &unk_1E6A307F8;
  v249[4] = &v251;
  v249[5] = &v263;
  v16 = v14;
  v17 = v249;
  _nw_http_fields_access_value_by_name(v16, "Server-Connection-Id", v17);

  v243 = 0;
  v244 = &v243;
  v245 = 0x3032000000;
  v246 = __Block_byref_object_copy__30254;
  v247 = __Block_byref_object_dispose__30255;
  v248 = 0;
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3;
  v242[3] = &unk_1E6A3AA78;
  v242[4] = &v243;
  v18 = v16;
  v19 = v242;
  _nw_http_request_access_authority(v18, v19);

  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  v234 = 0;
  v235 = &v234;
  v236 = 0x2020000000;
  v237 = 0;
  v233[0] = MEMORY[0x1E69E9820];
  v233[1] = 3221225472;
  v233[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_4;
  v233[3] = &unk_1E6A307F8;
  v233[4] = &v238;
  v233[5] = &v234;
  v20 = v18;
  v21 = v233;
  _nw_http_request_access_extended_connect_protocol(v20, v21);

  v282 = 0;
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_5;
  v232[3] = &__block_descriptor_40_e9_v16__0r_8l;
  v232[4] = &v282;
  v22 = v20;
  v23 = v232;
  _nw_http_fields_access_value_by_name(v22, "Datagram-Flow-Id", v23);

  v226 = 0;
  v227 = &v226;
  v228 = 0x3032000000;
  v229 = __Block_byref_object_copy__30254;
  v230 = __Block_byref_object_dispose__30255;
  v231 = 0;
  v225[0] = MEMORY[0x1E69E9820];
  v225[1] = 3221225472;
  v225[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_6;
  v225[3] = &unk_1E6A3AA78;
  v225[4] = &v226;
  v24 = v22;
  v25 = v225;
  _nw_http_request_access_path(v24, v25);

  v26 = *(a1 + 32);
  if (*(v26 + 97) == 1)
  {
    if (gLogDatapath)
    {
      v159 = __nwlog_obj();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        v160 = *(a1 + 32);
        *applier = 136446466;
        *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_7";
        *&applier[12] = 2114;
        *&applier[14] = v160;
        _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Reverse proxying, responding 200 OK", applier, 0x16u);
      }

      v26 = *(a1 + 32);
    }

    v27 = nw_masque_connection_pair_create(v26);
    v28 = v27;
    v29 = v282;
    BYTE2(v27[44]._os_unfair_lock_opaque) = v282;
    if (v29)
    {
      v30 = BYTE1(v282);
      HIBYTE(v27[44]._os_unfair_lock_opaque) = BYTE1(v282);
      if (v30)
      {
        v31 = BYTE2(v282);
        LOBYTE(v27[45]._os_unfair_lock_opaque) = BYTE2(v282);
        if (v31)
        {
          v32 = BYTE3(v282);
          BYTE1(v27[45]._os_unfair_lock_opaque) = BYTE3(v282);
          if (v32)
          {
            v33 = BYTE4(v282);
            BYTE2(v27[45]._os_unfair_lock_opaque) = BYTE4(v282);
            if (v33)
            {
              v34 = BYTE5(v282);
              HIBYTE(v27[45]._os_unfair_lock_opaque) = BYTE5(v282);
              if (v34)
              {
                v35 = BYTE6(v282);
                LOBYTE(v27[46]._os_unfair_lock_opaque) = BYTE6(v282);
                if (v35)
                {
                  BYTE1(v27[46]._os_unfair_lock_opaque) = 0;
                }
              }
            }
          }
        }
      }
    }

    v36 = v270[5];
    if (v36)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v287 = 0;
      v277 = 0;
      v278 = &v277;
      v279 = 0x2000000000;
      v280 = (v28 + 74);
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      *v284 = &unk_1E6A34348;
      *&v284[16] = &v277;
      v285 = 20;
      *&v284[8] = buf;
      dispatch_data_apply(v36, applier);
      v37 = *(*&buf[8] + 24);
      _Block_object_dispose(&v277, 8);
      _Block_object_dispose(buf, 8);
      LOWORD(v28[18]._os_unfair_lock_opaque) = v37;
      v38 = v258[5];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v287 = 0;
      v277 = 0;
      v278 = &v277;
      v279 = 0x2000000000;
      v280 = v28 + 29;
      if (v38)
      {
        *applier = MEMORY[0x1E69E9820];
        *&applier[8] = 0x40000000;
        *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
        *v284 = &unk_1E6A34348;
        *&v284[16] = &v277;
        v285 = 20;
        *&v284[8] = buf;
        dispatch_data_apply(v38, applier);
      }

      _Block_object_dispose(&v277, 8);
      _Block_object_dispose(buf, 8);
      if (gLogDatapath == 1)
      {
        v168 = __nwlog_obj();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
        {
          v169 = *(a1 + 32);
          os_unfair_lock_opaque_low = LOWORD(v28[18]._os_unfair_lock_opaque);
          *applier = 136446722;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v169;
          *&applier[22] = 1024;
          *v284 = os_unfair_lock_opaque_low;
          _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
        }
      }
    }

    objc_storeStrong(&v28[60], *(*(a1 + 32) + 72));
    LOBYTE(v28[62]._os_unfair_lock_opaque) = 1;
    nw_masque_connection_pair_setup_outer_connection(v28, v244[5], 17, v24);

    goto LABEL_34;
  }

  if (gLogDatapath)
  {
    v161 = __nwlog_obj();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
    {
      v162 = *(a1 + 32);
      v163 = v244[5];
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v162;
      *&applier[22] = 2112;
      *v284 = v163;
      _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received authority %@", applier, 0x20u);
    }
  }

  if (!v244[5])
  {
    v164 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
    v165 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s called with null authority_endpoint", applier, 12);

    buf[0] = 16;
    LOBYTE(v277) = 0;
    if (__nwlog_fault(v165, buf, &v277))
    {
      if (buf[0] == 17)
      {
        v166 = __nwlog_obj();
        v167 = buf[0];
        if (os_log_type_enabled(v166, buf[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v167, "%{public}s called with null authority_endpoint", applier, 0xCu);
        }
      }

      else if (v277 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v166 = __nwlog_obj();
        v172 = buf[0];
        v173 = os_log_type_enabled(v166, buf[0]);
        if (backtrace_string)
        {
          if (v173)
          {
            *applier = 136446466;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
            *&applier[12] = 2082;
            *&applier[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v166, v172, "%{public}s called with null authority_endpoint, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_168;
        }

        if (v173)
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v172, "%{public}s called with null authority_endpoint, no backtrace", applier, 0xCu);
        }
      }

      else
      {
        v166 = __nwlog_obj();
        v174 = buf[0];
        if (os_log_type_enabled(v166, buf[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v174, "%{public}s called with null authority_endpoint, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_168:
    if (v165)
    {
      free(v165);
    }

    goto LABEL_34;
  }

  if (*(*(a1 + 32) + 96) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = *(a1 + 32);
      *applier = 136446466;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v46;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Dropping request, sending no reply", applier, 0x16u);
    }

    goto LABEL_34;
  }

  v47 = v24;
  has_method = _nw_http_request_has_method(v47, "CONNECT");

  if (has_method)
  {
    if ([v227[5] containsString:@"%"])
    {
      v49 = _CFStringCreateByRemovingPercentEncoding();
      if (v49)
      {
        v50 = __nwlog_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = *(a1 + 32);
          v52 = v227[5];
          *applier = 136446978;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v51;
          *&applier[22] = 2112;
          *v284 = v52;
          *&v284[8] = 2112;
          *&v284[10] = v49;
          _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_INFO, "%{public}s %{public}@ decoded path %@ -> %@", applier, 0x2Au);
        }

        v53 = v227[5];
        v227[5] = v49;
      }
    }

    if (*(v239 + 24) == 1)
    {
      if ([v227[5] hasPrefix:@"/.well-known/masque/udp/"])
      {
        v54 = [v227[5] substringFromIndex:{objc_msgSend(@"/.well-known/masque/udp/", "length")}];
        v55 = [v54 componentsSeparatedByString:@"/"];
        if ([v55 count] < 2)
        {
          v57 = 0;
          v56 = 0;
        }

        else
        {
          v56 = [v55 objectAtIndexedSubscript:0];
          v57 = [v55 objectAtIndexedSubscript:1];
        }

        if (v56 && v57)
        {
          if ([v56 isEqualToString:@"*"] && objc_msgSend(v57, "isEqualToString:", @"*"))
          {
            v112 = __nwlog_obj();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
            {
              v113 = *(a1 + 32);
              *applier = 136446466;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v113;
              _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ requested listener mode", applier, 0x16u);
            }

            well_known = nw_masque_listener_pair_create(*(a1 + 32));
            *(well_known + 84) = 1;
            nw_masque_listener_pair_setup_outer_connection_group(well_known, v47);
            nw_masque_listener_pair_read_inner(well_known);
            v103 = v56;
            goto LABEL_107;
          }

          well_known = nw_masque_connection_pair_create(*(a1 + 32));
          *(well_known + 221) = 1;
          host = nw_endpoint_create_host([v56 UTF8String], objc_msgSend(v57, "UTF8String"));
          nw_masque_connection_pair_setup_outer_connection(well_known, host, 17, v47);
          v103 = v56;
LABEL_106:

LABEL_107:
          goto LABEL_34;
        }

        v103 = v56;
      }

      else
      {
        v103 = 0;
        v57 = 0;
      }

      if (gLogDatapath == 1)
      {
        v175 = __nwlog_obj();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
        {
          v176 = *(a1 + 32);
          v177 = v227[5];
          *applier = 136446722;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v176;
          *&applier[22] = 2112;
          *v284 = v177;
          _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Failed to parse target out of path: %@", applier, 0x20u);
        }
      }

      well_known = _nw_http_response_create_well_known();
      host = nw_http_create_metadata_for_response(well_known);
      v116 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v116, host);
      v117 = *(a1 + 32);
      v118 = v117[6];
      v223[0] = MEMORY[0x1E69E9820];
      v223[1] = 3221225472;
      v223[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_218;
      v223[3] = &unk_1E6A33F88;
      v224 = v117;
      nw_connection_send(v118, 0, v116, 1, v223);

      goto LABEL_106;
    }

    if (*(v235 + 24) != 1)
    {
      v97 = nw_masque_connection_pair_create(*(a1 + 32));
      nw_masque_connection_pair_setup_outer_connection(v97, v244[5], 6, v47);

      goto LABEL_34;
    }

    if ([v227[5] hasPrefix:@"/.well-known/masque/ip/"])
    {
      v93 = [v227[5] substringFromIndex:{objc_msgSend(@"/.well-known/masque/ip/", "length")}];
      v94 = [v93 componentsSeparatedByString:@"/"];
      if ([v94 count] < 2)
      {
        v96 = 0;
        v95 = 0;
      }

      else
      {
        v95 = [v94 objectAtIndexedSubscript:0];
        v96 = [v94 objectAtIndexedSubscript:1];
      }

      if (v95 && v96)
      {
        v132 = [v96 integerValue];
        v133 = nw_masque_connection_pair_create(*(a1 + 32));
        metadata_for_response = nw_endpoint_create_host([v95 UTF8String], "0");
        nw_masque_connection_pair_setup_outer_connection(v133, metadata_for_response, v132, v47);
        v111 = v95;
LABEL_121:

        goto LABEL_34;
      }

      v111 = v95;
    }

    else
    {
      v111 = 0;
      v96 = 0;
    }

    if (gLogDatapath == 1)
    {
      v181 = __nwlog_obj();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
      {
        v182 = *(a1 + 32);
        v183 = v227[5];
        *applier = 136446722;
        *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
        *&applier[12] = 2114;
        *&applier[14] = v182;
        *&applier[22] = 2112;
        *v284 = v183;
        _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Failed to parse target out of path: %@", applier, 0x20u);
      }
    }

    v133 = _nw_http_response_create_well_known();
    metadata_for_response = nw_http_create_metadata_for_response(v133);
    v135 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v135, metadata_for_response);
    v136 = *(a1 + 32);
    v137 = v136[6];
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_227;
    v221[3] = &unk_1E6A33F88;
    v222 = v136;
    nw_connection_send(v137, 0, v135, 1, v221);

    goto LABEL_121;
  }

  v58 = v47;
  v59 = _nw_http_request_has_method(v58, "CONNECT-UDP");
  v193 = v58;

  if (v59)
  {
    v60 = *(a1 + 32);
    v61 = v58;
    if (*(v60 + 72))
    {
      v62 = nw_masque_connection_pair_create(v60);
      v63 = v62;
      v64 = v282;
      BYTE2(v62[44]._os_unfair_lock_opaque) = v282;
      if (v64)
      {
        v65 = BYTE1(v282);
        HIBYTE(v62[44]._os_unfair_lock_opaque) = BYTE1(v282);
        if (v65)
        {
          v66 = BYTE2(v282);
          LOBYTE(v62[45]._os_unfair_lock_opaque) = BYTE2(v282);
          if (v66)
          {
            v67 = BYTE3(v282);
            BYTE1(v62[45]._os_unfair_lock_opaque) = BYTE3(v282);
            if (v67)
            {
              v68 = BYTE4(v282);
              BYTE2(v62[45]._os_unfair_lock_opaque) = BYTE4(v282);
              if (v68)
              {
                v69 = BYTE5(v282);
                HIBYTE(v62[45]._os_unfair_lock_opaque) = BYTE5(v282);
                if (v69)
                {
                  v70 = BYTE6(v282);
                  LOBYTE(v62[46]._os_unfair_lock_opaque) = BYTE6(v282);
                  if (v70)
                  {
                    BYTE1(v62[46]._os_unfair_lock_opaque) = 0;
                  }
                }
              }
            }
          }
        }
      }

      v71 = v270[5];
      if (v71)
      {
        LOWORD(v63[18]._os_unfair_lock_opaque) = nw_dispatch_data_copyout(v71, &v63[18]._os_unfair_lock_opaque + 2, 20);
        nw_dispatch_data_copyout(v258[5], &v63[29], 20);
        if (gLogDatapath == 1)
        {
          v178 = __nwlog_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            v179 = *(a1 + 32);
            v180 = LOWORD(v63[18]._os_unfair_lock_opaque);
            *applier = 136446722;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
            *&applier[12] = 2114;
            *&applier[14] = v179;
            *&applier[22] = 1024;
            *v284 = v180;
            _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
          }
        }
      }

      objc_storeStrong(&v63[60], *(*(a1 + 32) + 72));
      nw_masque_connection_pair_setup_outer_connection(v63, v244[5], 17, v193);
      *(*(a1 + 32) + 97) = 1;
    }

    else if (v282)
    {
      if (v264[5])
      {
        v104 = nw_connection_copy_endpoint(*(v60 + 48));
        v105 = nw_masque_copy_matching_connection_pair(*(a1 + 32), v104, &v282);
        v106 = v105;
        if (v105 && *(v105 + 36))
        {
          objc_storeStrong(v105 + 3, *(*(a1 + 32) + 48));
          v106[68] = nw_dispatch_data_copyout(v264[5], (v106 + 69), 20);
          nw_dispatch_data_copyout(v252[5], (v106 + 79), 20);
          if (gLogDatapath == 1)
          {
            v184 = __nwlog_obj();
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
            {
              v185 = *(a1 + 32);
              v186 = v106[68];
              *applier = 136447234;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v185;
              *&applier[22] = 1024;
              *v284 = v186;
              *&v284[4] = 2080;
              *&v284[6] = &v282;
              *&v284[14] = 2112;
              *&v284[16] = v104;
              _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received server connection ID of length %u for datagram flow %s from %@", applier, 0x30u);
            }
          }

          options = nw_demux_create_options();
          nw_demux_options_add_pattern(options, 1, v106[68], (v106 + 69), 0);
          nw_masque_connection_pair_setup_inner_direct_connections(v106, options);
          v108 = _nw_http_response_create_well_known();
          nw_http_fields_append(v108, "Datagram-Flow-Id", &v282);
          nw_http_fields_append(v108, "Server-Connection-Id", (v106 + 79));
          v109 = nw_http_create_metadata_for_response(v108);
          v110 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v110, v109);
          nw_connection_send(*(*(a1 + 32) + 48), 0, v110, 1, &__block_literal_global_24512);
        }

        else
        {
          v138 = __nwlog_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = *(a1 + 32);
            *applier = 136446978;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
            *&applier[12] = 2114;
            *&applier[14] = v139;
            *&applier[22] = 2080;
            *v284 = &v282;
            *&v284[8] = 2112;
            *&v284[10] = v104;
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Rejecting server connection ID for unknown datagram flow %s from %@", applier, 0x2Au);
          }

          options = _nw_http_response_create_well_known();
          v108 = nw_http_create_metadata_for_response(options);
          v109 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v109, v108);
          v140 = *(a1 + 32);
          v141 = v140[6];
          v217[0] = MEMORY[0x1E69E9820];
          v217[1] = 3221225472;
          v217[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_230;
          v217[3] = &unk_1E6A33F88;
          v218 = v140;
          nw_connection_send(v141, 0, v109, 1, v217);
          v110 = v218;
        }
      }

      else
      {
        v142 = nw_masque_connection_pair_create(v60);
        v143 = v142;
        v144 = v282;
        BYTE2(v142[44]._os_unfair_lock_opaque) = v282;
        if (v144)
        {
          v145 = BYTE1(v282);
          HIBYTE(v142[44]._os_unfair_lock_opaque) = BYTE1(v282);
          if (v145)
          {
            v146 = BYTE2(v282);
            LOBYTE(v142[45]._os_unfair_lock_opaque) = BYTE2(v282);
            if (v146)
            {
              v147 = BYTE3(v282);
              BYTE1(v142[45]._os_unfair_lock_opaque) = BYTE3(v282);
              if (v147)
              {
                v148 = BYTE4(v282);
                BYTE2(v142[45]._os_unfair_lock_opaque) = BYTE4(v282);
                if (v148)
                {
                  v149 = BYTE5(v282);
                  HIBYTE(v142[45]._os_unfair_lock_opaque) = BYTE5(v282);
                  if (v149)
                  {
                    v150 = BYTE6(v282);
                    LOBYTE(v142[46]._os_unfair_lock_opaque) = BYTE6(v282);
                    if (v150)
                    {
                      BYTE1(v142[46]._os_unfair_lock_opaque) = 0;
                    }
                  }
                }
              }
            }
          }
        }

        v151 = v270[5];
        if (v151)
        {
          LOWORD(v143[18]._os_unfair_lock_opaque) = nw_dispatch_data_copyout(v151, &v143[18]._os_unfair_lock_opaque + 2, 20);
          nw_dispatch_data_copyout(v258[5], &v143[29], 20);
          if (gLogDatapath == 1)
          {
            v187 = __nwlog_obj();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
            {
              v188 = *(a1 + 32);
              v189 = LOWORD(v143[18]._os_unfair_lock_opaque);
              *applier = 136446722;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v188;
              *&applier[22] = 1024;
              *v284 = v189;
              _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
            }

            v61 = v193;
          }
        }

        nw_masque_connection_pair_setup_outer_connection(v143, v244[5], 17, v61);
      }
    }

    else
    {
      v127 = _nw_http_response_create_well_known();
      v128 = nw_http_create_metadata_for_response(v127);
      v129 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v129, v128);
      v130 = *(a1 + 32);
      v131 = v130[6];
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_229;
      v219[3] = &unk_1E6A33F88;
      v220 = v130;
      nw_connection_send(v131, 0, v129, 1, v219);
    }

    goto LABEL_34;
  }

  if (!nw_http_request_has_method(v58, "POST"))
  {
    v98 = _nw_http_response_create_well_known();
    v99 = nw_http_create_metadata_for_response(v98);
    v100 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v100, v99);
    v101 = *(a1 + 32);
    v102 = v101[6];
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_267;
    completion[3] = &unk_1E6A33F88;
    v202 = v101;
    nw_connection_send(v102, 0, v100, 1, completion);

    goto LABEL_34;
  }

  v190 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://host.com%@", v227[5]];
  v191 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v190];
  v192 = [v191 query];
  [v192 componentsSeparatedByString:@"&"];
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v72 = v214 = 0u;
  v73 = [v72 countByEnumeratingWithState:&v213 objects:v281 count:16];
  if (!v73)
  {

    v196 = 0;
    v197 = 0;
    goto LABEL_109;
  }

  v196 = 0;
  v197 = 0;
  v74 = *v214;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v214 != v74)
      {
        objc_enumerationMutation(v72);
      }

      v76 = [*(*(&v213 + 1) + 8 * i) componentsSeparatedByString:@"="];
      if ([v76 count] == 2)
      {
        v77 = [v76 firstObject];
        v78 = [v77 isEqualToString:@"targethost"];

        if (v78)
        {
          v79 = [v76 lastObject];
          v80 = v197;
          v197 = v79;
LABEL_72:

          goto LABEL_73;
        }
      }

      if ([v76 count] == 2)
      {
        v81 = [v76 firstObject];
        v82 = [v81 isEqualToString:@"targetpath"];

        if (v82)
        {
          v83 = [v76 lastObject];
          v80 = v196;
          v196 = v83;
          goto LABEL_72;
        }
      }

LABEL_73:
    }

    v73 = [v72 countByEnumeratingWithState:&v213 objects:v281 count:16];
  }

  while (v73);

  if (v197 && v196)
  {
    v84 = __nwlog_obj();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = *(a1 + 32);
      *applier = 136446978;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v85;
      *&applier[22] = 2112;
      *v284 = v197;
      *&v284[8] = 2112;
      *&v284[10] = v196;
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Parsed target host %@ and path %@", applier, 0x2Au);
    }

    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@%@", v197, v196];
    v87 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v86];
    v88 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v87];
    [v88 setHTTPMethod:@"POST"];
    *applier = 0;
    *&applier[8] = applier;
    *&applier[16] = 0x2020000000;
    *v284 = 0;
    v210[0] = MEMORY[0x1E69E9820];
    v210[1] = 3221225472;
    v210[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_254;
    v210[3] = &unk_1E6A30820;
    v89 = v88;
    v211 = v89;
    v212 = applier;
    nw_http_fields_enumerate(v193, v210);
    v90 = *(*&applier[8] + 24);
    if (v90)
    {
      v91 = *(*(a1 + 32) + 48);
      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_260;
      v205[3] = &unk_1E6A3A648;
      v206 = v89;
      v207 = *(a1 + 32);
      nw_connection_receive_internal(v91, 0, v90, v90, v205);

      v92 = v206;
    }

    else
    {
      v152 = __nwlog_obj();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        v153 = *(a1 + 32);
        *buf = 136446466;
        *&buf[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
        *&buf[12] = 2114;
        *&buf[14] = v153;
        _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Request missing content length", buf, 0x16u);
      }

      v92 = _nw_http_response_create_well_known();
      v154 = nw_http_create_metadata_for_response(v92);
      v155 = nw_content_context_create("response");
      v156 = v154;
      nw_content_context_set_metadata_for_protocol(v155, v154);
      v157 = *(a1 + 32);
      v158 = v157[6];
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_259;
      v208[3] = &unk_1E6A33F88;
      v209 = v157;
      nw_connection_send(v158, 0, v155, 1, v208);
    }

    _Block_object_dispose(applier, 8);
    if (v90)
    {
      goto LABEL_141;
    }

    goto LABEL_34;
  }

LABEL_109:
  v119 = __nwlog_obj();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
  {
    v120 = *(a1 + 32);
    v121 = v227[5];
    *applier = 136446722;
    *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
    *&applier[12] = 2114;
    *&applier[14] = v120;
    *&applier[22] = 2112;
    *v284 = v121;
    _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed to parse target host and path out of request path: %@", applier, 0x20u);
  }

  v122 = _nw_http_response_create_well_known();
  v123 = nw_http_create_metadata_for_response(v122);
  v124 = nw_content_context_create("response");
  nw_content_context_set_metadata_for_protocol(v124, v123);
  v125 = *(a1 + 32);
  v126 = v125[6];
  v203[0] = MEMORY[0x1E69E9820];
  v203[1] = 3221225472;
  v203[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_266;
  v203[3] = &unk_1E6A33F88;
  v204 = v125;
  nw_connection_send(v126, 0, v124, 1, v203);

LABEL_141:
LABEL_34:
  _Block_object_dispose(&v226, 8);

  _Block_object_dispose(&v234, 8);
  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v243, 8);

  _Block_object_dispose(&v251, 8);
  _Block_object_dispose(&v257, 8);

  _Block_object_dispose(&v263, 8);
  _Block_object_dispose(&v269, 8);

LABEL_35:
  v8 = 0;
LABEL_36:
}

void sub_182551998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, _Unwind_Exception *exception_objecta, uint64_t a22, void *a23)
{
  _Block_object_dispose(&STACK[0x260], 8);

  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x350], 8);

  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x410], 8);

  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);

  _Unwind_Resume(a1);
}

void nw_masque_connection_cancel_on_queue(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3[112] != 255)
  {
    if (v4 && !*(v3 + 15))
    {
      objc_storeStrong(v3 + 15, a2);
    }

    nw_dictionary_apply(*(v3 + 7), &__block_literal_global_365);
    nw_dictionary_apply(*(v3 + 8), &__block_literal_global_367);
    v6 = *(v3 + 6);
    if (v6)
    {
      nw_connection_cancel(v6);
      v7 = *(v3 + 6);
      *(v3 + 6) = 0;
    }

    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v3 + 15);
        v13 = 136446722;
        v14 = "nw_masque_connection_cancel_on_queue";
        v15 = 2114;
        v16 = v3;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@, error %{public}@", &v13, 0x20u);
      }
    }

    v3[112] = -1;
    v8 = *(v3 + 7);
    *(v3 + 7) = 0;

    v9 = *(v3 + 8);
    *(v3 + 8) = 0;

    v10 = *(v3 + 13);
    *(v3 + 13) = 0;

    v3 = 0;
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_201(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136446722;
      v7 = "nw_masque_read_inner_request_on_queue_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2080;
      v11 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received method %s", &v6, 0x20u);
    }
  }
}

uint64_t __Block_byref_object_copy__30254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_203(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 3 && *__s == 58 && __s[v4 - 1] == 58)
    {
      v5 = v4;
      v6 = dispatch_data_create(__s, v4, 0, 0);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v12 = dispatch_data_create(__s + 1, v5 - 2, 0, 0);
      v9 = dispatch_data_create_with_transform();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 3 && *__s == 58 && __s[v4 - 1] == 58)
    {
      v5 = v4;
      v6 = dispatch_data_create(__s, v4, 0, 0);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v12 = dispatch_data_create(__s + 1, v5 - 2, 0, 0);
      v9 = dispatch_data_create_with_transform();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3(uint64_t a1, const char *a2)
{
  if (a2)
  {
    url = 0;
    asprintf(&url, "tcp://%s", a2);
    v3 = nw_endpoint_create_url(url);
    v4 = nw_endpoint_copy_host_port_endpoint_for_url(v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (url)
    {
      free(url);
    }
  }
}

uint64_t ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_4(uint64_t result, char *__s1)
{
  if (__s1)
  {
    v3 = result;
    result = strcmp(__s1, "connect-udp");
    if (result)
    {
      result = strcmp(__s1, "connect-ip");
      if (result)
      {
        return result;
      }

      v4 = 40;
    }

    else
    {
      v4 = 32;
    }

    *(*(*(v3 + v4) + 8) + 24) = 1;
  }

  return result;
}

void *___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_5(void *result, char *__s)
{
  if (__s)
  {
    v2 = result[4];
    v4 = strlen(__s);

    return memcpy(v2, __s, v4);
  }

  return result;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

os_unfair_lock_s *nw_masque_connection_pair_create(NWConcrete_nw_masque_connection *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [NWConcrete_nw_masque_connection_pair alloc];
  v4 = v2;
  if (!v3)
  {
    goto LABEL_4;
  }

  v45.receiver = v3;
  v45.super_class = NWConcrete_nw_masque_connection_pair;
  v3 = [(NWConcrete_nw_masque_connection *)&v45 init];
  if (v3)
  {
    v5 = dispatch_group_create();
    v6 = *(v3 + 29);
    *(v3 + 29) = v5;

    objc_storeStrong(v3 + 2, a1);
    v7 = nw_connection_copy_endpoint(*(v4 + 6));
    v8 = *(v3 + 28);
    *(v3 + 28) = v7;

    v9 = *(v3 + 6);
    *(v3 + 6) = 0;

    snprintf(v3 + 200, 0x11uLL, "%llx", v3);
    goto LABEL_4;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v21, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v34, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v21)
  {
    free(v21);
  }

  v3 = 0;
LABEL_4:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke;
  aBlock[3] = &unk_1E6A3D760;
  v10 = v4;
  v41 = v10;
  v11 = v3;
  v42 = v11;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 6);
  v12[2](v12);
  os_unfair_lock_unlock(v4 + 6);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2;
  v37[3] = &unk_1E6A3D958;
  v13 = v10;
  v38 = v13;
  v39 = v11;
  v14 = v39;
  v15 = v37;
  if (v14)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL51nw_masque_connection_pair_set_state_changed_handlerP36NWConcrete_nw_masque_connection_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke;
    v47 = &unk_1E6A3D710;
    v48 = v14;
    v49 = v15;
    v16 = _Block_copy(buf);
    os_unfair_lock_lock(v14 + 2);
    v16[2](v16);
    os_unfair_lock_unlock(v14 + 2);

    goto LABEL_6;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
  LODWORD(v36) = 12;
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null pair", buf, v36);

  LOBYTE(v45.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, &v45, &type))
  {
    if (LOBYTE(v45.receiver) == 17)
    {
      v26 = __nwlog_obj();
      receiver = v45.receiver;
      if (os_log_type_enabled(v26, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, receiver, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v32 = v45.receiver;
      v33 = os_log_type_enabled(v26, v45.receiver);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_42;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v35 = v45.receiver;
      if (os_log_type_enabled(v26, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v25)
  {
    free(v25);
  }

LABEL_6:

  v17 = v39;
  v18 = v14;

  return v18;
}

void nw_masque_connection_pair_setup_outer_connection(void *a1, void *a2, uint64_t a3, void *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v7;
  v11 = v9;
  if (v10)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL40nw_masque_connection_pair_handle_headersP36NWConcrete_nw_masque_connection_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    v70 = &unk_1E6A33CE0;
    v71 = v10;
    nw_http_fields_enumerate(v11, buf);

    goto LABEL_3;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_connection_pair_handle_headers";
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null pair", buf, 12);

  LOBYTE(v65[0]) = 16;
  LOBYTE(v59) = 0;
  if (__nwlog_fault(v28, v65, &v59))
  {
    if (LOBYTE(v65[0]) == 17)
    {
      v29 = __nwlog_obj();
      v30 = v65[0];
      if (os_log_type_enabled(v29, v65[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v59 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v36 = v65[0];
      v37 = os_log_type_enabled(v29, v65[0]);
      if (backtrace_string)
      {
        if (v37)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_connection_pair_handle_headers";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (v37)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v41 = v65[0];
      if (os_log_type_enabled(v29, v65[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v41, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_45:
  if (v28)
  {
    free(v28);
  }

LABEL_3:

  if (a3 == 6)
  {
    secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
    goto LABEL_7;
  }

  if (a3 == 17)
  {
    secure_tcp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
LABEL_7:
    custom_ip = secure_tcp;
    goto LABEL_9;
  }

  v14 = &__block_literal_global_2;

  custom_ip = _nw_parameters_create_custom_ip(a3, 0);
LABEL_9:
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__271;
  v63 = __Block_byref_object_dispose__272;
  v64 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke;
  aBlock[3] = &unk_1E6A3D738;
  v58 = &v59;
  v15 = v10;
  v57 = v15;
  v16 = _Block_copy(aBlock);
  os_unfair_lock_lock(v10 + 2);
  v16[2](v16);
  os_unfair_lock_unlock(v10 + 2);

  v17 = objc_loadWeakRetained((*&v15[4]._os_unfair_lock_opaque + 40));
  v18 = v17;
  if (v17)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v70 = __Block_byref_object_copy__93291;
    v71 = __Block_byref_object_dispose__93292;
    v72 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __nw_masque_server_copy_client_queue_block_invoke;
    v65[3] = &unk_1E6A3D738;
    v67 = buf;
    v66 = v17;
    v19 = _Block_copy(v65);
    os_unfair_lock_lock(v18 + 4);
    v19[2](v19);
    os_unfair_lock_unlock(v18 + 4);

    v20 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_11;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_server_copy_client_queue";
  LODWORD(v43) = 12;
  v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null server", buf, v43);

  LOBYTE(v65[0]) = 16;
  v68 = 0;
  v32 = v45;
  if (__nwlog_fault(v45, v65, &v68))
  {
    if (LOBYTE(v65[0]) == 17)
    {
      v33 = __nwlog_obj();
      v34 = v65[0];
      if (os_log_type_enabled(v33, v65[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_server_copy_client_queue";
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null server", buf, 0xCu);
      }
    }

    else
    {
      if (v68 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        type = v65[0];
        v40 = os_log_type_enabled(v39, v65[0]);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_server_copy_client_queue";
            *&buf[12] = 2082;
            *&buf[14] = v38;
            _os_log_impl(&dword_181A37000, v39, type, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
        }

        else
        {
          if (v40)
          {
            *buf = 136446210;
            *&buf[4] = "nw_masque_server_copy_client_queue";
            _os_log_impl(&dword_181A37000, v39, type, "%{public}s called with null server, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_50;
      }

      v33 = __nwlog_obj();
      v42 = v65[0];
      if (os_log_type_enabled(v33, v65[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_server_copy_client_queue";
        _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_50:
    v32 = v45;
  }

  if (v32)
  {
    free(v32);
  }

  v20 = 0;
LABEL_11:

  if (v60[5] && v20)
  {
    v21 = *&v15[4]._os_unfair_lock_opaque;
    v22 = *(v21 + 16);
    v23 = nw_connection_copy_endpoint(*(v21 + 48));
    v24 = *(*&v15[4]._os_unfair_lock_opaque + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_2;
    block[3] = &unk_1E6A30898;
    v53 = &v59;
    v54 = v22;
    v47 = v8;
    v48 = custom_ip;
    v49 = v23;
    v50 = v11;
    v51 = v24;
    v52 = v15;
    v55 = a3;
    v25 = v24;
    v26 = v23;
    dispatch_async(v20, block);
  }

  else
  {
    nw_masque_connection_pair_setup_outer_connection_inner(v15, v8, a3, custom_ip);
  }

  _Block_object_dispose(&v59, 8);
}

void sub_182553534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  _Block_object_dispose(&a34, 8);

  _Unwind_Resume(a1);
}

os_unfair_lock_s *nw_masque_listener_pair_create(NWConcrete_nw_masque_connection *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [NWConcrete_nw_masque_listener_pair alloc];
  v4 = v2;
  if (!v3)
  {
    goto LABEL_4;
  }

  v45.receiver = v3;
  v45.super_class = NWConcrete_nw_masque_listener_pair;
  v3 = [(NWConcrete_nw_masque_connection *)&v45 init];
  if (v3)
  {
    v5 = dispatch_group_create();
    v6 = *(v3 + 12);
    *(v3 + 12) = v5;

    objc_storeStrong(v3 + 2, a1);
    v7 = nw_connection_copy_endpoint(*(v4 + 6));
    v8 = *(v3 + 11);
    *(v3 + 11) = v7;

    v9 = *(v3 + 3);
    *(v3 + 3) = 0;

    snprintf(v3 + 64, 0x11uLL, "%llx", v3);
    goto LABEL_4;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v21, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v34, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v21)
  {
    free(v21);
  }

  v3 = 0;
LABEL_4:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke;
  aBlock[3] = &unk_1E6A3D760;
  v10 = v4;
  v41 = v10;
  v11 = v3;
  v42 = v11;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 6);
  v12[2](v12);
  os_unfair_lock_unlock(v4 + 6);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2;
  v37[3] = &unk_1E6A3D958;
  v13 = v10;
  v38 = v13;
  v39 = v11;
  v14 = v39;
  v15 = v37;
  if (v14)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL49nw_masque_listener_pair_set_state_changed_handlerP34NWConcrete_nw_masque_listener_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke;
    v47 = &unk_1E6A3D710;
    v48 = v14;
    v49 = v15;
    v16 = _Block_copy(buf);
    os_unfair_lock_lock(v14 + 2);
    v16[2](v16);
    os_unfair_lock_unlock(v14 + 2);

    goto LABEL_6;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
  LODWORD(v36) = 12;
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null pair", buf, v36);

  LOBYTE(v45.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, &v45, &type))
  {
    if (LOBYTE(v45.receiver) == 17)
    {
      v26 = __nwlog_obj();
      receiver = v45.receiver;
      if (os_log_type_enabled(v26, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, receiver, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v32 = v45.receiver;
      v33 = os_log_type_enabled(v26, v45.receiver);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_42;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v35 = v45.receiver;
      if (os_log_type_enabled(v26, v45.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v25)
  {
    free(v25);
  }

LABEL_6:

  v17 = v39;
  v18 = v14;

  return v18;
}

void nw_masque_listener_pair_setup_outer_connection_group(void *a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
    *v54 = MEMORY[0x1E69E9820];
    *&v54[8] = 3221225472;
    *&v54[16] = ___ZL38nw_masque_listener_pair_handle_headersP34NWConcrete_nw_masque_listener_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    v55 = &unk_1E6A33CE0;
    v56 = v5;
    nw_http_fields_enumerate(v4, v54);

    secure_udp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
    v7 = secure_udp;
    v8 = *(*(v5 + 2) + 80);
    if (v8)
    {
      nw_parameters_require_interface(secure_udp, v8);
    }

    nw_parameters_set_proxy_applied(v7);
    if (*(v5 + 16))
    {
      nw_parameters_set_reuse_local_address(v7, 1);
    }

    v9 = *(v5 + 2);
    v10 = *(v9 + 16);
    v11 = nw_connection_copy_endpoint(*(v9 + 48));
    *v54 = 0;
    *&v54[8] = v54;
    *&v54[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__271;
    v56 = __Block_byref_object_dispose__272;
    v57 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v51 = v54;
    v12 = v5;
    v50 = v12;
    v13 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 2);
    v13[2](v13);
    os_unfair_lock_unlock(v5 + 2);

    v14 = *(*&v54[8] + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v10, 0, v7, v11, v4);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(v5 + 2);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group";
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v59 = v7;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}@ creating new outer connection group with parameters %@", buf, 0x20u);
    }

    v17 = nw_connection_group_create_with_parameters(v7);
    v18 = v12[3];
    v12[3] = v17;

    nw_connection_group_set_queue(v12[3], *(*(v5 + 2) + 32));
    v19 = v12[3];
    state_changed_handler[0] = MEMORY[0x1E69E9820];
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_346;
    state_changed_handler[3] = &unk_1E6A3D820;
    v20 = v12;
    v48 = v20;
    nw_connection_group_set_state_changed_handler(v19, state_changed_handler);
    v21 = v20;
    v22 = v21;
    if (*(*(v5 + 2) + 48))
    {
      v23 = v12[3];
      if (v23)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke;
        v59 = &unk_1E6A309B0;
        v60 = v21;
        nw_connection_group_set_receive_handler(v23, 0xFFFFFFFF, 0, buf);

LABEL_13:
        nw_connection_group_start(v12[3]);

        _Block_object_dispose(v54, 8);
        goto LABEL_14;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null pair->mlp_outer_connection_group", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      v29 = v46;
      if (!__nwlog_fault(v46, &type, &v52))
      {
LABEL_66:
        if (v29)
        {
          free(v29);
        }

        goto LABEL_13;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_65;
      }

      if (v52 != 1)
      {
        v30 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v43, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_53;
      }

      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v45 = type;
      v40 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_44:

        free(backtrace_string);
LABEL_65:
        v29 = v46;
        goto LABEL_66;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      v29 = v46;
      if (!__nwlog_fault(v46, &type, &v52))
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 0xCu);
        }

        goto LABEL_53;
      }

      if (v52 != 1)
      {
        v30 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null pair->mlp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_53;
      }

      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v44 = type;
      v39 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v39)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null pair->mlp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_44;
      }

      if (v39)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null pair->mlp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }
    }

    goto LABEL_65;
  }

  v24 = __nwlog_obj();
  *v54 = 136446210;
  *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null pair", v54, 12);

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, buf, &type))
  {
    if (buf[0] == 17)
    {
      v26 = __nwlog_obj();
      v27 = buf[0];
      if (os_log_type_enabled(v26, buf[0]))
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null pair", v54, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v34 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v35 = buf[0];
      v36 = os_log_type_enabled(v26, buf[0]);
      if (v34)
      {
        if (v36)
        {
          *v54 = 136446466;
          *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
          *&v54[12] = 2082;
          *&v54[14] = v34;
          _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, dumping backtrace:%{public}s", v54, 0x16u);
        }

        free(v34);
        goto LABEL_57;
      }

      if (v36)
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, no backtrace", v54, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v41 = buf[0];
      if (os_log_type_enabled(v26, buf[0]))
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v41, "%{public}s called with null pair, backtrace limit exceeded", v54, 0xCu);
      }
    }
  }

LABEL_57:
  if (v25)
  {
    free(v25);
  }

LABEL_14:
}

void sub_1825547C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void nw_masque_listener_pair_read_inner(NWConcrete_nw_masque_listener_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_listener_pair_read_inner";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v3 = *(*(v1 + 2) + 48);
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mlp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mlp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_listener_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mlp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v1 + 3))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null pair->mlp_outer_connection_group", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_listener_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

id nw_masque_copy_matching_connection_pair(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30254;
  v21 = __Block_byref_object_dispose__30255;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke;
  v12[3] = &unk_1E6A333D8;
  v7 = v5;
  v13 = v7;
  v14 = v6;
  v15 = &v17;
  v16 = a3;
  v8 = v6;
  v9 = _Block_copy(v12);
  os_unfair_lock_lock(v5 + 6);
  v9[2](v9);
  os_unfair_lock_unlock(v5 + 6);

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void sub_18255511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void nw_masque_connection_pair_setup_inner_direct_connections(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_connection_copy_parameters(*(*(v3 + 2) + 48));
    if (!*(v3 + 4))
    {
      v6 = _nw_parameters_copy();
      v7 = nw_parameters_copy_default_protocol_stack(v6);
      nw_protocol_stack_clear_application_protocols(v7);
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v8 = os_retain(nw_protocol_demux_copy_definition::definition);
        options = nw_protocol_create_options(v8);
        if (v8)
        {
          os_release(v8);
        }
      }

      else
      {
        options = nw_protocol_create_options(0);
      }

      nw_protocol_stack_prepend_application_protocol(v7, options);

      v10 = nw_connection_create_with_connection(*(*(v3 + 2) + 48), v6);
      v11 = *(v3 + 4);
      *(v3 + 4) = v10;

      nw_connection_set_queue(*(v3 + 4), *(*(v3 + 2) + 32));
      v12 = *(v3 + 4);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke;
      handler[3] = &unk_1E6A3D820;
      v33 = v3;
      nw_connection_set_state_changed_handler(v12, handler);
      nw_connection_start(*(v3 + 4));
    }

    v13 = _nw_parameters_copy();
    v14 = nw_parameters_copy_default_protocol_stack(v13);
    nw_protocol_stack_clear_application_protocols(v14);
    nw_protocol_stack_prepend_application_protocol(v14, v4);
    v15 = nw_connection_create_with_connection(*(*(v3 + 2) + 48), v13);
    nw_connection_set_queue(v15, *(*(v3 + 2) + 32));
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke_361;
    v29[3] = &unk_1E6A3D958;
    v16 = v3;
    v30 = v16;
    v17 = v15;
    v31 = v17;
    nw_connection_set_state_changed_handler(&v17->super, v29);
    nw_connection_start(&v17->super);
    v18 = *(v16 + 5);
    if (v18 || (v19 = _nw_array_create(), v20 = *(v16 + 5), *(v16 + 5) = v19, v20, (v18 = *(v16 + 5)) != 0))
    {
      if (v17)
      {
        _nw_array_append(v18, v17);
      }
    }

    nw_masque_connection_pair_read_inner_direct(v16, v17);

    goto LABEL_15;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_masque_connection_pair_setup_inner_direct_connections";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null pair", buf, 12);

  v35 = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v22, &v35, &v34))
  {
    if (v35 == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = v35;
      if (os_log_type_enabled(v23, v35))
      {
        *buf = 136446210;
        v37 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v26 = v35;
      v27 = os_log_type_enabled(v23, v35);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v37 = "nw_masque_connection_pair_setup_inner_direct_connections";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v27)
      {
        *buf = 136446210;
        v37 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v28 = v35;
      if (os_log_type_enabled(v23, v35))
      {
        *buf = 136446210;
        v37 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v22)
  {
    free(v22);
  }

LABEL_15:
}

uint64_t ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  [*(a1 + 32) setValue:v7 forHTTPHeaderField:v6];
  if (![v6 caseInsensitiveCompare:@"content-length"])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
  }

  return 1;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_260(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  [v3 setHTTPBody:v5];
  v7 = [MEMORY[0x1E695AC78] sharedSession];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3_262;
  v10[3] = &unk_1E6A30848;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = [v7 dataTaskWithRequest:v8 completionHandler:v10];
  [v9 resume];
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3_262(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v4 = a3;
  if (gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      *buf = 136446722;
      v33 = "nw_masque_read_inner_request_on_queue_block_invoke_3";
      v34 = 2114;
      v35 = v22;
      v36 = 1024;
      LODWORD(v37) = [v4 statusCode];
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %u response to client", buf, 0x1Cu);
    }
  }

  v5 = _nw_http_response_create([v4 statusCode], 0);
  [v4 allHeaderFields];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v6 = v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v7)
  {
    v9 = *v29;
    *&v8 = 136446978;
    v23 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:{v11, v23}];
        if (gLogDatapath == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(a1 + 32);
            *buf = v23;
            v33 = "nw_masque_read_inner_request_on_queue_block_invoke";
            v34 = 2114;
            v35 = v14;
            v36 = 2112;
            v37 = v11;
            v38 = 2112;
            v39 = v12;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying response header to client: %@: %@", buf, 0x2Au);
          }
        }

        nw_http_fields_append(v5, [v11 UTF8String], objc_msgSend(v12, "UTF8String"));

        ++v10;
      }

      while (v7 != v10);
      v15 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
      v7 = v15;
    }

    while (v15);
  }

  metadata_for_response = nw_http_create_metadata_for_response(v5);
  if (v25)
  {
    v17 = [v25 _createDispatchData];
  }

  else
  {
    v17 = 0;
  }

  v18 = nw_content_context_create("response");
  nw_content_context_set_metadata_for_protocol(v18, metadata_for_response);
  v19 = *(a1 + 32);
  v20 = v19[6];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_263;
  completion[3] = &unk_1E6A33F88;
  v27 = v19;
  nw_connection_send(v20, v17, v18, 1, completion);
}

void ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v8 = *(v6 + 16);
    v9 = 136446978;
    v10 = "nw_masque_connection_pair_setup_inner_direct_connections_block_invoke";
    v11 = 2114;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct send connection to %@ has transitioned to %s", &v9, 0x2Au);
  }
}

void ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke_361(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_connection_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct receive connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void nw_masque_connection_pair_read_inner_direct(NWConcrete_nw_masque_connection_pair *a1, NWConcrete_nw_connection *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null pair", buf, 12);

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = v29;
      v16 = os_log_type_enabled(v8, v29);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v31 = "nw_masque_connection_pair_read_inner_direct";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v7);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null direct_receive_connection", buf, 12);

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null direct_receive_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v8 = __nwlog_obj();
      v23 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null direct_receive_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v18 = v29;
    v19 = os_log_type_enabled(v8, v29);
    if (!v17)
    {
      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null direct_receive_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v31 = "nw_masque_connection_pair_read_inner_direct";
      v32 = 2082;
      v33 = v17;
      _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null direct_receive_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v3 + 6))
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null pair->mcp_outer_connection", buf, 12);

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v13 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v8 = __nwlog_obj();
      v24 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v24, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v20 = v29;
    v21 = os_log_type_enabled(v8, v29);
    if (!v17)
    {
      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v31 = "nw_masque_connection_pair_read_inner_direct";
      v32 = 2082;
      v33 = v17;
      _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v17);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke;
  v25[3] = &unk_1E6A30A28;
  v26 = v3;
  v27 = v5;
  nw_connection_read_multiple(v27, 1u, 0xFFFFFFFF, v25);

LABEL_5:
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7 && (a4 == 40 || !a4))
  {
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1 + 32) + 16);
        *buf = 136446722;
        v21 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
        v22 = 2114;
        v23 = v15;
        v24 = 1024;
        v25 = a3;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to target", buf, 0x1Cu);
      }

      v6 = *(a1 + 32);
      v7 = v6[6];
    }

    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_362;
    batch_block[3] = &unk_1E6A30910;
    v19 = a3;
    v18 = a2;
    v17 = v6;
    nw_connection_batch(v7, batch_block);
    nw_masque_connection_pair_read_inner_direct(*(a1 + 32), *(a1 + 40));
    v10 = v17;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 16);
      v13 = *(v11 + 48);
      *buf = 136446978;
      v21 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
      v22 = 2114;
      v23 = v12;
      v24 = 1024;
      v25 = a4;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_362(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 40) + 8 * v2);
      if (gLogDatapath == 1)
      {
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 32);
          v8 = *(v7 + 16);
          if (v3)
          {
            v10 = *(v7 + 16);
            size = dispatch_data_get_size(v3);
            v8 = v10;
          }

          else
          {
            size = 0;
          }

          *buf = 136446722;
          v14 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
          v15 = 2114;
          v16 = v8;
          v17 = 2048;
          v18 = size;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes directly to target", buf, 0x20u);
        }
      }

      v4 = *(a1 + 32);
      v5 = v4[6];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_363;
      completion[3] = &unk_1E6A33F88;
      v12 = v4;
      nw_connection_send(v5, v3, &__block_literal_global_44658, 1, completion);

      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_363(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }
}

void ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  if (v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke_2;
    v3[3] = &unk_1E6A30A00;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    nw_dictionary_apply(v1, v3);
  }
}

uint64_t ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(v5 + 219) == 1 && nw_endpoint_is_equal(*(a1 + 32), *(v5 + 28), 0) && !strcmp(*(a1 + 48), v5 + 178))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v99 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  context = v9;
  v76 = a5;
  data = v8;
  if (v8)
  {
    size = dispatch_data_get_size(v8);
    if (!v9 || size)
    {
LABEL_21:
      if (!*(*(a1 + 32) + 24) || v76 && (v22 = v76, v23 = v22[3], v22, v23 != 40))
      {
        v28 = a1;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v29 = *(*(v28 + 32) + 16);
          *buf = 136446722;
          *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v29;
          *&buf[22] = 2112;
          v92 = v76;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
        }

        goto LABEL_86;
      }

      if (!data)
      {
        nw_masque_listener_pair_read_inner(*(a1 + 32));
        goto LABEL_87;
      }

      v24 = a1;
      v25 = dispatch_data_get_size(data);
      if (v25 <= 6)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *(*(v24 + 32) + 16);
          *buf = 136446722;
          *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v27;
          *&buf[22] = 2048;
          v92 = v25;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Received too short content (%zu bytes)", buf, 0x20u);
        }

        nw_masque_listener_pair_read_inner(*(v24 + 32));
        goto LABEL_87;
      }

      v12 = data;
      LOBYTE(v85) = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x2000000000;
      v98 = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x2000000000;
      v90 = &v85;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
      v92 = &unk_1E6A34348;
      *(&v93 + 1) = &v87;
      v94 = 1;
      *&v93 = &v95;
      dispatch_data_apply(v12, buf);
      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(&v95, 8);
      if (v85 == 6)
      {
        memset(v79, 0, sizeof(v79));
        v95 = 0;
        v96 = &v95;
        v97 = 0x2000000000;
        v98 = 0;
        v87 = 0;
        v88 = &v87;
        v89 = 0x2000000000;
        v90 = v79;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
        v92 = &unk_1E6A34348;
        *(&v93 + 1) = &v87;
        v94 = 19;
        *&v93 = &v95;
        dispatch_data_apply(v12, buf);
        v33 = v96[3];
        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(&v95, 8);
        address = 0;
        if (v33 == 19)
        {
          *&buf[4] = 0;
          LODWORD(v92) = 0;
          *buf = 7708;
          *&buf[8] = *&v79[1];
          *&buf[2] = *&v79[17];
          address = _nw_endpoint_create_address(buf);
        }

        subrange = dispatch_data_create_subrange(v12, 0x13uLL, v25 - 19);
      }

      else
      {
        if (v85 != 4)
        {
LABEL_43:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(*(v24 + 32) + 16);
            *buf = 136446466;
            *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v37;
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed to parse remote endpoint from datagram", buf, 0x16u);
          }

          nw_masque_listener_pair_read_inner(*(v24 + 32));
          goto LABEL_86;
        }

        *&v79[3] = 0;
        *v79 = 0;
        v95 = 0;
        v96 = &v95;
        v97 = 0x2000000000;
        v98 = 0;
        v87 = 0;
        v88 = &v87;
        v89 = 0x2000000000;
        v90 = v79;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
        v92 = &unk_1E6A34348;
        *(&v93 + 1) = &v87;
        v94 = 7;
        *&v93 = &v95;
        dispatch_data_apply(v12, buf);
        v30 = v96[3];
        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(&v95, 8);
        address = 0;
        if (v30 == 7)
        {
          *&buf[8] = 0;
          *buf = 528;
          *&buf[4] = *&v79[1];
          *&buf[2] = *&v79[5];
          address = _nw_endpoint_create_address(buf);
        }

        subrange = dispatch_data_create_subrange(v12, 7uLL, v25 - 7);
      }

      v12 = subrange;
      if (address)
      {
        if (gLogDatapath == 1)
        {
          v64 = __nwlog_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(*(v24 + 32) + 16);
            if (v12)
            {
              v66 = dispatch_data_get_size(v12);
            }

            else
            {
              v66 = 0;
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v65;
            *&buf[22] = 2048;
            v92 = v66;
            LOWORD(v93) = 2112;
            *(&v93 + 2) = address;
            _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes to target %@", buf, 0x2Au);
          }
        }

        dispatch_group_enter(*(*(v24 + 32) + 96));
        v34 = *(v24 + 32);
        v35 = v34[3];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_357;
        completion[3] = &unk_1E6A33F88;
        v78 = v34;
        nw_connection_group_send_message(v35, v12, address, &__block_literal_global_44658, completion);
        nw_masque_listener_pair_read_inner(*(v24 + 32));

        goto LABEL_86;
      }

      goto LABEL_43;
    }
  }

  else if (!v9)
  {
    goto LABEL_21;
  }

  v72 = a1;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v11 = nw_protocol_copy_http_definition_http_definition;
  v12 = nw_content_context_copy_protocol_metadata(v9, v11);

  if (!v12 || !nw_http_metadata_is_capsule(v12))
  {

    a1 = v72;
    goto LABEL_21;
  }

  capsule_type = nw_http_metadata_get_capsule_type(v12);
  v71 = nw_http_metadata_copy_capsule_data(v12);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(*(v72 + 32) + 16);
    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    v92 = capsule_type;
    LOWORD(v93) = 2112;
    *(&v93 + 2) = v71;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received capsule type %llx with data %@", buf, 0x2Au);
  }

  if (capsule_type != 16770306)
  {
    goto LABEL_85;
  }

  if (!*(*(v72 + 32) + 40))
  {
    v18 = nw_dictionary_create(v16, v17);
    v19 = *(v72 + 32);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  if (nw_protocol_demux_copy_definition::definition)
  {
    v21 = os_retain(nw_protocol_demux_copy_definition::definition);
    options = nw_protocol_create_options(v21);
    if (v21)
    {
      os_release(v21);
    }
  }

  else
  {
    options = nw_protocol_create_options(0);
  }

  *v79 = 0;
  v38 = dispatch_data_get_size(v71);
  if (v38 <= 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v38;
    *&buf[22] = 2048;
    v92 = 2;
    v40 = "%{public}s insufficient capsule data bytes %zu < %zu";
    v41 = v39;
    v42 = 32;
LABEL_76:
    _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
    goto LABEL_83;
  }

  nw_dispatch_data_copyout_from_offset(v71, v79, 2, 0);
  v43 = bswap32(*v79) >> 16;
  if (v38 != v43 + 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v38;
    *&buf[22] = 2048;
    v92 = 2;
    LOWORD(v93) = 1024;
    *(&v93 + 2) = v43;
    v40 = "%{public}s mismatched capsule data bytes %zu != (%zu + %u)";
    v41 = v39;
    v42 = 38;
    goto LABEL_76;
  }

  if (v38 == 2)
  {
    goto LABEL_84;
  }

  endpoint = 0;
  v44 = 2;
  v45 = v71;
  do
  {
    v86 = 0;
    nw_dispatch_data_copyout_from_offset(v45, &v86, 1, v44);
    v85 = 0;
    nw_dispatch_data_copyout_from_offset(v45, &v85, 2, v44 + 1);
    v48 = v44 + 3;
    v49 = v85;
    v50 = __rev16(v85);
    v70 = v44 + 3 + v50;
    if (v86 != 2)
    {
      if (v86 == 1)
      {
        v51 = dispatch_data_create_subrange(v71, v44 + 3, v50);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v92 = 0;
        if (v49)
        {
          v52 = 0;
          do
          {
            v84 = 0;
            v83 = 0;
            nw_dispatch_data_copyout_from_offset(v51, &v84, 2, v52);
            v55 = *(*&buf[8] + 24) + 2;
            *(*&buf[8] + 24) = v55;
            nw_dispatch_data_copyout_from_offset(v51, &v83, 2, v55);
            *(*&buf[8] + 24) += 2;
            v95 = 0;
            v96 = &v95;
            v97 = 0x2020000000;
            v98 = 0;
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_354;
            v82[3] = &unk_1E6A30988;
            v82[4] = buf;
            v82[5] = &v95;
            dispatch_data_apply(v51, v82);
            v56 = *(*&buf[8] + 24) + v84;
            *(*&buf[8] + 24) = v56;
            v81 = 0;
            nw_dispatch_data_copyout_from_offset(v51, &v81, 1, v56);
            ++*(*&buf[8] + 24);
            v87 = 0;
            v88 = &v87;
            v89 = 0x2020000000;
            v90 = 0;
            if (v81)
            {
              applier[0] = MEMORY[0x1E69E9820];
              applier[1] = 3221225472;
              applier[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_2;
              applier[3] = &unk_1E6A30988;
              applier[4] = buf;
              applier[5] = &v87;
              dispatch_data_apply(v51, applier);
              v53 = v84;
              *(*&buf[8] + 24) += v84;
              v54 = v88[3];
            }

            else
            {
              v54 = 0;
              v53 = v84;
            }

            nw_demux_options_add_pattern(options, v83, v53, v96[3], v54);
            _Block_object_dispose(&v87, 8);
            _Block_object_dispose(&v95, 8);
            v52 = *(*&buf[8] + 24);
          }

          while (v52 < v50);
        }

        _Block_object_dispose(buf, 8);

        v46 = v70;
        goto LABEL_54;
      }

      v46 = v44 + 3 + v50;
LABEL_67:
      if (v46 != v48)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    v95 = 0;
    v96 = 0;
    nw_dispatch_data_copyout_from_offset(v71, &v95, 16, v44 + 3);
    if (BYTE1(v95) == 30)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v92) = 0;
      nw_dispatch_data_copyout_from_offset(v71, buf, 28, v44 + 3);
      v46 = v44 + 3 + v50;
      v57 = _nw_endpoint_create_address(buf);

      v48 = v44 + 31;
    }

    else
    {
      v46 = v44 + 3 + v50;
      if (BYTE1(v95) != 2)
      {
        goto LABEL_67;
      }

      *buf = 0;
      *&buf[8] = 0;
      nw_dispatch_data_copyout_from_offset(v71, buf, 16, v44 + 3);
      v57 = _nw_endpoint_create_address(buf);

      v48 = v44 + 19;
    }

    endpoint = v57;
    if (v46 != v48)
    {
LABEL_71:
      v58 = __nwlog_obj();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke_3";
        *&buf[12] = 2048;
        *&buf[14] = v46;
        *&buf[22] = 2048;
        v92 = v48;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s mismatched end offset %zu != %zu", buf, 0x20u);
      }

      goto LABEL_82;
    }

LABEL_54:
    v44 = v46;
    v47 = v46 >= v38;
    v45 = v71;
  }

  while (!v47);
  v59 = endpoint;
  if (!endpoint)
  {
    goto LABEL_84;
  }

  v60 = v71;
  v61 = nw_endpoint_copy_address_string(endpoint);
  nw_dictionary_set_value(*(*(v72 + 32) + 40), v61, options);
  if (v61)
  {
    free(v61);
  }

  if (gLogDatapath == 1)
  {
    v67 = __nwlog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v68 = *(*(v72 + 32) + 16);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v68;
      *&buf[22] = 2112;
      v92 = endpoint;
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ received listener demux pattern for %@", buf, 0x20u);
    }

    v60 = v71;
    v59 = endpoint;
  }

  nw_masque_listener_pair_setup_inner_direct_connections(*(v72 + 32), options, v59);
  v62 = nw_content_context_create("listener ack pattern");
  metadata_for_capsule = nw_http_create_metadata_for_capsule(16770307, v60);
  nw_content_context_set_metadata_for_protocol(v62, metadata_for_capsule);
  nw_connection_send(*(*(*(v72 + 32) + 16) + 48), 0, v62, 1, &__block_literal_global_24512);

LABEL_82:
  v39 = endpoint;
LABEL_83:

LABEL_84:
LABEL_85:
  nw_masque_listener_pair_read_inner(*(v72 + 32));

LABEL_86:
LABEL_87:
}

BOOL ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

BOOL ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

void nw_masque_listener_pair_setup_inner_direct_connections(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = nw_connection_copy_parameters(*(v5[2] + 48));
    if (!v5[6])
    {
      v9 = _nw_parameters_copy();
      v10 = nw_parameters_copy_default_protocol_stack(v9);
      nw_protocol_stack_clear_application_protocols(v10);
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v11 = os_retain(nw_protocol_demux_copy_definition::definition);
        options = nw_protocol_create_options(v11);
        if (v11)
        {
          os_release(v11);
        }
      }

      else
      {
        options = nw_protocol_create_options(0);
      }

      nw_protocol_stack_prepend_application_protocol(v10, options);

      v13 = nw_connection_create_with_connection(*(v5[2] + 48), v9);
      nw_connection_set_queue(v13, *(v5[2] + 32));
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke;
      handler[3] = &unk_1E6A3D958;
      v37 = v5;
      v14 = v13;
      v38 = v14;
      nw_connection_set_state_changed_handler(v14, handler);
      nw_connection_start(v14);
      v15 = v5[6];
      v5[6] = v14;
      v16 = v14;
    }

    v17 = _nw_parameters_copy();
    v18 = nw_parameters_copy_default_protocol_stack(v17);
    nw_protocol_stack_clear_application_protocols(v18);
    if (v6)
    {
      nw_protocol_stack_prepend_application_protocol(v18, v6);
    }

    v19 = nw_connection_create_with_connection(*(v5[2] + 48), v17);
    nw_connection_set_queue(v19, *(v5[2] + 32));
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke_358;
    v33[3] = &unk_1E6A3D958;
    v20 = v5;
    v34 = v20;
    v21 = v19;
    v35 = v21;
    nw_connection_set_state_changed_handler(v21, v33);
    nw_connection_start(v21);
    v22 = v20[7];
    if (v22 || (v23 = _nw_array_create(), v24 = v20[7], v20[7] = v23, v24, (v22 = v20[7]) != 0))
    {
      if (v21)
      {
        _nw_array_append(v22, v21);
      }
    }

    nw_masque_listener_pair_read_inner_direct(v20, v21, v7);

    goto LABEL_17;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_masque_listener_pair_setup_inner_direct_connections";
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null pair", buf, 12);

  v40 = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v26, &v40, &v39))
  {
    if (v40 == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v30 = v40;
      v31 = os_log_type_enabled(v27, v40);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v42 = "nw_masque_listener_pair_setup_inner_direct_connections";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_34;
      }

      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v32 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_34:
  if (v26)
  {
    free(v26);
  }

LABEL_17:
}

void ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_357(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_inner_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection group %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 96));
}

void ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_listener_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct send connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke_358(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_listener_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct receive connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void nw_masque_listener_pair_read_inner_direct(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v31 == 1)
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
          v34 = "nw_masque_listener_pair_read_inner_direct";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null inner_direct_receive_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null inner_direct_receive_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null inner_direct_receive_connection, backtrace limit exceeded", buf, 0xCu);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inner_direct_receive_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v34 = "nw_masque_listener_pair_read_inner_direct";
      v35 = 2082;
      v36 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inner_direct_receive_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v5[3])
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null pair->mlp_outer_connection_group", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v34 = "nw_masque_listener_pair_read_inner_direct";
      v35 = 2082;
      v36 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
  v27[3] = &unk_1E6A309D8;
  v28 = v5;
  v29 = v7;
  v30 = v6;
  nw_connection_read_multiple(v30, 1u, 0xFFFFFFFF, v27);

LABEL_5:
}

void ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(void **a1, id *a2, int a3, int a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 3) && ((LODWORD(v6) = a3, a4 == 40) || !a4))
  {
    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1[4] + 2);
        *buf = 136446722;
        v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
        v25 = 2114;
        v26 = v20;
        v27 = 1024;
        LODWORD(v28[0]) = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to target group", buf, 0x1Cu);
      }
    }

    if (v6)
    {
      v6 = v6;
      do
      {
        v8 = *a2;
        if (gLogDatapath == 1)
        {
          v12 = __nwlog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1[4] + 2);
            if (v8)
            {
              size = dispatch_data_get_size(v8);
            }

            else
            {
              size = 0;
            }

            *buf = 136446722;
            v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
            v25 = 2114;
            v26 = v13;
            v27 = 2048;
            v28[0] = size;
            _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes directly to target", buf, 0x20u);
          }
        }

        v9 = a1[4];
        v10 = a1[5];
        v11 = v9[3];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_359;
        completion[3] = &unk_1E6A33F88;
        v22 = v9;
        nw_connection_group_send_message(v11, v8, v10, &__block_literal_global_44658, completion);

        ++a2;
        --v6;
      }

      while (v6);
    }

    nw_masque_listener_pair_read_inner_direct(a1[4], a1[6], a1[5]);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v18 = v16[2];
      v17 = v16[3];
      *buf = 136446978;
      v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
      v25 = 2114;
      v26 = v18;
      v27 = 1024;
      LODWORD(v28[0]) = a4;
      WORD2(v28[0]) = 2112;
      *(v28 + 6) = v17;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_359(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }
}

uint64_t ___ZL38nw_masque_listener_pair_handle_headersP34NWConcrete_nw_masque_listener_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  v8 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Listener-Association"];
  if (![v9 caseInsensitiveCompare:v11])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136446722;
      v16 = "nw_masque_listener_pair_handle_listener_association_header";
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", &v15, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    if (v13)
    {
      objc_storeStrong(v8 + 16, v7);
    }
  }

  return 1;
}

void *__Block_byref_object_copy__271(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(*(a1 + 32) + 16) + 88));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_346(uint64_t a1, unsigned int a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 4)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = off_1E6A2E220[a2];
    }

    v8 = *(*(a1 + 32) + 16);
    v9 = *(*(a1 + 32) + 24);
    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v61 = v9;
    LOWORD(v62) = 2080;
    *(&v62 + 2) = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ outer connection group to %@ has transitioned to %s", buf, 0x2Au);
  }

  if (a2 - 3 < 2)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    if (*(*(a1 + 32) + 81))
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v28 = *(v26 + 88);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2112;
      v61 = v28;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Opened UDP connection group (for %@)", buf, 0x20u);
    }

    *(*(a1 + 32) + 81) = 1;
    v29 = *(a1 + 32);
    if (!*(v29 + 128))
    {
LABEL_29:
      well_known = _nw_http_response_create_well_known();
      metadata_for_response = nw_http_create_metadata_for_response(well_known);
      v38 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v38, metadata_for_response);
      nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v38, 1, &__block_literal_global_24512);

      goto LABEL_20;
    }

    port = nw_connection_group_get_port(*(v29 + 24));
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 40));
    v32 = [*(*(a1 + 32) + 128) UTF8String];
    v33 = WeakRetained;
    v34 = v33;
    if (v33)
    {
      if (v32)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_masque_server_set_listener_association_port_block_invoke;
        v61 = &unk_1E6A3D8E0;
        *&v62 = v33;
        *(&v62 + 1) = v32;
        v63 = port;
        v35 = _Block_copy(buf);
        os_unfair_lock_lock(v34 + 4);
        v35[2](v35);
        os_unfair_lock_unlock(v34 + 4);

LABEL_28:
        goto LABEL_29;
      }

      v43 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_server_set_listener_association_port";
      v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null key", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v40, &type, &v58))
      {
        goto LABEL_63;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null key", buf, 0xCu);
        }
      }

      else if (v58 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v49 = type;
        v50 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_server_set_listener_association_port";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v40)
          {
            goto LABEL_28;
          }

          goto LABEL_64;
        }

        if (v50)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v52, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_server_set_listener_association_port";
      v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null server", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v40, &type, &v58))
      {
        goto LABEL_63;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null server", buf, 0xCu);
        }
      }

      else if (v58 == 1)
      {
        v45 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v41, type);
        if (v45)
        {
          if (v47)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_server_set_listener_association_port";
            *&buf[12] = 2082;
            *&buf[14] = v45;
            _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v45);
LABEL_63:
          if (!v40)
          {
            goto LABEL_28;
          }

LABEL_64:
          free(v40);
          goto LABEL_28;
        }

        if (v47)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null server, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v51, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_63;
  }

  if (a2 != 1)
  {
    goto LABEL_20;
  }

LABEL_9:
  v10 = *(a1 + 32);
  if ((*(v10 + 81) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 16);
      v18 = *(v16 + 88);
      *buf = 136446978;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v61 = v5;
      LOWORD(v62) = 2112;
      *(&v62 + 2) = v18;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed UDP connection group with error %@ (for %@)", buf, 0x2Au);
    }

    *(*(a1 + 32) + 81) = 1;
    v11 = _nw_http_response_create_well_known();
    v19 = nw_http_create_metadata_for_response(v11);
    v20 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v20, v19);
    v21 = *(a1 + 32);
    v22 = *(v21[2] + 48);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_347;
    completion[3] = &unk_1E6A33F88;
    v57 = v21;
    nw_connection_send(v22, 0, v20, 1, completion);

    goto LABEL_16;
  }

  if ((*(v10 + 82) & 1) == 0)
  {
    *(v10 + 82) = 1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v14 = *(v12 + 88);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v61 = v14;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Closed UDP connection group (for %@)", buf, 0x20u);
    }

LABEL_16:

    v10 = *(a1 + 32);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__271;
  *&v62 = __Block_byref_object_dispose__272;
  *(&v62 + 1) = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_349;
  aBlock[3] = &unk_1E6A3D738;
  v55 = buf;
  v54 = v10;
  v23 = _Block_copy(aBlock);
  os_unfair_lock_lock((v10 + 8));
  v23[2](v23);
  os_unfair_lock_unlock((v10 + 8));

  v24 = *(*&buf[8] + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, dword_182B08EB0[a2 - 1], v5);
  }

  _Block_object_dispose(buf, 8);
LABEL_20:
}

void ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 24);
    v10 = !v9 || a4 == 0;
    if (!v10)
    {
      v11 = nw_connection_group_copy_remote_endpoint_for_message(v9, v8);
      v12 = v11;
      if (!v11 || (v13 = v11, type = _nw_endpoint_get_type(v13), v13, type != 1))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(*(a1 + 32) + 16);
          *buffer = 136446978;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
          *&buffer[12] = 2114;
          *&buffer[14] = v22;
          v49 = 2048;
          size = dispatch_data_get_size(v7);
          v51 = 2112;
          v52 = v12;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Unable to proxy %zu bytes, invalid endpoint %@", buffer, 0x2Au);
        }

        goto LABEL_35;
      }

      v45 = 0;
      v46 = 0uLL;
      v47 = 0;
      if (nw_endpoint_fillout_v4v6_address(v13, &v45) && BYTE1(v45) != 2 && BYTE1(v45) != 30)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1 + 32) + 16);
          v25 = dispatch_data_get_size(v7);
          *buffer = 136446978;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
          *&buffer[12] = 2114;
          *&buffer[14] = v24;
          v49 = 2048;
          size = v25;
          v51 = 1024;
          LODWORD(v52) = BYTE1(v45);
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Unable to proxy %zu bytes, invalid address family %u", buffer, 0x26u);
        }

        goto LABEL_35;
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v15 = *(a1 + 32);
      if (*(v15 + 48) && *(v15 + 40))
      {
        v16 = v13;
        v17 = _nw_endpoint_copy_address_string(v16);

        v18 = nw_dictionary_copy_value(*(*(a1 + 32) + 40), v17);
        if (v17)
        {
          free(v17);
        }

        if (gLogDatapath == 1)
        {
          v34 = __nwlog_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(*(a1 + 32) + 16);
            *buffer = 136446722;
            *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
            *&buffer[12] = 2114;
            *&buffer[14] = v35;
            v49 = 2112;
            size = v7;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", buffer, 0x20u);
          }
        }

        if (v18)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_350;
          applier[3] = &unk_1E6A308E8;
          v39 = v18;
          v40 = &v41;
          dispatch_data_apply(v7, applier);
        }
      }

      if (gLogDatapath == 1)
      {
        v30 = __nwlog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(*(a1 + 32) + 16);
          v32 = dispatch_data_get_size(v7);
          v10 = *(v42 + 24) == 0;
          *buffer = 136447234;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke_2";
          if (v10)
          {
            v33 = "";
          }

          else
          {
            v33 = " directly";
          }

          *&buffer[12] = 2114;
          *&buffer[14] = v31;
          v49 = 2048;
          size = v32;
          v51 = 2112;
          v52 = v13;
          v53 = 2080;
          v54 = v33;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes from %@%s to client", buffer, 0x34u);
        }
      }

      if ((v42[3] & 1) == 0)
      {
        if (BYTE1(v45) == 30)
        {
          buffer[0] = 6;
          *&buffer[1] = v46;
          *&buffer[17] = WORD1(v45);
          v26 = dispatch_data_create(buffer, 0x13uLL, 0, 0);
          concat = dispatch_data_create_concat(v26, v7);

          goto LABEL_31;
        }

        if (BYTE1(v45) == 2)
        {
          buffer[0] = 4;
          *&buffer[1] = HIDWORD(v45);
          *&buffer[5] = WORD1(v45);
          v19 = dispatch_data_create(buffer, 7uLL, 0, 0);
          concat = dispatch_data_create_concat(v19, v7);

LABEL_31:
          v7 = concat;
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 96));
      v27 = *(a1 + 32);
      v28 = v27;
      if ((v42[3] & 1) == 0)
      {
        v28 = v27[2];
      }

      v29 = v28[6];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_352;
      completion[3] = &unk_1E6A33F88;
      v37 = v27;
      nw_connection_send(v29, v7, &__block_literal_global_44658, 1, completion);

      _Block_object_dispose(&v41, 8);
LABEL_35:
    }
  }
}

void sub_18255A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  matched = nw_masque_connection_pair_match_demux_pattern(a4, a5, *(a1 + 32));
  if (matched)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return matched ^ 1u;
}

void ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_352(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 96));
}

uint64_t nw_masque_connection_pair_match_demux_pattern(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL45nw_masque_connection_pair_match_demux_patternPKhmPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke;
    v9[3] = &unk_1E6A30960;
    v9[5] = a2;
    v9[6] = a1;
    v9[4] = &v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __nw_demux_options_enumerate_patterns_block_invoke;
    v14[3] = &unk_1E6A2F0D8;
    v14[4] = v9;
    nw_protocol_options_access_handle(v5, v14);
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v7 & 1;
}

BOOL ___ZL45nw_masque_connection_pair_match_demux_patternPKhmPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = a2;
  if (a1[5] < a2 + a3)
  {
    return 1;
  }

  if (a2)
  {
    v7 = a1[6];
    if (a5)
    {
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        v11 = *a5++;
        v10 = v11;
        v12 = *a4++;
        v13 = (v8 ^ v12) & v10;
        v14 = v13 != 0;
        if (v13)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v7++;
        v16 = v17;
        v18 = *a4++;
        v19 = v16 == v18;
        v14 = v16 != v18;
        if (!v19)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_7:
    v14 = 0;
    v15 = 1;
  }

  *(*(a1[4] + 8) + 24) = v15;
  return v14;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_349(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t result, int a2)
{
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    nw_dictionary_set_value(*(*(result + 32) + 64), (*(result + 40) + 64), 0);
    v4 = *(result + 40);

    nw_masque_listener_pair_cancel(v4);
  }
}

void ___ZL49nw_masque_listener_pair_set_state_changed_handlerP34NWConcrete_nw_masque_listener_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

void nw_masque_listener_pair_cancel(NWConcrete_nw_masque_listener_pair *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 12);
    v4 = *(*(v1 + 2) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL30nw_masque_listener_pair_cancelP34NWConcrete_nw_masque_listener_pair_block_invoke;
    block[3] = &unk_1E6A3D868;
    v14 = v1;
    dispatch_group_notify(v3, v4, block);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_listener_pair_cancel";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null pair", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v6, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_masque_listener_pair_cancel";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void ___ZL30nw_masque_listener_pair_cancelP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2[2] + 48);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 16);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[3];
  if (v6)
  {
    nw_connection_group_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v9 = v2[6];
  if (v9)
  {
    nw_connection_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v12 = v2[7];
  if (v12)
  {
    _nw_array_apply(v12, &__block_literal_global_345);
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v15 = v2[5];
  v2[5] = 0;
}