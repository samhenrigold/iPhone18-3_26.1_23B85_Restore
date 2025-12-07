uint64_t nw_framer_protocol_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    LODWORD(v7) = a4;
    v9 = a1->handle;
    v10 = v9;
    if (v9)
    {
      if (*(v9 + 1))
      {
        if (((v9[606] & 0x10) != 0 || (v9[608] & 8) != 0) && (v9[607] & 0x80000000) == 0)
        {
          if ((v9[608] & 2) != 0)
          {
            output_handler = a1->output_handler;
            if (output_handler)
            {
              callbacks = output_handler->callbacks;
              if (callbacks)
              {
                get_output_frames = callbacks->get_output_frames;
                if (get_output_frames)
                {
                  v13 = get_output_frames();
LABEL_20:

                  return v13;
                }
              }
            }

            v28 = a1->output_handler;
            v29 = __nwlog_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v46 = "nw_framer_protocol_get_output_frames";
              v47 = 2080;
              v48 = v10 + 609;
              v49 = 2048;
              v50 = v28;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s %s Unable to call get_output_frames with output_handler %p", buf, 0x20u);
            }
          }

          else
          {
            if ((v9[608] & 0x40) == 0)
            {
              if (v7 >= 0x4000000)
              {
                v7 = 0x4000000;
              }

              else
              {
                v7 = v7;
              }

              frame = nw_framer_protocol_create_frame(v9, v7, nw_framer_protocol_outbound_data_finalizer, (v9 + 480), v9[606] & 1);
              frame[4] = 0;
              tqh_last = a6->tqh_last;
              frame[5] = tqh_last;
              *tqh_last = frame;
              a6->tqh_last = (frame + 4);
              if (gLogDatapath == 1)
              {
                v41 = frame;
                v42 = __nwlog_obj();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v46 = "nw_framer_protocol_get_output_frames";
                  v47 = 2080;
                  v48 = v10 + 609;
                  v49 = 1024;
                  LODWORD(v50) = v7;
                  _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %s Created 1 outbound frame with total of %u bytes", buf, 0x1Cu);
                }

                frame = v41;
              }

              v13 = 1;
              goto LABEL_20;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_19;
            }

            v29 = __nwlog_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v46 = "nw_framer_protocol_get_output_frames";
              v47 = 2080;
              v48 = v10 + 609;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %s Output is blocked, returning 0 frames", buf, 0x16u);
            }
          }
        }

LABEL_19:
        v13 = 0;
        goto LABEL_20;
      }

      v26 = __nwlog_obj();
      *buf = 136446210;
      v46 = "nw_framer_protocol_get_output_frames";
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v23, &type, &v43))
      {
LABEL_82:
        if (v23)
        {
          free(v23);
        }

        goto LABEL_19;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_81:

        goto LABEL_82;
      }

      if (v43 != 1)
      {
        v24 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_81;
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
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_81;
      }

      if (v37)
      {
        *buf = 136446466;
        v46 = "nw_framer_protocol_get_output_frames";
        v47 = 2082;
        v48 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      *buf = 136446210;
      v46 = "nw_framer_protocol_get_output_frames";
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v23, &type, &v43))
      {
        goto LABEL_82;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_81;
      }

      if (v43 != 1)
      {
        v24 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v39, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_81;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v46 = "nw_framer_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_81;
      }

      if (v35)
      {
        *buf = 136446466;
        v46 = "nw_framer_protocol_get_output_frames";
        v47 = 2082;
        v48 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_82;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_framer_protocol_get_output_frames";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol", buf, 12);

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
        v46 = "nw_framer_protocol_get_output_frames";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v20, type);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v46 = "nw_framer_protocol_get_output_frames";
          v47 = 2082;
          v48 = v30;
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_73;
      }

      if (v32)
      {
        *buf = 136446210;
        v46 = "nw_framer_protocol_get_output_frames";
        _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v46 = "nw_framer_protocol_get_output_frames";
        _os_log_impl(&dword_181A37000, v20, v38, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_73:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

void *nw_framer_protocol_create_frame(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (!v9)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_framer_protocol_create_frame";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v25, &type, &v37))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null framer", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v37 != 1)
    {
      v26 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v32)
    {
      *buf = 136446466;
      v40 = "nw_framer_protocol_create_frame";
      v41 = 2082;
      v42 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v11 = v9[46];
  if (!v11)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_framer_protocol_create_frame";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null framer->context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v25, &type, &v37))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null framer->context", buf, 0xCu);
      }

LABEL_54:

LABEL_55:
      if (v25)
      {
        free(v25);
      }

      goto LABEL_57;
    }

    if (v37 != 1)
    {
      v26 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null framer->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v33 = type;
    v34 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v40 = "nw_framer_protocol_create_frame";
        _os_log_impl(&dword_181A37000, v26, v33, "%{public}s called with null framer->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v34)
    {
      *buf = 136446466;
      v40 = "nw_framer_protocol_create_frame";
      v41 = 2082;
      v42 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v33, "%{public}s called with null framer->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_42:

    free(backtrace_string);
    goto LABEL_55;
  }

  if (a5)
  {
    external = nw_frame_create_external(0, a2, a3, v10);
    if (!external)
    {
      goto LABEL_57;
    }

    goto LABEL_22;
  }

  if (!a2)
  {
    external = nw_frame_create(0, 0, 0, a3, v10);
    if (!external)
    {
      goto LABEL_57;
    }

    goto LABEL_22;
  }

  buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(v11, a2);
  if (buffer_manager_with_context)
  {
    v14 = buffer_manager_with_context;
    sized_typed = nw_mem_buffer_allocate_sized_typed(a2, 0x100004077774924uLL, buffer_manager_with_context);
    if (sized_typed)
    {
LABEL_18:
      v20 = nw_frame_create(0, sized_typed, a2, a3, v10);
      v21 = v20;
      if (v14)
      {
        nw_frame_set_buffer_used_manager(v20, v14);
        external = v21;
        if (!v21)
        {
          goto LABEL_57;
        }
      }

      else
      {
        nw_frame_set_buffer_used_malloc(v20, 1);
        external = v21;
        if (!v21)
        {
LABEL_57:
          v22 = 0;
          goto LABEL_58;
        }
      }

LABEL_22:
      v22 = external;
      v22[2] = 0;
      v23 = *(a4 + 8);
      v22[3] = v23;
      *v23 = v22;
      *(a4 + 8) = v22 + 2;
LABEL_58:

      return v22;
    }
  }

  sized_typed = malloc_type_malloc(a2, 0x8B5BFA48uLL);
  if (sized_typed)
  {
    v14 = 0;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  *buf = 136446210;
  v40 = "nw_framer_protocol_create_frame";
  v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s strict allocator failed", buf, 12);

  result = __nwlog_should_abort(v18);
  if (!result)
  {
    free(v18);
    v14 = 0;
    sized_typed = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t nw_framer_protocol_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (*(v4 + 1))
      {
        if ((v4[152] & 2) == 0)
        {
          v4[150] = 0;
          v6 = *(v4 + 73);
          *(v4 + 73) = 0;

          v5[607] &= ~0x10u;
          *(v5 + 74) = 0;
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v62 = ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
          v63 = &unk_1E6A2C1F0;
          v65 = a2;
          v7 = v5;
          v64 = v7;
          tqh_first = a2->tqh_first;
          do
          {
            if (!tqh_first)
            {
              break;
            }

            v9 = *(tqh_first + 4);
            v10 = (v62)(v61);
            tqh_first = v9;
          }

          while ((v10 & 1) != 0);
          if (*(v7 + 51))
          {
            v5[607] |= 4u;
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v58 = ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2;
            v59 = &unk_1E6A3C100;
            v11 = v7;
            v60 = v11;
            v12 = *(v7 + 71);
            do
            {
              if (!v12)
              {
                break;
              }

              v13 = *(v12 + 32);
              v14 = (v58)(v57);
              v12 = v13;
            }

            while ((v14 & 1) != 0);
            if (*(v5 + 73) || *(v5 + 148))
            {
              if (gLogDatapath == 1)
              {
                v46 = __nwlog_obj();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  v47 = *(v5 + 149);
                  v48 = "s";
                  v49 = *(v5 + 148);
                  v69 = "nw_framer_protocol_finalize_output_frames";
                  *buf = 136447234;
                  if (v47 == 1)
                  {
                    v48 = "";
                  }

                  v70 = 2080;
                  v71 = v11 + 609;
                  v72 = 1024;
                  *v73 = v47;
                  *&v73[4] = 2080;
                  *&v73[6] = v48;
                  v74 = 1024;
                  v75 = v49;
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %s Asking to write %u outbound frame%s with %u bytes", buf, 0x2Cu);
                }
              }

              (*(*(v7 + 51) + 16))();
            }

            v5[607] &= ~4u;
          }

          *(v5 + 150) = 0;
          v15 = *(v5 + 73);
          *(v5 + 73) = 0;

          v5[607] &= ~0x10u;
          *(v5 + 74) = 0;
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v54 = ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_138;
          v55 = &unk_1E6A3C100;
          v16 = v7;
          v56 = v16;
          v17 = *(v7 + 71);
          do
          {
            if (!v17)
            {
              break;
            }

            v18 = *(v17 + 32);
            v19 = (v54)(v53);
            v17 = v18;
          }

          while ((v19 & 1) != 0);
          nw_framer_flush_output(v16, 0);

          v20 = 1;
          goto LABEL_25;
        }

        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            finalize_output_frames = callbacks->finalize_output_frames;
            if (finalize_output_frames)
            {
              v20 = finalize_output_frames();
LABEL_25:

              return v20;
            }
          }
        }

        v25 = a1->output_handler;
        v26 = __nwlog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v69 = "nw_framer_protocol_finalize_output_frames";
          v70 = 2080;
          v71 = v5 + 609;
          v72 = 2048;
          *v73 = v25;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %s Unable to call finalize_output_frames with output_handler %p", buf, 0x20u);
        }

LABEL_89:
        v20 = 0;
        goto LABEL_25;
      }

      v35 = __nwlog_obj();
      *buf = 136446210;
      v69 = "nw_framer_protocol_finalize_output_frames";
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      v67 = OS_LOG_TYPE_ERROR;
      v66 = 0;
      if (!__nwlog_fault(v32, &v67, &v66))
      {
        goto LABEL_87;
      }

      if (v67 == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v36 = v67;
        if (os_log_type_enabled(v33, v67))
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }
      }

      else if (v66 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v44 = v67;
        v45 = os_log_type_enabled(v33, v67);
        if (backtrace_string)
        {
          if (v45)
          {
            *buf = 136446466;
            v69 = "nw_framer_protocol_finalize_output_frames";
            v70 = 2082;
            v71 = backtrace_string;
            _os_log_impl(&dword_181A37000, v33, v44, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v32)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (v45)
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v44, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v52 = v67;
        if (os_log_type_enabled(v33, v67))
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v52, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v31 = __nwlog_obj();
      *buf = 136446210;
      v69 = "nw_framer_protocol_finalize_output_frames";
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null framer", buf, 12);

      v67 = OS_LOG_TYPE_ERROR;
      v66 = 0;
      if (!__nwlog_fault(v32, &v67, &v66))
      {
        goto LABEL_87;
      }

      if (v67 == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = v67;
        if (os_log_type_enabled(v33, v67))
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v66 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v41 = v67;
        v42 = os_log_type_enabled(v33, v67);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v69 = "nw_framer_protocol_finalize_output_frames";
            v70 = 2082;
            v71 = v40;
            _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
LABEL_87:
          if (!v32)
          {
            goto LABEL_89;
          }

LABEL_88:
          free(v32);
          goto LABEL_89;
        }

        if (v42)
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v51 = v67;
        if (os_log_type_enabled(v33, v67))
        {
          *buf = 136446210;
          v69 = "nw_framer_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v33, v51, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_87;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v69 = "nw_framer_protocol_finalize_output_frames";
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null protocol", buf, 12);

  v67 = OS_LOG_TYPE_ERROR;
  v66 = 0;
  if (__nwlog_fault(v28, &v67, &v66))
  {
    if (v67 == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = v67;
      if (os_log_type_enabled(v29, v67))
      {
        *buf = 136446210;
        v69 = "nw_framer_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v66 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v38 = v67;
      v39 = os_log_type_enabled(v29, v67);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v69 = "nw_framer_protocol_finalize_output_frames";
          v70 = 2082;
          v71 = v37;
          _os_log_impl(&dword_181A37000, v29, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_78;
      }

      if (v39)
      {
        *buf = 136446210;
        v69 = "nw_framer_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v29, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v50 = v67;
      if (os_log_type_enabled(v29, v67))
      {
        *buf = 136446210;
        v69 = "nw_framer_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v29, v50, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_78:
  if (v28)
  {
    free(v28);
  }

  return 0;
}

uint64_t nw_frame_is_metadata_complete(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v13 = "__nw_frame_is_metadata_complete";
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
      v13 = "__nw_frame_is_metadata_complete";
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
          v13 = "__nw_frame_is_metadata_complete";
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
      v13 = "__nw_frame_is_metadata_complete";
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
      v13 = "__nw_frame_is_metadata_complete";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_18;
  }

  v1 = *(a1 + 64);
  if (v1)
  {
    return (*(v1 + 66) >> 6) & 1;
  }

  return 0;
}

uint64_t sub_181BE7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

BOOL _nw_array_is_empty(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v3 = a1;
  swift_beginAccess();
  v4 = *(*&a1[v2] + 24);

  return v4 == 0;
}

uint64_t sub_181BE7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for NWProtocolFramer.Message();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = *(a6 + 40);
  swift_unknownObjectRetain();
  v14(a7, v13, a3, a4, ObjectType, a6);
}

double sub_181BE7FC8@<D0>(uint64_t (*a2)(uint64_t, uint64_t)@<X2>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = sub_182AD3048();
  v8 = a2(v6, v7 + 32);

  if (v8)
  {
    sub_182AD3AA8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t __nw_framer_message_copy_object_value_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = nw_dictionary_copy_value(v2, *(a1 + 40));
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

BOOL nw_framer_write_output_no_copy(nw_framer_t framer, size_t output_length)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = v3;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_write_output_no_copy";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null framer", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v45[0] = 0;
    if (__nwlog_fault(v28, type, v45))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_write_output_no_copy";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v45[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v32 = type[0];
        v33 = os_log_type_enabled(v29, type[0]);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_framer_write_output_no_copy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v33)
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_write_output_no_copy";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v34 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_framer_write_output_no_copy";
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v28)
    {
      free(v28);
    }

    goto LABEL_6;
  }

  nw_context_assert_queue(v3[46].isa);
  if ((HIBYTE(v4[75].isa) & 4) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_framer_write_output_no_copy";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Cannot write output when not in output handler", buf, 0xCu);
    }

LABEL_6:
    v6 = 0;
    goto LABEL_30;
  }

  *type = 0;
  v42 = type;
  v43 = 0x2020000000;
  v44 = output_length;
  if (output_length)
  {
    if (LODWORD(v4[75].isa) + output_length <= LODWORD(v4[74].isa))
    {
      isa = v4[69].isa;
      if (!isa)
      {
        v12 = _nw_array_create();
        v13 = v4[69].isa;
        v4[69].isa = v12;

        isa = v4[69].isa;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v52 = __Block_byref_object_copy__5122;
      v53 = __Block_byref_object_dispose__5123;
      v54 = 0;
      if (isa)
      {
        count = _nw_array_get_count(isa);
        if (count)
        {
          v15 = nw_array_remove_object_at_index(v4[69].isa, count - 1);
          v16 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v15;
        }
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v36 = __nw_framer_write_output_no_copy_block_invoke;
      v37 = &unk_1E6A2C150;
      v17 = v4;
      v38 = v17;
      v39 = type;
      v40 = buf;
      v18 = v4[71].isa;
      do
      {
        if (!v18)
        {
          break;
        }

        v19 = *(v18 + 4);
        v20 = v36(v35);
        v18 = v19;
      }

      while ((v20 & 1) != 0);
      v21 = *(*&buf[8] + 40);
      if (v21)
      {
        v22 = v4[69].isa;
        if (v22)
        {
          _nw_array_append(v22, v21);
        }
      }

      v23 = *(v42 + 3);
      v6 = v23 == 0;
      if (v23)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(v42 + 3);
          *v45 = 136446722;
          v46 = "nw_framer_write_output_no_copy";
          v47 = 2080;
          v48 = v17 + 609;
          v49 = 2048;
          v50 = v25;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %s Failed to write entire length, still have %zu bytes", v45, 0x20u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(v42 + 3);
        v9 = v4[75].isa;
        v10 = v4[74].isa;
        *buf = 136447234;
        *&buf[4] = "nw_framer_write_output_no_copy";
        *&buf[12] = 2080;
        *&buf[14] = v4 + 609;
        *&buf[22] = 2048;
        v52 = v8;
        LOWORD(v53) = 1024;
        *(&v53 + 2) = v9;
        HIWORD(v53) = 1024;
        LODWORD(v54) = v10;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %s Cannot write %zu bytes, already have %u/%u", buf, 0x2Cu);
      }

      v6 = 0;
    }
  }

  else
  {
    nw_framer_flush_output(v4, 0);
    v6 = 1;
  }

  _Block_object_dispose(type, 8);
LABEL_30:

  return v6;
}

void sub_181BE86D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose((v21 - 112), 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

nw_protocol_metadata_t nw_content_context_copy_protocol_metadata(nw_content_context_t context, nw_protocol_definition_t protocol)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = context;
  v4 = protocol;
  if (!v3)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_content_context_copy_protocol_metadata";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_content_context_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null context", buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_content_context_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v30 = "nw_content_context_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v25)
      {
        *buf = 136446466;
        v30 = "nw_content_context_copy_protocol_metadata";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v13)
    {
LABEL_38:
      v5 = 0;
      goto LABEL_39;
    }

LABEL_37:
    free(v13);
    goto LABEL_38;
  }

  v5 = 0;
  if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
  {
    os_unfair_lock_lock(&v3[14]);
    v6 = 0;
    isa = v3[11].isa;
    if (!isa)
    {
      goto LABEL_8;
    }

LABEL_7:
    isa = _nw_array_get_count(isa);
    while (1)
    {
LABEL_8:
      if (v6 >= isa)
      {
        os_unfair_lock_unlock(&v3[14]);
        v10 = nw_content_context_copy_connection(v3);
        v11 = v10;
        if (v10)
        {
          v5 = nw_connection_copy_protocol_metadata(v10, v4);
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_39;
      }

      v8 = v3[11].isa;
      if (!v8)
      {
        break;
      }

      v9 = _nw_array_copy_object_at_index(v8, v6);
      v5 = v9;
      if (!v9)
      {
        break;
      }

      if (nw_protocol_metadata_matches_definition(v9, v4))
      {
        os_unfair_lock_unlock(&v3[14]);
        goto LABEL_39;
      }

      ++v6;
      isa = v3[11].isa;
      if (isa)
      {
        goto LABEL_7;
      }
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_content_context_copy_protocol_metadata";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null match_protocol", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v13, &type, &v27))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v30 = "nw_content_context_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null match_protocol", buf, 0xCu);
      }

      goto LABEL_35;
    }

    if (v27 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_content_context_copy_protocol_metadata";
          v31 = 2082;
          v32 = v16;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null match_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        if (!v13)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_content_context_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null match_protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v30 = "nw_content_context_copy_protocol_metadata";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null match_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_35;
  }

LABEL_39:

  return v5;
}

uint64_t nw_content_context_copy_connection(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v1 + 28);
      if ((v2[29]._os_unfair_lock_opaque & 0x100000) != 0 && (v4 = *&v2[26]._os_unfair_lock_opaque) != 0 && _nw_array_get_count(v4) && (v5 = *&v2[26]._os_unfair_lock_opaque) != 0)
      {
        v3 = _nw_array_get_object_at_index(v5, 0);
      }

      else
      {
        v3 = 0;
      }

      os_unfair_lock_unlock(v2 + 28);
    }

    goto LABEL_13;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_content_context_copy_connection";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null context", buf, 12);

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
        v18 = "nw_content_context_copy_connection";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context", buf, 0xCu);
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
          v18 = "nw_content_context_copy_connection";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_content_context_copy_connection";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_content_context_copy_connection";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v8)
  {
    free(v8);
  }

  v3 = 0;
LABEL_13:

  return v3;
}

void nw_content_context_foreach_protocol_metadata(nw_content_context_t context, void *foreach_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = context;
  v4 = foreach_block;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_content_context_foreach_protocol_metadata";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_content_context_foreach_protocol_metadata";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_content_context_foreach_protocol_metadata";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v9)
        {
          goto LABEL_10;
        }

LABEL_45:
        free(v9);
        goto LABEL_10;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_content_context_foreach_protocol_metadata";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_content_context_foreach_protocol_metadata";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v4)
  {
    if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(&v3[14]);
      v6 = v3[11].isa;
      os_unfair_lock_unlock(&v3[14]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_content_context_foreach_protocol_metadata_block_invoke;
      aBlock[3] = &unk_1E6A3CD30;
      v7 = v5;
      v23 = v7;
      if (v6)
      {
        _nw_array_apply(v6, aBlock);
        v7 = v23;
      }
    }

    goto LABEL_10;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_content_context_foreach_protocol_metadata";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null foreach_block", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_44;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_content_context_foreach_protocol_metadata";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null foreach_block", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_content_context_foreach_protocol_metadata";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null foreach_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_content_context_foreach_protocol_metadata";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null foreach_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_content_context_foreach_protocol_metadata";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null foreach_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_45;
  }

LABEL_10:
}

uint64_t __nw_content_context_foreach_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = nw_protocol_metadata_copy_definition(v4);
  (*(v5 + 16))(v5, v6, v4);

  return 1;
}

uint64_t ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke_88(uint64_t a1, uint64_t a2)
{
  nw_frame_finalize(a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

uint64_t ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(a1 + 40) + 8);
  v5 = v3 + 4;
  v6 = v3[4];
  v7 = v3[5];
  if (v6)
  {
    v4 = (v6 + 40);
  }

  *v4 = v7;
  *v7 = v6;
  *v5 = 0;
  v3[5] = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 576);
  v3[5] = v9;
  *v9 = v3;
  *(v8 + 576) = v5;

  return 1;
}

uint64_t ___ZL41nw_framer_protocol_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_frame_copy_metadata_for_protocol(v3, *(*(a1 + 32) + 8));
  is_metadata_complete = nw_frame_is_metadata_complete(v3);
  v6 = nw_frame_unclaimed_length(v3);
  *(*(a1 + 32) + 607) = *(*(a1 + 32) + 607) & 0xDF | (v3[186] >> 2) & 0x20;
  v7 = *(a1 + 32);
  v8 = *(v7 + 584);
  if (v8)
  {
    v9 = v4 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (gLogDatapath == 1)
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = (v18 + 609);
        v20 = "";
        v21 = *(v18 + 596);
        if (!v18)
        {
          v19 = "";
        }

        v22 = *(v18 + 592);
        v34 = "nw_framer_protocol_finalize_output_frames_block_invoke_2";
        v33 = 136447234;
        if (v21 != 1)
        {
          v20 = "s";
        }

        v35 = 2080;
        v36 = v19;
        v37 = 1024;
        v38 = v21;
        v39 = 2080;
        v40 = v20;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %s Asking to write %u outbound frame%s with %u bytes", &v33, 0x2Cu);
      }

      v7 = *(a1 + 32);
    }

    (*(*(v7 + 408) + 16))(*(v7 + 408), v7);
    v10 = a1 + 32;
    *(*(a1 + 32) + 600) = 0;
    v11 = *(a1 + 32);
    v12 = *(v11 + 584);
    *(v11 + 584) = 0;

    *(*v10 + 592) = 0;
    *(*v10 + 607) &= ~0x10u;
    *(*v10 + 596) = 0;
    v7 = *(a1 + 32);
  }

  objc_storeStrong((v7 + 584), v4);
  *(*(a1 + 32) + 592) += v6;
  if (is_metadata_complete)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  *(*(a1 + 32) + 607) = *(*(a1 + 32) + 607) & 0xEF | v13;
  ++*(*(a1 + 32) + 596);
  v14 = *(a1 + 32);
  if ((*(v14 + 607) & 0x10) != 0)
  {
    if (gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 32);
        v25 = (v24 + 609);
        v26 = "";
        v27 = *(v24 + 596);
        if (!v24)
        {
          v25 = "";
        }

        v28 = *(v24 + 592);
        v34 = "nw_framer_protocol_finalize_output_frames_block_invoke";
        v33 = 136447234;
        if (v27 != 1)
        {
          v26 = "s";
        }

        v35 = 2080;
        v36 = v25;
        v37 = 1024;
        v38 = v27;
        v39 = 2080;
        v40 = v26;
        v41 = 1024;
        v42 = v28;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %s Asking to write complete %u outbound frame%s with %u bytes", &v33, 0x2Cu);
      }

      v14 = *(a1 + 32);
      v15 = *(v14 + 552);
      if (v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *(v14 + 552);
      if (v15)
      {
LABEL_13:
        v16 = !_nw_array_is_empty(v15);
        v14 = *(a1 + 32);
        goto LABEL_29;
      }
    }

    v16 = 0;
LABEL_29:
    (*(*(v14 + 408) + 16))(*(v14 + 408), v14);
    if (!v16 && (*(*(a1 + 32) + 606) & 2) != 0 && (*(v3 + 44) || nw_frame_get_ecn_flag(v3) || nw_frame_get_expire_time(v3) || nw_frame_get_packet_id(v3)))
    {
      nw_framer_flush_output(*(a1 + 32), v3);
    }

    v30 = *(a1 + 32);
    v29 = a1 + 32;
    *(v30 + 600) = 0;
    v31 = *(*v29 + 584);
    *(*v29 + 584) = 0;

    *(*v29 + 592) = 0;
    *(*v29 + 607) &= ~0x10u;
    *(*v29 + 596) = 0;
  }

  return 1;
}

id nw_framer_message_copy_object_value(nw_framer_message_t message, const char *key)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = message;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_message_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null message", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null message", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
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
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v17)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_message_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!nw_protocol_metadata_is_framer_message(v3))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_message_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }
    }

    else if (v31 == 1)
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
          *&buf[4] = "nw_framer_message_copy_object_value";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
LABEL_57:
        if (!v8)
        {
LABEL_59:
          v5 = 0;
          goto LABEL_7;
        }

LABEL_58:
        free(v8);
        goto LABEL_59;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_message_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null key", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
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
        *&buf[4] = "nw_framer_message_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_message_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_37:

    free(backtrace_string);
    if (!v8)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__5122;
  v35 = __Block_byref_object_dispose__5123;
  v36 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __nw_framer_message_copy_object_value_block_invoke;
  v28 = &unk_1E6A3AB40;
  v29 = buf;
  v30 = key;
  if (_nw_protocol_metadata_get_handle())
  {
    (v27)(v26);
  }

  v5 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_7:
  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NWProtocolFramer.Instance.writeOutputNoCopy(length:)(Swift::Int length)
{
  if (!nw_framer_write_output_no_copy(*(v1 + 16), length))
  {
    sub_181F4B3B8();
    swift_allocError();
    *v2 = 22;
    *(v2 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t nw_framer_flush_output(void *a1, void *a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v70 = a2;
  if (!v3)
  {
    v34 = __nwlog_obj();
    *v92 = 136446210;
    *&v92[4] = "nw_framer_flush_output";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null framer", v92, 12);

    v82[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (!__nwlog_fault(v35, v82, buf))
    {
      goto LABEL_125;
    }

    if (v82[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = v82[0];
      if (os_log_type_enabled(v36, v82[0]))
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null framer", v92, 0xCu);
      }

      goto LABEL_124;
    }

    if (buf[0] != 1)
    {
      v36 = __nwlog_obj();
      v55 = v82[0];
      if (os_log_type_enabled(v36, v82[0]))
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v55, "%{public}s called with null framer, backtrace limit exceeded", v92, 0xCu);
      }

      goto LABEL_124;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v47 = v82[0];
    v48 = os_log_type_enabled(v36, v82[0]);
    if (!backtrace_string)
    {
      if (v48)
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null framer, no backtrace", v92, 0xCu);
      }

      goto LABEL_124;
    }

    if (v48)
    {
      *v92 = 136446466;
      *&v92[4] = "nw_framer_flush_output";
      *&v92[12] = 2082;
      *&v92[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null framer, dumping backtrace:%{public}s", v92, 0x16u);
    }

    goto LABEL_100;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    v38 = __nwlog_obj();
    *v92 = 136446210;
    *&v92[4] = "nw_framer_flush_output";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null output_handler", v92, 12);

    v82[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (!__nwlog_fault(v35, v82, buf))
    {
      goto LABEL_125;
    }

    if (v82[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v39 = v82[0];
      if (os_log_type_enabled(v36, v82[0]))
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v39, "%{public}s called with null output_handler", v92, 0xCu);
      }

LABEL_124:

LABEL_125:
      if (v35)
      {
        free(v35);
      }

      goto LABEL_63;
    }

    if (buf[0] != 1)
    {
      v36 = __nwlog_obj();
      v56 = v82[0];
      if (os_log_type_enabled(v36, v82[0]))
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v56, "%{public}s called with null output_handler, backtrace limit exceeded", v92, 0xCu);
      }

      goto LABEL_124;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v49 = v82[0];
    v50 = os_log_type_enabled(v36, v82[0]);
    if (!backtrace_string)
    {
      if (v50)
      {
        *v92 = 136446210;
        *&v92[4] = "nw_framer_flush_output";
        _os_log_impl(&dword_181A37000, v36, v49, "%{public}s called with null output_handler, no backtrace", v92, 0xCu);
      }

      goto LABEL_124;
    }

    if (v50)
    {
      *v92 = 136446466;
      *&v92[4] = "nw_framer_flush_output";
      *&v92[12] = 2082;
      *&v92[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v49, "%{public}s called with null output_handler, dumping backtrace:%{public}s", v92, 0x16u);
    }

LABEL_100:

    free(backtrace_string);
    goto LABEL_125;
  }

  while (1)
  {
    v5 = *(v3 + 69);
    if (!v5)
    {
      goto LABEL_64;
    }

    if (!_nw_array_get_count(v5))
    {
      goto LABEL_61;
    }

    *v92 = 0;
    *&v92[8] = v92;
    *&v92[16] = 0x3032000000;
    v93 = __Block_byref_object_copy__5122;
    v94 = __Block_byref_object_dispose__5123;
    v95 = nw_array_remove_object_at_index(*(v3 + 69), 0);
    *v82 = 0;
    v83 = v82;
    v84 = 0x2020000000;
    size = dispatch_data_get_size(*(*&v92[8] + 40));
    v85 = size;
    v81[0] = 0;
    v81[1] = v81;
    if ((v3[606] & 2) != 0)
    {
      v7 = size;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(v4 + 24);
    if (v8 && (v9 = *(v8 + 88)) != 0)
    {
      v10 = v9(v4, v3 + 288, v7, size, 1, v81);
    }

    else
    {
      v10 = 0;
    }

    if (gLogDatapath == 1)
    {
      v69 = __nwlog_obj();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v87 = "nw_framer_flush_output";
        v88 = 2080;
        v89 = v3 + 609;
        v90 = 1024;
        LODWORD(v91) = v10;
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %s Got %u output frames", buf, 0x1Cu);
      }
    }

    v3[608] = v3[608] & 0xBF | ((v10 == 0) << 6);
    if (!v10)
    {
      break;
    }

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v74 = ___ZL22nw_framer_flush_outputP20NWConcrete_nw_framerPU22objcproto11OS_nw_frame8NSObject_block_invoke;
    v75 = &unk_1E6A2DD90;
    v78 = v92;
    v80 = v81;
    v76 = v3;
    v79 = v82;
    v77 = v70;
    v11 = v81[0];
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *(v11 + 32);
      v13 = v74(v73);
      v11 = v12;
    }

    while ((v13 & 1) != 0);
    v14 = *(*&v92[8] + 40);
    if (v14)
    {
      v15 = *(v3 + 69);
      if (v15)
      {
        _nw_array_prepend(v15, v14);
      }
    }

    v16 = v81[0];
    if (!v81[0])
    {
      goto LABEL_23;
    }

    v17 = *(v4 + 24);
    if (!v17 || (v18 = *(v17 + 96)) == 0)
    {
      v19 = __nwlog_obj();
      log = v19;
      v20 = *(v4 + 16);
      if (!v20)
      {
        v20 = "invalid";
      }

      *buf = 136446466;
      v87 = "nw_framer_flush_output";
      v88 = 2082;
      v89 = v20;
      LODWORD(v60) = 22;
      v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", buf, v60);

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v68, &type, &v71))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          loga = __nwlog_obj();
          v62 = type;
          if (os_log_type_enabled(loga, type))
          {
            v21 = *(v4 + 16);
            if (!v21)
            {
              v21 = "invalid";
            }

            *buf = 136446466;
            v87 = "nw_framer_flush_output";
            v88 = 2082;
            v89 = v21;
            _os_log_impl(&dword_181A37000, loga, v62, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", buf, 0x16u);
          }

          goto LABEL_34;
        }

        if (v71 == 1)
        {
          logb = __nw_create_backtrace_string();
          v63 = __nwlog_obj();
          v61 = type;
          v22 = os_log_type_enabled(v63, type);
          if (logb)
          {
            if (v22)
            {
              v23 = *(v4 + 16);
              if (!v23)
              {
                v23 = "invalid";
              }

              *buf = 136446722;
              v87 = "nw_framer_flush_output";
              v88 = 2082;
              v89 = v23;
              v90 = 2082;
              v91 = logb;
              _os_log_impl(&dword_181A37000, v63, v61, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(logb);
          }

          else
          {
            if (v22)
            {
              v25 = *(v4 + 16);
              if (!v25)
              {
                v25 = "invalid";
              }

              *buf = 136446466;
              v87 = "nw_framer_flush_output";
              v88 = 2082;
              v89 = v25;
              _os_log_impl(&dword_181A37000, v63, v61, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace", buf, 0x16u);
            }
          }
        }

        else
        {
          loga = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(loga, type))
          {
            v24 = *(v4 + 16);
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446466;
            v87 = "nw_framer_flush_output";
            v88 = 2082;
            v89 = v24;
            _os_log_impl(&dword_181A37000, loga, v64, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x16u);
          }

LABEL_34:
        }
      }

      if (v68)
      {
        free(v68);
      }

      goto LABEL_23;
    }

    v18(v4, v81);
LABEL_23:

    _Block_object_dispose(v82, 8);
    _Block_object_dispose(v92, 8);

    if (!v16)
    {
      goto LABEL_61;
    }
  }

  v26 = *(v3 + 69);
  if (v26)
  {
    v27 = *(*&v92[8] + 40);
    if (v27)
    {
      _nw_array_prepend(v26, v27);
    }
  }

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v92, 8);

LABEL_61:
  v28 = *(v3 + 69);
  if (!v28 || !_nw_array_get_count(v28))
  {
LABEL_64:
    if ((v3[607] & 0x40) == 0)
    {
LABEL_70:
      v29 = 1;
      goto LABEL_71;
    }

    v3[607] &= ~0x40u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v92 = 136446466;
      *&v92[4] = "nw_framer_flush_output";
      *&v92[12] = 2080;
      *&v92[14] = v3 + 609;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %s Delivering delayed output_finished", v92, 0x16u);
    }

    v31 = *(v4 + 24);
    if (v31)
    {
      v32 = *(v31 + 192);
      if (v32)
      {
        v32(v4, v3 + 288);
        goto LABEL_70;
      }
    }

    v40 = __nwlog_obj();
    v41 = *(v4 + 16);
    if (!v41)
    {
      v41 = "invalid";
    }

    *v92 = 136446466;
    *&v92[4] = "nw_framer_flush_output";
    *&v92[12] = 2082;
    *&v92[14] = v41;
    LODWORD(v60) = 22;
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s protocol %{public}s has invalid output_finished callback", v92, v60);

    v82[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v42, v82, buf))
    {
      if (v82[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v82[0];
        if (os_log_type_enabled(v43, v82[0]))
        {
          v45 = *(v4 + 16);
          if (!v45)
          {
            v45 = "invalid";
          }

          *v92 = 136446466;
          *&v92[4] = "nw_framer_flush_output";
          *&v92[12] = 2082;
          *&v92[14] = v45;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s protocol %{public}s has invalid output_finished callback", v92, 0x16u);
        }
      }

      else if (buf[0] == 1)
      {
        v51 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v52 = v82[0];
        v53 = os_log_type_enabled(v43, v82[0]);
        if (v51)
        {
          if (v53)
          {
            v54 = *(v4 + 16);
            if (!v54)
            {
              v54 = "invalid";
            }

            *v92 = 136446722;
            *&v92[4] = "nw_framer_flush_output";
            *&v92[12] = 2082;
            *&v92[14] = v54;
            *&v92[22] = 2082;
            v93 = v51;
            _os_log_impl(&dword_181A37000, v43, v52, "%{public}s protocol %{public}s has invalid output_finished callback, dumping backtrace:%{public}s", v92, 0x20u);
          }

          free(v51);
          goto LABEL_132;
        }

        if (v53)
        {
          v59 = *(v4 + 16);
          if (!v59)
          {
            v59 = "invalid";
          }

          *v92 = 136446466;
          *&v92[4] = "nw_framer_flush_output";
          *&v92[12] = 2082;
          *&v92[14] = v59;
          _os_log_impl(&dword_181A37000, v43, v52, "%{public}s protocol %{public}s has invalid output_finished callback, no backtrace", v92, 0x16u);
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v57 = v82[0];
        if (os_log_type_enabled(v43, v82[0]))
        {
          v58 = *(v4 + 16);
          if (!v58)
          {
            v58 = "invalid";
          }

          *v92 = 136446466;
          *&v92[4] = "nw_framer_flush_output";
          *&v92[12] = 2082;
          *&v92[14] = v58;
          _os_log_impl(&dword_181A37000, v43, v57, "%{public}s protocol %{public}s has invalid output_finished callback, backtrace limit exceeded", v92, 0x16u);
        }
      }
    }

LABEL_132:
    if (v42)
    {
      free(v42);
    }

    goto LABEL_70;
  }

LABEL_63:
  v29 = 0;
LABEL_71:

  return v29;
}

void sub_181BEB130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 192), 8);

  _Unwind_Resume(a1);
}

void nw_framer_protocol_outbound_data_finalizer(void *a1, int a2, char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    if (gLogDatapath)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = "";
        if (a3)
        {
          v7 = a3 + 609;
        }

        v10 = 136446466;
        v11 = "nw_framer_protocol_outbound_data_finalizer";
        v12 = 2080;
        v13 = v7;
        v8 = "%{public}s %s Finalizing outbound frame (success)";
LABEL_13:
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, v8, &v10, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (gLogDatapath)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = "";
      if (a3)
      {
        v9 = a3 + 609;
      }

      v10 = 136446466;
      v11 = "nw_framer_protocol_outbound_data_finalizer";
      v12 = 2080;
      v13 = v9;
      v8 = "%{public}s %s Finalizing outbound frame (drop)";
      goto LABEL_13;
    }

LABEL_14:
  }

  nw_framer_protocol_finalizer(v5, (a3 + 480));
}

uint64_t ProtocolMetadata.__deallocating_deinit()
{
  ProtocolMetadata.deinit();

  return swift_deallocClassInstance();
}

uint64_t *ProtocolMetadata.deinit()
{
  sub_181F48350(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(*v0 + 120);
  swift_getAssociatedTypeWitness();
  v2 = sub_182AD39B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_181BEB48C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    metadata_deallocator = nw_protocol_definition_get_metadata_deallocator(*(v0 + 16));
    v3 = *(v0 + 16);
    if (metadata_deallocator)
    {
      metadata_deallocator(v3, v1);
    }

    else
    {
      metadata_finalizer = nw_protocol_definition_get_metadata_finalizer(v3);
      if (metadata_finalizer)
      {
        metadata_finalizer(*(v0 + 16), v1);
        MEMORY[0x1865DF520](v1, -1, -1);
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t nw_protocol_definition_get_metadata_deallocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[19];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_metadata_deallocator";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null definition", buf, 12);

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
        v15 = "nw_protocol_definition_get_metadata_deallocator";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_metadata_deallocator";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_metadata_deallocator";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_metadata_deallocator";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void *nw_frame_copy_metadata_for_protocol(uint64_t a1, NSObject *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "__nw_frame_copy_metadata_for_protocol";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null frame", buf, 12);
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
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null frame";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v14 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null frame, no backtrace";
      goto LABEL_39;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v21 = 2082;
      v22 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
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

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "__nw_frame_copy_metadata_for_protocol";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null definition", buf, 12);
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
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null definition";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null definition, backtrace limit exceeded";
      goto LABEL_39;
    }

    v15 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v16 = os_log_type_enabled(v9, type);
    if (v15)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "__nw_frame_copy_metadata_for_protocol";
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v15);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_41;
    }

    if (v16)
    {
      *buf = 136446210;
      v20 = "__nw_frame_copy_metadata_for_protocol";
      v11 = "%{public}s called with null definition, no backtrace";
LABEL_39:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = v3[6];
    if (v5)
    {
      if (_nw_protocol_metadata_matches_definition(v5, a2))
      {
        break;
      }
    }

    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  v6 = v3[6];
  if (!v6)
  {
    return 0;
  }

  return os_retain(v6);
}

void nw_framer_protocol_finalizer(void *a1, uint64_t a2)
{
  v9 = a1;
  if (nw_frame_buffer_used_malloc(v9))
  {
    buffer = nw_frame_get_buffer(v9, 0);
    if (buffer)
    {
      free(buffer);
    }
  }

  else if (nw_frame_buffer_used_manager(v9))
  {
    manager = nw_frame_buffer_get_manager(v9);
    v5 = nw_frame_get_buffer(v9, 0);
    nw_mem_buffer_free(manager, v5);
  }

  else if (nw_frame_uses_external_data(v9))
  {
    nw_frame_set_external_data(v9, 0, 0);
  }

  nw_frame_reset(v9, 0, 0, 0, 0);
  v6 = (a2 + 8);
  v7 = v9[2];
  v8 = v9[3];
  if (v7)
  {
    v6 = (v7 + 24);
  }

  *v6 = v8;
  *v8 = v7;
  v9[2] = 0;
  v9[3] = 0;
}

void nw_framer_deallocate_metadata(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___ZL29nw_framer_deallocate_metadataPU36objcproto25OS_nw_protocol_definition8NSObjectPv_block_invoke;
    applier[3] = &__block_descriptor_40_e37_B24__0r_8__NSObject_OS_xpc_object__16l;
    applier[4] = a2;
    xpc_dictionary_apply(v3, applier);
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  *a2 = 0;

  v5 = a2[1];
  a2[1] = 0;

  v6 = a2[2];
  a2[2] = 0;

  v7 = a2[3];
  a2[3] = 0;

  free(a2);
}

uint64_t __nw_dictionary_dispose_block_invoke(uint64_t a1)
{
  pointer = xpc_dictionary_get_pointer();
  if (pointer)
  {
    os_release(pointer);
  }

  return 1;
}

uint64_t sub_181BEBDEC(uint64_t a1, uint64_t (*a2)(int *))
{
  if (a1)
  {
    v3 = swift_unknownObjectRetain();
    NWError.init(_:)(v3, &v6);
    v4 = v6 | (v7 << 32);
  }

  else
  {
    v4 = 0xFF00000000;
  }

  v8 = v4;
  v9 = BYTE4(v4);
  return a2(&v8);
}

uint64_t nw_frame_uses_external_data(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 204) >> 1) & 1;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "__nw_frame_uses_external_data";
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
        v12 = "__nw_frame_uses_external_data";
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
          v12 = "__nw_frame_uses_external_data";
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
        v12 = "__nw_frame_uses_external_data";
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
        v12 = "__nw_frame_uses_external_data";
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

void NWConnection.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 96));
  sub_181D900AC(v4 + 16);
  os_unfair_lock_unlock((v4 + 96));
  os_unfair_lock_lock((v4 + 96));
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181C571A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5, v6);
  os_unfair_lock_unlock((v4 + 96));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181C4DBD0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10, v9);
  sub_181AA39C0(v10, v9);
  NWConnection.stateUpdateHandler.setter(v10, v9);
  sub_181A554F4(v10, v9);
  sub_181A554F4(v10, v9);
  v11 = *(v2 + 16);
  nw_connection_set_queue(v11, a1);
  nw_connection_start(v11);
}

uint64_t sub_181BEC22C()
{

  return swift_deallocObject();
}

uint64_t nw_protocol_http2_transport_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v109 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (!__nwlog_fault(v59, type, &v93))
    {
      goto LABEL_169;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null protocol";
      goto LABEL_168;
    }

    if (v93 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_168;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type[0];
    v79 = os_log_type_enabled(v60, type[0]);
    if (!backtrace_string)
    {
      if (!v79)
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_168;
    }

    if (!v79)
    {
      goto LABEL_151;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v80 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_150:
    _os_log_impl(&dword_181A37000, v60, v61, v80, buf, 0x16u);
    goto LABEL_151;
  }

  handle = a1->handle;
  if (!handle)
  {
    v63 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s called with null http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (!__nwlog_fault(v59, type, &v93))
    {
      goto LABEL_169;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null http2_transport";
      goto LABEL_168;
    }

    if (v93 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_168;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type[0];
    v81 = os_log_type_enabled(v60, type[0]);
    if (!backtrace_string)
    {
      if (!v81)
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null http2_transport, no backtrace";
      goto LABEL_168;
    }

    if (!v81)
    {
      goto LABEL_151;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v80 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
    goto LABEL_150;
  }

  if (!a2)
  {
    v64 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (!__nwlog_fault(v59, type, &v93))
    {
      goto LABEL_169;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null input_protocol";
      goto LABEL_168;
    }

    if (v93 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_168;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type[0];
    v82 = os_log_type_enabled(v60, type[0]);
    if (!backtrace_string)
    {
      if (!v82)
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null input_protocol, no backtrace";
      goto LABEL_168;
    }

    if (!v82)
    {
      goto LABEL_151;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v80 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    goto LABEL_150;
  }

  if (!a6)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null return_array", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (!__nwlog_fault(v59, type, &v93))
    {
      goto LABEL_169;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null return_array";
      goto LABEL_168;
    }

    if (v93 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (!os_log_type_enabled(v60, type[0]))
      {
        goto LABEL_169;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      v62 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_168;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type[0];
    v83 = os_log_type_enabled(v60, type[0]);
    if (backtrace_string)
    {
      if (v83)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v80 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_150;
      }

LABEL_151:
      free(backtrace_string);
      goto LABEL_169;
    }

    if (!v83)
    {
      goto LABEL_169;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    v62 = "%{public}s called with null return_array, no backtrace";
LABEL_168:
    _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
LABEL_169:
    if (v59)
    {
      free(v59);
    }

    return 0;
  }

  if (gLogDatapath == 1)
  {
    v66 = a6;
    v67 = a2;
    v68 = a4;
    v69 = __nwlog_obj();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
    a4 = v68;
    a2 = v67;
    a6 = v66;
    if (v70)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a4 = v68;
      a2 = v67;
      a6 = v66;
    }
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  if (!a4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    v13 = "%{public}s %{public}s get_output_frames called with maximum bytes 0, returning 0 frames";
LABEL_19:
    v14 = v17;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
    goto LABEL_24;
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    v13 = "%{public}s %{public}s cannot get output frames for protocol without proper output handler context";
    goto LABEL_19;
  }

  v8 = a2;
  v9 = output_handler_context[4];
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    *&buf[22] = 1042;
    *v106 = 16;
    *&v106[4] = 2098;
    *&v106[6] = v8;
    v13 = "%{public}s %{public}s cannot find hash table entry for %{public,uuid_t}.16P";
    v14 = v19;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 38;
    goto LABEL_24;
  }

  if ((*(v9 + 36) & 1) == 0 || *(v9 + 32) == -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    *&buf[22] = 2048;
    *v106 = v8;
    v13 = "%{public}s %{public}s cannot get output frames for stream that is not yet open, protocol (%p)";
    v14 = v18;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
    goto LABEL_24;
  }

  if (*(v9 + 16))
  {
    if (gLogDatapath != 1)
    {
      return 0;
    }

    v10 = __nwlog_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v12 = *(v9 + 32);
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    *&buf[22] = 1024;
    *v106 = v12;
    v13 = "%{public}s %{public}s stream %d already has pending output frames, cannot get more";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 28;
LABEL_24:
    _os_log_impl(&dword_181A37000, v14, v15, v13, buf, v16);
    return 0;
  }

  v20 = a6;
  if (a4 >= 0x1000000)
  {
    v21 = 0x1000000;
  }

  else
  {
    v21 = a4;
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2000000000;
  v96 = 0;
  if (gLogDatapath == 1)
  {
    v84 = __nwlog_obj();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      *type = 136446722;
      v98 = "http2_transport_create_output_frame";
      v99 = 2082;
      v100 = handle + 205;
      v101 = 1024;
      LODWORD(v102) = v21;
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s requested output frame of length %u", type, 0x1Cu);
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL35http2_transport_create_output_frameP27nw_protocol_http2_transportP11nw_protocolj_block_invoke;
  *v106 = &unk_1E6A321E8;
  v108 = v21;
  v107 = v8;
  *&v106[8] = &v93;
  *&v106[16] = handle;
  v22 = handle[22];
  do
  {
    if (!v22)
    {
      break;
    }

    v23 = *(v22 + 16);
    v24 = (*&buf[16])(buf);
    v22 = v23;
  }

  while ((v24 & 1) != 0);
  if (!v94[3])
  {
    if (gLogDatapath == 1)
    {
      v87 = __nwlog_obj();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *type = 136446722;
        v98 = "http2_transport_create_output_frame";
        v99 = 2082;
        v100 = handle + 205;
        v101 = 1024;
        LODWORD(v102) = v21;
        _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no output frame to reuse for length %u", type, 0x1Cu);
      }
    }

    v28 = malloc_type_calloc(1uLL, v21, 0x1AB8167BuLL);
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
      *type = 136446722;
      v98 = "http2_transport_create_output_frame";
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v99 = 2048;
      v100 = 1;
      v101 = 2048;
      v102 = v21;
      v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s strict_calloc(%zu, %zu) failed", type, 32);
      result = __nwlog_should_abort(v42);
      if (result)
      {
        __break(1u);
        return result;
      }

      free(v42);
      v29 = 0;
    }

    v43 = nw_frame_create(0x10u, v29, v21, nw_protocol_http2_transport_frame_output_finalizer, 0);
    v94[3] = v43;
    if (v43)
    {
      if (http2_transport_output_frame_context_reset(v43, handle, v8))
      {
        if (gLogDatapath == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *type = 136446722;
            v98 = "http2_transport_create_output_frame";
            v99 = 2082;
            v100 = handle + 205;
            v101 = 1024;
            LODWORD(v102) = v21;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s allocated new output frame of length %u", type, 0x1Cu);
          }
        }

        goto LABEL_35;
      }

      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *type = 136446466;
        v98 = "http2_transport_create_output_frame";
        v99 = 2082;
        v100 = handle + 205;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s output frame has no metadata", type, 0x16u);
      }

      buffer = nw_frame_get_buffer(v94[3], 0);
      if (buffer)
      {
        free(buffer);
      }

      nw_frame_reset(v94[3], 0, 0, 0, 0);
      v52 = v94[3];
      if (v52)
      {
        os_release(v52);
        v94[3] = 0;
      }

LABEL_117:
      _Block_object_dispose(&v93, 8);
      goto LABEL_118;
    }

    v45 = __nwlog_obj();
    *type = 136446210;
    v98 = "http2_transport_create_output_frame";
    LODWORD(v90) = 12;
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s nw_frame_create output frame failed", type, v90);
    v92 = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(v46, &v92, &v91))
    {
      if (v92 == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = v92;
        if (os_log_type_enabled(v47, v92))
        {
          *type = 136446210;
          v98 = "http2_transport_create_output_frame";
          v49 = "%{public}s nw_frame_create output frame failed";
LABEL_112:
          _os_log_impl(&dword_181A37000, v47, v48, v49, type, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        v55 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = v92;
        v56 = os_log_type_enabled(v47, v92);
        if (v55)
        {
          if (v56)
          {
            *type = 136446466;
            v98 = "http2_transport_create_output_frame";
            v99 = 2082;
            v100 = v55;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s nw_frame_create output frame failed, dumping backtrace:%{public}s", type, 0x16u);
          }

          free(v55);
          goto LABEL_113;
        }

        if (v56)
        {
          *type = 136446210;
          v98 = "http2_transport_create_output_frame";
          v49 = "%{public}s nw_frame_create output frame failed, no backtrace";
          goto LABEL_112;
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = v92;
        if (os_log_type_enabled(v47, v92))
        {
          *type = 136446210;
          v98 = "http2_transport_create_output_frame";
          v49 = "%{public}s nw_frame_create output frame failed, backtrace limit exceeded";
          goto LABEL_112;
        }
      }
    }

LABEL_113:
    if (v46)
    {
      free(v46);
    }

    if (v28)
    {
      free(v28);
    }

    goto LABEL_117;
  }

LABEL_35:
  if (gLogDatapath == 1)
  {
    v85 = __nwlog_obj();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v86 = v94[3];
      *type = 136446978;
      v98 = "http2_transport_create_output_frame";
      v99 = 2082;
      v100 = handle + 205;
      v101 = 2048;
      v102 = v86;
      v103 = 1024;
      v104 = v21;
      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s output_frame_create returning frame %p for requested length %u", type, 0x26u);
    }
  }

  v25 = v94[3];
  _Block_object_dispose(&v93, 8);
  if (!v25)
  {
LABEL_118:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v71 = handle + 205;
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    *&buf[22] = 1024;
    *v106 = v21;
    LODWORD(v90) = 28;
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s failed to create/reuse output frame of length %u", buf, v90);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (!__nwlog_fault(v72, type, &v93))
    {
      goto LABEL_132;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type[0];
      if (!os_log_type_enabled(v73, type[0]))
      {
        goto LABEL_132;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v71;
      *&buf[22] = 1024;
      *v106 = v21;
      v75 = "%{public}s %{public}s failed to create/reuse output frame of length %u";
    }

    else if (v93 == 1)
    {
      v76 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type[0];
      v77 = os_log_type_enabled(v73, type[0]);
      if (v76)
      {
        if (v77)
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          *&buf[22] = 1024;
          *v106 = v21;
          *&v106[4] = 2082;
          *&v106[6] = v76;
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s %{public}s failed to create/reuse output frame of length %u, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v76);
        goto LABEL_132;
      }

      if (!v77)
      {
LABEL_132:
        if (v72)
        {
          free(v72);
        }

        return 0;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v71;
      *&buf[22] = 1024;
      *v106 = v21;
      v75 = "%{public}s %{public}s failed to create/reuse output frame of length %u, no backtrace";
    }

    else
    {
      v73 = __nwlog_obj();
      v74 = type[0];
      if (!os_log_type_enabled(v73, type[0]))
      {
        goto LABEL_132;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v71;
      *&buf[22] = 1024;
      *v106 = v21;
      v75 = "%{public}s %{public}s failed to create/reuse output frame of length %u, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0x1Cu);
    goto LABEL_132;
  }

  v26 = *(v25 + 52);
  if (v26)
  {
    v27 = v26 - (*(v25 + 56) + *(v25 + 60));
  }

  else
  {
    v27 = 0;
  }

  v30 = v20;
  if (v27 != v21)
  {
    v33 = __nwlog_obj();
    v34 = handle + 205;
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    *&buf[22] = 1024;
    *v106 = v27;
    *&v106[4] = 1024;
    *&v106[6] = v21;
    LODWORD(v90) = 34;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s %{public}s got output frame with wrong size (got %u != wanted %u) from http2_transport_create_output_frame", buf, v90);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v93) = 0;
    if (__nwlog_fault(v35, type, &v93))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          *&buf[22] = 1024;
          *v106 = v27;
          *&v106[4] = 1024;
          *&v106[6] = v21;
          v38 = "%{public}s %{public}s got output frame with wrong size (got %u != wanted %u) from http2_transport_create_output_frame";
LABEL_86:
          _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x22u);
        }
      }

      else if (v93 == 1)
      {
        v53 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type[0];
        v54 = os_log_type_enabled(v36, type[0]);
        if (v53)
        {
          if (v54)
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v34;
            *&buf[22] = 1024;
            *v106 = v27;
            *&v106[4] = 1024;
            *&v106[6] = v21;
            *&v106[10] = 2082;
            *&v106[12] = v53;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s got output frame with wrong size (got %u != wanted %u) from http2_transport_create_output_frame, dumping backtrace:%{public}s", buf, 0x2Cu);
          }

          free(v53);
          goto LABEL_87;
        }

        if (v54)
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          *&buf[22] = 1024;
          *v106 = v27;
          *&v106[4] = 1024;
          *&v106[6] = v21;
          v38 = "%{public}s %{public}s got output frame with wrong size (got %u != wanted %u) from http2_transport_create_output_frame, no backtrace";
          goto LABEL_86;
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          *&buf[22] = 1024;
          *v106 = v27;
          *&v106[4] = 1024;
          *&v106[6] = v21;
          v38 = "%{public}s %{public}s got output frame with wrong size (got %u != wanted %u) from http2_transport_create_output_frame, backtrace limit exceeded";
          goto LABEL_86;
        }
      }
    }

LABEL_87:
    if (v35)
    {
      free(v35);
    }

    v57 = nw_frame_get_buffer(v25, 0);
    if (v57)
    {
      free(v57);
    }

    nw_frame_reset(v25, 0, 0, 0, 0);
    os_release(v25);
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v88 = __nwlog_obj();
    v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG);
    v30 = v20;
    if (v89)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      *&buf[22] = 1024;
      *v106 = v21;
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s returning frame of %u bytes", buf, 0x1Cu);
      v30 = v20;
    }
  }

  *(v25 + 16) = 0;
  v31 = handle[17];
  *(v25 + 24) = v31;
  *v31 = v25;
  handle[17] = v25 + 16;
  *(v25 + 32) = 0;
  tqh_last = v30->tqh_last;
  *(v25 + 40) = tqh_last;
  *tqh_last = v25;
  v30->tqh_last = (v25 + 32);
  return 1;
}

uint64_t nw_protocol_http2_transport_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v11, type, &v23))
    {
      goto LABEL_42;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
      v14 = "%{public}s called with null protocol";
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v20 = os_log_type_enabled(v12, type[0]);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v11)
        {
          return 0;
        }

LABEL_43:
        free(v11);
        return 0;
      }

      if (!v20)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v16 = a2;
      v17 = __nwlog_obj();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      a2 = v16;
      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        a2 = v16;
      }
    }

    tqh_first = a2->tqh_first;
    if (a2->tqh_first)
    {
      *(tqh_first + 5) = type;
      tqh_last = a2->tqh_last;
      *type = tqh_first;
      v25 = tqh_last;
      a2->tqh_first = 0;
      a2->tqh_last = &a2->tqh_first;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v27 = &__block_descriptor_tmp_21_49595;
      v28 = 1;
      do
      {
        v5 = *type;
        if (!*type)
        {
          break;
        }

        v6 = *(*type + 32);
        v7 = *(*type + 40);
        v8 = (v6 + 40);
        if (!v6)
        {
          v8 = &v25;
        }

        *v8 = v7;
        *v7 = v6;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    nw_http2_transport_session_send(handle);
    return 0;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null http2_transport", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v11, type, &v23))
  {
    goto LABEL_42;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
    v14 = "%{public}s called with null http2_transport";
    goto LABEL_41;
  }

  if (v23 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
    v14 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    goto LABEL_41;
  }

  v21 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type[0];
  v22 = os_log_type_enabled(v12, type[0]);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
    v14 = "%{public}s called with null http2_transport, no backtrace";
    goto LABEL_41;
  }

  if (v22)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_finalize_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v21);
  if (v11)
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t nw_http2_transport_submit_data(uint64_t a1, uint64_t a2)
{
  v60[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v56 = "__nw_frame_get_metadata";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v38, &type, &v53))
    {
      goto LABEL_103;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_103;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_metadata";
      v41 = "%{public}s called with null frame";
    }

    else if (v53 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v44 = os_log_type_enabled(v39, type);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v56 = "__nw_frame_get_metadata";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_103;
      }

      if (!v44)
      {
LABEL_103:
        if (v38)
        {
          free(v38);
        }

        goto LABEL_3;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_metadata";
      v41 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_103;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_metadata";
      v41 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
    goto LABEL_103;
  }

  if ((*(a2 + 204) & 4) == 0)
  {
LABEL_3:
    v3 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_http2_transport_submit_data";
    LODWORD(v52) = 12;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null output_context", buf, v52);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v4, &type, &v53))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null output_context";
      goto LABEL_44;
    }

    if (v53 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null output_context, backtrace limit exceeded";
      goto LABEL_44;
    }

    v21 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v22 = os_log_type_enabled(v5, type);
    if (!v21)
    {
      if (!v22)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null output_context, no backtrace";
      goto LABEL_44;
    }

    if (!v22)
    {
LABEL_28:
      free(v21);
      goto LABEL_51;
    }

    *buf = 136446466;
    v56 = "nw_http2_transport_submit_data";
    v57 = 2082;
    v58 = v21;
    v23 = "%{public}s called with null output_context, dumping backtrace:%{public}s";
LABEL_27:
    _os_log_impl(&dword_181A37000, v5, v6, v23, buf, 0x16u);
    goto LABEL_28;
  }

  v8 = *(a2 + 216);
  if (!v8)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_http2_transport_submit_data";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v4, &type, &v53))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null input_protocol";
    }

    else if (v53 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v47 = os_log_type_enabled(v5, type);
      if (v21)
      {
        if (!v47)
        {
          goto LABEL_28;
        }

        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v21;
        v23 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_27;
      }

      if (!v47)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    goto LABEL_44;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_http2_transport_submit_data";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null node", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v4, &type, &v53))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null node";
    }

    else if (v53 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v48 = os_log_type_enabled(v5, type);
      if (v21)
      {
        if (!v48)
        {
          goto LABEL_28;
        }

        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v21;
        v23 = "%{public}s called with null node, dumping backtrace:%{public}s";
        goto LABEL_27;
      }

      if (!v48)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null node, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null node, backtrace limit exceeded";
    }

    goto LABEL_44;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_http2_transport_submit_data";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v4, &type, &v53))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null stream";
    }

    else if (v53 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v49 = os_log_type_enabled(v5, type);
      if (v21)
      {
        if (!v49)
        {
          goto LABEL_28;
        }

        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v21;
        v23 = "%{public}s called with null stream, dumping backtrace:%{public}s";
        goto LABEL_27;
      }

      if (!v49)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null stream, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v56 = "nw_http2_transport_submit_data";
      v7 = "%{public}s called with null stream, backtrace limit exceeded";
    }

LABEL_44:
    v32 = v5;
    v33 = v6;
    v34 = 12;
LABEL_50:
    _os_log_impl(&dword_181A37000, v32, v33, v7, buf, v34);
    goto LABEL_51;
  }

  v12 = *(v10 + 32);
  v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1BEF5125uLL);
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446722;
    v56 = "nw_http2_transport_submit_data";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v57 = 2048;
    v58 = 1;
    v59 = 2048;
    v60[0] = 16;
    v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    result = __nwlog_should_abort(v16);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v16);
  }

  *v13 = a2;
  v13[1] = data_source_read_callback;
  v18 = nghttp2_submit_data();
  free(v13);
  if (v18)
  {
    if (v18 == -529)
    {
      if (gLogDatapath == 1)
      {
        v19 = __nwlog_obj();
        result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 52);
        if (v20)
        {
          v20 -= *(a2 + 56) + *(a2 + 60);
        }

        *buf = 136446978;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = a1 + 205;
        v59 = 1024;
        LODWORD(v60[0]) = v12;
        WORD2(v60[0]) = 1024;
        *(v60 + 6) = v20;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s already have data outgoing on stream %d, cannot send %u bytes", buf, 0x22u);
      }

      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = nghttp2_strerror();
    *buf = 136446466;
    v56 = "nw_http2_transport_submit_data";
    v57 = 2082;
    v58 = v25;
    LODWORD(v52) = 22;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s nghttp2_submit_data: %{public}s failed", buf, v52);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v4, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        v28 = nghttp2_strerror();
        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v28;
        v7 = "%{public}s nghttp2_submit_data: %{public}s failed";
        goto LABEL_49;
      }

      if (v53 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_51;
        }

        v35 = nghttp2_strerror();
        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v35;
        v7 = "%{public}s nghttp2_submit_data: %{public}s failed, backtrace limit exceeded";
        goto LABEL_49;
      }

      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      v30 = os_log_type_enabled(gLogObj, type);
      if (v29)
      {
        if (v30)
        {
          v31 = nghttp2_strerror();
          *buf = 136446722;
          v56 = "nw_http2_transport_submit_data";
          v57 = 2082;
          v58 = v31;
          v59 = 2082;
          v60[0] = v29;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nghttp2_submit_data: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v29);
        goto LABEL_51;
      }

      if (v30)
      {
        v36 = nghttp2_strerror();
        *buf = 136446466;
        v56 = "nw_http2_transport_submit_data";
        v57 = 2082;
        v58 = v36;
        v7 = "%{public}s nghttp2_submit_data: %{public}s failed, no backtrace";
LABEL_49:
        v32 = v26;
        v33 = v27;
        v34 = 22;
        goto LABEL_50;
      }
    }

LABEL_51:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  if (gLogDatapath == 1)
  {
    v50 = __nwlog_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(a2 + 52);
      if (v51)
      {
        v51 -= *(a2 + 56) + *(a2 + 60);
      }

      *buf = 136446978;
      v56 = "nw_http2_transport_submit_data";
      v57 = 2082;
      v58 = a1 + 205;
      v59 = 1024;
      LODWORD(v60[0]) = v51;
      WORD2(v60[0]) = 1024;
      *(v60 + 6) = v12;
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted %u bytes on stream %d", buf, 0x22u);
    }
  }

  return 1;
}

uint64_t data_source_read_callback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5, void *a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (gLogDatapath == 1)
    {
      v21 = a7;
      v22 = a4;
      v23 = a6;
      v24 = __nwlog_obj();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      a6 = v23;
      a4 = v22;
      a7 = v21;
      if (v25)
      {
        *buf = 136446466;
        v35 = "data_source_read_callback";
        v36 = 2082;
        v37 = (v21 + 205);
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        a6 = v23;
        a4 = v22;
        a7 = v21;
      }
    }

    v8 = *a6;
    if (*a6)
    {
      v9 = v8[13];
      if (v9)
      {
        v10 = v9 - (v8[14] + v8[15]);
      }

      else
      {
        v10 = 0;
      }

      if (v10 >= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = v10;
      }

      if (v14 >= 0x3FF6)
      {
        result = 16374;
      }

      else
      {
        result = v14;
      }

      if (result == v10)
      {
        v15 = 7;
      }

      else
      {
        v15 = 6;
      }

      *a5 |= v15;
      if (gLogDatapath == 1)
      {
        v26 = a7;
        v27 = result;
        v28 = __nwlog_obj();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
        result = v27;
        if (v29)
        {
          *buf = 136446722;
          v35 = "data_source_read_callback";
          v36 = 2082;
          v37 = (v26 + 205);
          v38 = 1024;
          v39 = v27;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipped copying %u bytes in data_source_read_callback", buf, 0x1Cu);
          return v27;
        }
      }
    }

    else
    {
      v11 = a7;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v35 = "data_source_read_callback";
        v36 = 2082;
        v37 = (v11 + 205);
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received unexpected NULL frame in data source", buf, 0x16u);
      }

      result = 0;
      *a5 |= 1u;
    }

    return result;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v35 = "data_source_read_callback";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v17, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "data_source_read_callback";
        v20 = "%{public}s nghttp2 user data is NULL, not http2_transport";
LABEL_38:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v31 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v35 = "data_source_read_callback";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v31)
      {
        *buf = 136446210;
        v35 = "data_source_read_callback";
        v20 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "data_source_read_callback";
        v20 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  if (v17)
  {
    free(v17);
  }

  return -902;
}

uint64_t ___ZL35http2_transport_create_output_frameP27nw_protocol_http2_transportP11nw_protocolj_block_invoke(uint64_t a1, uint64_t a2)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v4 = *(a2 + 48);
      v5 = *(a2 + 112);
    }

    if (gLogDatapath == 1)
    {
      v94 = __nwlog_obj();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        v95 = *(a1 + 40);
        v96 = v95 == 0;
        *buf = 136446978;
        v97 = (v95 + 205);
        v113 = "http2_transport_create_output_frame_block_invoke";
        if (v96)
        {
          v97 = "";
        }

        v114 = 2082;
        v115 = v97;
        v116 = 2048;
        *v117 = v5;
        *&v117[8] = 1024;
        v118 = v4;
        _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s existing frame found, buffer %p, length %u", buf, 0x26u);
      }
    }

    v6 = *(a2 + 52);
    if (v6)
    {
      v6 -= *(a2 + 56) + *(a2 + 60);
    }

    if (v6 == v4)
    {
      if (v5 && v4)
      {
        if (http2_transport_candidate_frame_length_is_match(v4, *(a1 + 56)))
        {
          v8 = (*(a1 + 40) + 184);
          v9 = *(a2 + 16);
          v10 = *(a2 + 24);
          if (v9)
          {
            v8 = (v9 + 24);
          }

          *v8 = v10;
          *v10 = v9;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v11 = *(a1 + 40);
          v12 = *(v11 + 196);
          if (v12)
          {
            *(v11 + 196) = v12 - 1;
LABEL_172:
            if (gLogDatapath == 1)
            {
              v98 = __nwlog_obj();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v99 = *(a1 + 40);
                v100 = "";
                v101 = (v99 + 205);
                v96 = v99 == 0;
                v102 = *(a1 + 56);
                if (!v96)
                {
                  v100 = v101;
                }

                *buf = 136446978;
                v113 = "http2_transport_create_output_frame_block_invoke";
                v114 = 2082;
                v115 = v100;
                v116 = 1024;
                *v117 = v4;
                *&v117[4] = 1024;
                *&v117[6] = v102;
                _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s reusing output frame of length %u, adjusting to %u", buf, 0x22u);
              }
            }

            v89 = *(a1 + 56);
            v90 = v4 - v89;
            if (v4 == v89)
            {
              if (gLogDatapath)
              {
                v91 = __nwlog_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                {
                  v92 = *(a1 + 40);
                  if (v92)
                  {
                    v93 = (v92 + 205);
                  }

                  else
                  {
                    v93 = "";
                  }

                  *buf = 136446466;
                  v113 = "http2_transport_create_output_frame_block_invoke";
                  v114 = 2082;
                  v115 = v93;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s frame was exact match, not modifying", buf, 0x16u);
                }
              }
            }

            else
            {
              if (gLogDatapath)
              {
                v103 = v4 - v89;
                v104 = __nwlog_obj();
                v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG);
                v90 = v103;
                if (v105)
                {
                  v106 = *(a1 + 40);
                  *buf = 136446722;
                  v113 = "http2_transport_create_output_frame_block_invoke";
                  if (v106)
                  {
                    v107 = (v106 + 205);
                  }

                  else
                  {
                    v107 = "";
                  }

                  v114 = 2082;
                  v115 = v107;
                  v116 = 1024;
                  *v117 = v103;
                  _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s claiming %u bytes off end of frame", buf, 0x1Cu);
                  v90 = v103;
                }
              }

              nw_frame_claim(a2, v7, 0, v90);
            }

            http2_transport_output_frame_context_reset(a2, *(a1 + 40), *(a1 + 48));
            result = 0;
            *(*(*(a1 + 32) + 8) + 24) = a2;
            return result;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s http2_transport count attempted to decrement below zero", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v110 = 0;
          if (__nwlog_fault(v58, &type, &v110))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v59 = __nwlog_obj();
              v60 = type;
              if (!os_log_type_enabled(v59, type))
              {
                goto LABEL_170;
              }

              *buf = 136446210;
              v113 = "http2_transport_create_output_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero";
              goto LABEL_169;
            }

            if (v110 != 1)
            {
              v59 = __nwlog_obj();
              v60 = type;
              if (!os_log_type_enabled(v59, type))
              {
                goto LABEL_170;
              }

              *buf = 136446210;
              v113 = "http2_transport_create_output_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
              goto LABEL_169;
            }

            backtrace_string = __nw_create_backtrace_string();
            v59 = __nwlog_obj();
            v60 = type;
            v85 = os_log_type_enabled(v59, type);
            if (backtrace_string)
            {
              if (v85)
              {
                *buf = 136446466;
                v113 = "http2_transport_create_output_frame_block_invoke";
                v114 = 2082;
                v115 = backtrace_string;
                _os_log_impl(&dword_181A37000, v59, v60, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_170;
            }

            if (v85)
            {
              *buf = 136446210;
              v113 = "http2_transport_create_output_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
LABEL_169:
              _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
            }
          }

LABEL_170:
          if (v58)
          {
            free(v58);
          }

          goto LABEL_172;
        }

        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = *(a1 + 40);
      if (v33)
      {
        v34 = (v33 + 205);
      }

      else
      {
        v34 = "";
      }

      *buf = 136446466;
      v113 = "http2_transport_create_output_frame_block_invoke";
      v114 = 2082;
      v115 = v34;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s destroying frame with NULL buffer", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (__nwlog_fault(v35, &type, &v110))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          v38 = *(a1 + 40);
          if (v38)
          {
            v39 = (v38 + 205);
          }

          else
          {
            v39 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v39;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer";
LABEL_126:
          _os_log_impl(&dword_181A37000, v36, v37, v40, buf, 0x16u);
          goto LABEL_127;
        }

        if (v110 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          v53 = *(a1 + 40);
          if (v53)
          {
            v54 = (v53 + 205);
          }

          else
          {
            v54 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v54;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer, backtrace limit exceeded";
          goto LABEL_126;
        }

        v47 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        v48 = os_log_type_enabled(gLogObj, type);
        if (!v47)
        {
          if (!v48)
          {
            goto LABEL_127;
          }

          v77 = *(a1 + 40);
          if (v77)
          {
            v78 = (v77 + 205);
          }

          else
          {
            v78 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v78;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer, no backtrace";
          goto LABEL_126;
        }

        if (v48)
        {
          v49 = *(a1 + 40);
          if (v49)
          {
            v50 = (v49 + 205);
          }

          else
          {
            v50 = "";
          }

          *buf = 136446722;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v50;
          v116 = 2082;
          *v117 = v47;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s destroying frame with NULL buffer, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v47);
      }

LABEL_127:
      if (v35)
      {
        free(v35);
      }

      v79 = (*(a1 + 40) + 184);
      v80 = *(a2 + 16);
      v81 = *(a2 + 24);
      if (v80)
      {
        v79 = (v80 + 24);
      }

      *v79 = v81;
      *v81 = v80;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v67 = *(a1 + 40);
      v68 = *(v67 + 196);
      if (v68)
      {
LABEL_132:
        *(v67 + 196) = v68 - 1;
LABEL_160:
        if ((*(a2 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a2, *(a2 + 88)))
        {
          v88 = *(a2 + 112);
          if (v88)
          {
            free(v88);
          }
        }

        nw_frame_reset(a2, 0, 0, 0, 0);
        os_release(a2);
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v113 = "http2_transport_create_output_frame_block_invoke";
      LODWORD(v109) = 12;
      v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s http2_transport count attempted to decrement below zero", buf, v109);
      type = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (!__nwlog_fault(v69, &type, &v110))
      {
        goto LABEL_158;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_158;
        }

        *buf = 136446210;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero";
        goto LABEL_156;
      }

      if (v110 != 1)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (!os_log_type_enabled(v70, type))
        {
          goto LABEL_158;
        }

        *buf = 136446210;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
        goto LABEL_156;
      }

      v82 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type;
      v83 = os_log_type_enabled(v70, type);
      if (v82)
      {
        if (v83)
        {
          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v82;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        if (!v69)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      }

      if (v83)
      {
        *buf = 136446210;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
LABEL_156:
        v86 = v70;
        v87 = v71;
LABEL_157:
        _os_log_impl(&dword_181A37000, v86, v87, v72, buf, 0xCu);
        goto LABEL_158;
      }

      goto LABEL_158;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = (v21 + 205);
    }

    else
    {
      v22 = "";
    }

    *buf = 136446466;
    v113 = "http2_transport_create_output_frame_block_invoke";
    v114 = 2082;
    v115 = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s candidate frame is not fully unclaimed, destroying", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v23, &type, &v110))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v26 = *(a1 + 40);
          if (v26)
          {
            v27 = (v26 + 205);
          }

          else
          {
            v27 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v27;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying";
LABEL_104:
          _os_log_impl(&dword_181A37000, v24, v25, v28, buf, 0x16u);
        }
      }

      else if (v110 == 1)
      {
        v41 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        v42 = os_log_type_enabled(gLogObj, type);
        if (v41)
        {
          if (v42)
          {
            v43 = *(a1 + 40);
            if (v43)
            {
              v44 = (v43 + 205);
            }

            else
            {
              v44 = "";
            }

            *buf = 136446722;
            v113 = "http2_transport_create_output_frame_block_invoke";
            v114 = 2082;
            v115 = v44;
            v116 = 2082;
            *v117 = v41;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v41);
          goto LABEL_105;
        }

        if (v42)
        {
          v62 = *(a1 + 40);
          if (v62)
          {
            v63 = (v62 + 205);
          }

          else
          {
            v63 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v63;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, no backtrace";
          goto LABEL_104;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v51 = *(a1 + 40);
          if (v51)
          {
            v52 = (v51 + 205);
          }

          else
          {
            v52 = "";
          }

          *buf = 136446466;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v52;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, backtrace limit exceeded";
          goto LABEL_104;
        }
      }
    }

LABEL_105:
    if (v23)
    {
      free(v23);
    }

    v64 = (*(a1 + 40) + 184);
    v65 = *(a2 + 16);
    v66 = *(a2 + 24);
    if (v65)
    {
      v64 = (v65 + 24);
    }

    *v64 = v66;
    *v66 = v65;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v67 = *(a1 + 40);
    v68 = *(v67 + 196);
    if (v68)
    {
      goto LABEL_132;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v113 = "http2_transport_create_output_frame_block_invoke";
    LODWORD(v108) = 12;
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s http2_transport count attempted to decrement below zero", buf, v108);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v69, &type, &v110))
    {
      goto LABEL_158;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v70 = gLogObj;
      v71 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v113 = "http2_transport_create_output_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero";
      goto LABEL_156;
    }

    if (v110 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v70 = gLogObj;
      v71 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v113 = "http2_transport_create_output_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
      goto LABEL_156;
    }

    v73 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    v75 = type;
    v76 = os_log_type_enabled(gLogObj, type);
    if (!v73)
    {
      if (!v76)
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v113 = "http2_transport_create_output_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
      v86 = v74;
      v87 = v75;
      goto LABEL_157;
    }

    if (v76)
    {
      *buf = 136446466;
      v113 = "http2_transport_create_output_frame_block_invoke";
      v114 = 2082;
      v115 = v73;
      _os_log_impl(&dword_181A37000, v74, v75, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v73);
LABEL_158:
    if (!v69)
    {
      goto LABEL_160;
    }

LABEL_159:
    free(v69);
    goto LABEL_160;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = (v13 + 205);
  }

  else
  {
    v14 = "";
  }

  *buf = 136446466;
  v113 = "http2_transport_create_output_frame_block_invoke";
  v114 = 2082;
  v115 = v14;
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s foreach gave null candidate_frame", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v110 = 0;
  if (__nwlog_fault(v15, &type, &v110))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = (v18 + 205);
        }

        else
        {
          v19 = "";
        }

        *buf = 136446466;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v114 = 2082;
        v115 = v19;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame";
LABEL_91:
        _os_log_impl(&dword_181A37000, v16, v17, v20, buf, 0x16u);
      }
    }

    else if (v110 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v30 = os_log_type_enabled(gLogObj, type);
      if (v29)
      {
        if (v30)
        {
          v31 = *(a1 + 40);
          if (v31)
          {
            v32 = (v31 + 205);
          }

          else
          {
            v32 = "";
          }

          *buf = 136446722;
          v113 = "http2_transport_create_output_frame_block_invoke";
          v114 = 2082;
          v115 = v32;
          v116 = 2082;
          *v117 = v29;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s %{public}s foreach gave null candidate_frame, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v29);
        goto LABEL_92;
      }

      if (v30)
      {
        v55 = *(a1 + 40);
        if (v55)
        {
          v56 = (v55 + 205);
        }

        else
        {
          v56 = "";
        }

        *buf = 136446466;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v114 = 2082;
        v115 = v56;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame, no backtrace";
        goto LABEL_91;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v45 = *(a1 + 40);
        if (v45)
        {
          v46 = (v45 + 205);
        }

        else
        {
          v46 = "";
        }

        *buf = 136446466;
        v113 = "http2_transport_create_output_frame_block_invoke";
        v114 = 2082;
        v115 = v46;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame, backtrace limit exceeded";
        goto LABEL_91;
      }
    }
  }

LABEL_92:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

BOOL http2_transport_output_frame_context_reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  metadata = nw_frame_get_metadata(a1);
  v6 = metadata;
  if (metadata)
  {
    *metadata = a2;
    metadata[1] = a3;
    return v6 != 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (a2)
  {
    v7 = (a2 + 205);
  }

  else
  {
    v7 = "";
  }

  *buf = 136446466;
  v18 = "http2_transport_output_frame_context_reset";
  v19 = 2082;
  v20 = v7;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s frame has no metadata", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v18 = "http2_transport_output_frame_context_reset";
      v19 = 2082;
      v20 = v7;
      v11 = "%{public}s %{public}s frame has no metadata";
      goto LABEL_19;
    }

    if (v15 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v18 = "http2_transport_output_frame_context_reset";
      v19 = 2082;
      v20 = v7;
      v11 = "%{public}s %{public}s frame has no metadata, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446722;
        v18 = "http2_transport_output_frame_context_reset";
        v19 = 2082;
        v20 = v7;
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s frame has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v13)
    {
      *buf = 136446466;
      v18 = "http2_transport_output_frame_context_reset";
      v19 = 2082;
      v20 = v7;
      v11 = "%{public}s %{public}s frame has no metadata, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0x16u);
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  return v6 != 0;
}

void nw_protocol_http2_transport_frame_output_finalizer(nw_frame *a1, int a2, void *a3)
{
  v66[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s http2_transport output frames should no longer have nonnull context", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (!__nwlog_fault(v3, &type, &v59))
      {
        goto LABEL_36;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v6 = "%{public}s http2_transport output frames should no longer have nonnull context";
      }

      else
      {
        if (v59 == 1)
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
              v62 = "nw_protocol_http2_transport_frame_output_finalizer";
              v63 = 2082;
              v64 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v21, "%{public}s http2_transport output frames should no longer have nonnull context, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (v3)
            {
              goto LABEL_37;
            }

            return;
          }

          if (!v22)
          {
            goto LABEL_36;
          }

          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s http2_transport output frames should no longer have nonnull context, no backtrace";
          v24 = v20;
          v25 = v21;
          goto LABEL_35;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v6 = "%{public}s http2_transport output frames should no longer have nonnull context, backtrace limit exceeded";
      }

LABEL_34:
      v24 = v4;
      v25 = v5;
LABEL_35:
      _os_log_impl(&dword_181A37000, v24, v25, v6, buf, 0xCu);
      goto LABEL_36;
    }

    if (gLogDatapath == 1)
    {
      v46 = a2;
      v47 = __nwlog_obj();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
      a2 = v46;
      if (v48)
      {
        *buf = 136446978;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v63 = 2048;
        v64 = a1;
        v65 = 1024;
        LODWORD(v66[0]) = v46;
        WORD2(v66[0]) = 2048;
        *(v66 + 6) = 0;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s called with frame %p success %d context %p", buf, 0x26u);
        a2 = v46;
      }
    }

    v8 = (a1 + 208);
    if ((*(a1 + 102) & 4) == 0)
    {
      v49 = __nwlog_obj();
      *buf = 136446210;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null output_context", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (!__nwlog_fault(v3, &type, &v59))
      {
        goto LABEL_36;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (os_log_type_enabled(v4, type))
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null output_context";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (v59 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (os_log_type_enabled(v4, type))
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null output_context, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v52 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v53 = os_log_type_enabled(v4, type);
      if (!v52)
      {
        if (v53)
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null output_context, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (v53)
      {
        *buf = 136446466;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v63 = 2082;
        v64 = v52;
        v54 = "%{public}s called with null output_context, dumping backtrace:%{public}s";
LABEL_127:
        _os_log_impl(&dword_181A37000, v4, v5, v54, buf, 0x16u);
        goto LABEL_128;
      }

      goto LABEL_128;
    }

    v9 = *v8;
    if (!*v8)
    {
      v51 = __nwlog_obj();
      *buf = 136446210;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s called with null http2_transport", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (!__nwlog_fault(v3, &type, &v59))
      {
        goto LABEL_36;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (os_log_type_enabled(v4, type))
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null http2_transport";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (v59 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (os_log_type_enabled(v4, type))
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null http2_transport, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v52 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v55 = os_log_type_enabled(v4, type);
      if (!v52)
      {
        if (v55)
        {
          *buf = 136446210;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v6 = "%{public}s called with null http2_transport, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (v55)
      {
        *buf = 136446466;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v63 = 2082;
        v64 = v52;
        v54 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
        goto LABEL_127;
      }

LABEL_128:
      free(v52);
      if (v3)
      {
        goto LABEL_37;
      }

      return;
    }

    v10 = (v9 + 136);
    v11 = *(a1 + 2);
    v12 = *(a1 + 3);
    v13 = (a1 + 16);
    if (v11)
    {
      v10 = (v11 + 24);
    }

    *v10 = v12;
    *v12 = v11;
    *v13 = 0;
    *(a1 + 3) = 0;
    if (!a2)
    {
      if (gLogDatapath == 1)
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = (v9 + 205);
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s disposing of output frame, finalizer called with success == false", buf, 0x16u);
        }
      }

      goto LABEL_91;
    }

    v14 = *(a1 + 27);
    if (v14)
    {
      v15 = *(v14 + 56);
      if (v15)
      {
        v16 = *(v15 + 32);
        if (v16)
        {
          if ((*(v16 + 36) & 1) != 0 || *(v16 + 32) < 1)
          {
            if (*(v16 + 16))
            {
              if (gLogDatapath == 1)
              {
                v56 = __nwlog_obj();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v62 = "nw_protocol_http2_transport_frame_output_finalizer";
                  v63 = 2082;
                  v64 = (v9 + 205);
                  _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream already has pending data, simply pending for future send", buf, 0x16u);
                }
              }

              *(a1 + 2) = 0;
              v34 = *(v16 + 24);
              *(a1 + 3) = v34;
              *v34 = a1;
              *(v16 + 24) = v13;
              if (gLogDatapath == 1)
              {
                v35 = __nwlog_obj();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  nw_frame_array_get_frame_count((v16 + 16), 0, buf);
                  v36 = *buf;
                  *buf = 136446722;
                  v62 = "nw_protocol_http2_transport_frame_output_finalizer";
                  v63 = 2082;
                  v64 = (v9 + 205);
                  v65 = 1024;
                  LODWORD(v66[0]) = v36;
                  _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream now has %u bytes pending", buf, 0x1Cu);
                }
              }
            }

            else
            {
              if ((nw_http2_transport_submit_data(v9, a1) & 1) == 0)
              {
                *(a1 + 2) = 0;
                v42 = *(v16 + 24);
                *(a1 + 3) = v42;
                *v42 = a1;
                *(v16 + 24) = v13;
                if (gLogDatapath == 1)
                {
                  v57 = __nwlog_obj();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    nw_frame_array_get_frame_count((v16 + 16), 0, buf);
                    v58 = *buf;
                    *buf = 136446722;
                    v62 = "nw_protocol_http2_transport_frame_output_finalizer";
                    v63 = 2082;
                    v64 = (v9 + 205);
                    v65 = 1024;
                    LODWORD(v66[0]) = v58;
                    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream now has %u bytes pending", buf, 0x1Cu);
                  }
                }
              }

              nw_http2_transport_session_send(v9);
            }

            return;
          }

          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_frame_output_finalizer";
            v63 = 2082;
            v64 = (v9 + 205);
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Cannot send data on a stream that is not open but has a greater than zero stream id", buf, 0x16u);
          }

          buffer = nw_frame_get_buffer(a1, 0);
          if (!buffer)
          {
LABEL_96:
            nw_frame_reset(a1, 0, 0, 0, 0);
            os_release(a1);
            return;
          }

LABEL_95:
          free(buffer);
          goto LABEL_96;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = (v9 + 205);
        *buf = 136446466;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v63 = 2082;
        v64 = (v9 + 205);
        v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s stream not found", buf, 22);
        type = OS_LOG_TYPE_ERROR;
        v59 = 0;
        if (__nwlog_fault(v27, &type, &v59))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v28 = __nwlog_obj();
            v29 = type;
            if (!os_log_type_enabled(v28, type))
            {
              goto LABEL_89;
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_frame_output_finalizer";
            v63 = 2082;
            v64 = v37;
            v30 = "%{public}s %{public}s stream not found";
            goto LABEL_88;
          }

          if (v59 != 1)
          {
            v28 = __nwlog_obj();
            v29 = type;
            if (!os_log_type_enabled(v28, type))
            {
              goto LABEL_89;
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_frame_output_finalizer";
            v63 = 2082;
            v64 = v37;
            v30 = "%{public}s %{public}s stream not found, backtrace limit exceeded";
            goto LABEL_88;
          }

          v38 = __nw_create_backtrace_string();
          v28 = __nwlog_obj();
          v29 = type;
          v41 = os_log_type_enabled(v28, type);
          if (!v38)
          {
            if (!v41)
            {
              goto LABEL_89;
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_frame_output_finalizer";
            v63 = 2082;
            v64 = v37;
            v30 = "%{public}s %{public}s stream not found, no backtrace";
            goto LABEL_88;
          }

          if (!v41)
          {
            goto LABEL_73;
          }

          *buf = 136446722;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v37;
          v65 = 2082;
          v66[0] = v38;
          v40 = "%{public}s %{public}s stream not found, dumping backtrace:%{public}s";
          goto LABEL_72;
        }

LABEL_89:
        if (!v27)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = (v9 + 205);
      *buf = 136446466;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v63 = 2082;
      v64 = (v9 + 205);
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s node not found", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (!__nwlog_fault(v27, &type, &v59))
      {
        goto LABEL_89;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v59 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_89;
          }

          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v31;
          v30 = "%{public}s %{public}s node not found, backtrace limit exceeded";
          goto LABEL_88;
        }

        v38 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v39 = os_log_type_enabled(v28, type);
        if (!v38)
        {
          if (!v39)
          {
            goto LABEL_89;
          }

          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v31;
          v30 = "%{public}s %{public}s node not found, no backtrace";
          goto LABEL_88;
        }

        if (!v39)
        {
          goto LABEL_73;
        }

        *buf = 136446722;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v63 = 2082;
        v64 = v31;
        v65 = 2082;
        v66[0] = v38;
        v40 = "%{public}s %{public}s node not found, dumping backtrace:%{public}s";
LABEL_72:
        _os_log_impl(&dword_181A37000, v28, v29, v40, buf, 0x20u);
LABEL_73:
        free(v38);
        if (v27)
        {
LABEL_90:
          free(v27);
        }

LABEL_91:
        if ((*(a1 + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a1, *(a1 + 11)))
        {
          goto LABEL_96;
        }

        buffer = *(a1 + 14);
        if (!buffer)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_89;
      }

      *buf = 136446466;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v63 = 2082;
      v64 = v31;
      v30 = "%{public}s %{public}s node not found";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = (v9 + 205);
      *buf = 136446466;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v63 = 2082;
      v64 = (v9 + 205);
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s input_protocol not found", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v59 = 0;
      if (!__nwlog_fault(v27, &type, &v59))
      {
        goto LABEL_89;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v59 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_89;
          }

          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v26;
          v30 = "%{public}s %{public}s input_protocol not found, backtrace limit exceeded";
          goto LABEL_88;
        }

        v32 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v33 = os_log_type_enabled(v28, type);
        if (!v32)
        {
          if (!v33)
          {
            goto LABEL_89;
          }

          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v26;
          v30 = "%{public}s %{public}s input_protocol not found, no backtrace";
          goto LABEL_88;
        }

        if (v33)
        {
          *buf = 136446722;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v26;
          v65 = 2082;
          v66[0] = v32;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}s input_protocol not found, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v32);
        goto LABEL_89;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_89;
      }

      *buf = 136446466;
      v62 = "nw_protocol_http2_transport_frame_output_finalizer";
      v63 = 2082;
      v64 = v26;
      v30 = "%{public}s %{public}s input_protocol not found";
    }

LABEL_88:
    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x16u);
    goto LABEL_89;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v62 = "nw_protocol_http2_transport_frame_output_finalizer";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v59 = 0;
  if (__nwlog_fault(v3, &type, &v59))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v6 = "%{public}s called with null frame";
        goto LABEL_34;
      }
    }

    else if (v59 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v45 = os_log_type_enabled(v4, type);
      if (v44)
      {
        if (v45)
        {
          *buf = 136446466;
          v62 = "nw_protocol_http2_transport_frame_output_finalizer";
          v63 = 2082;
          v64 = v44;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v44);
      }

      else if (v45)
      {
        *buf = 136446210;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v6 = "%{public}s called with null frame, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v62 = "nw_protocol_http2_transport_frame_output_finalizer";
        v6 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_34;
      }
    }
  }

LABEL_36:
  if (v3)
  {
LABEL_37:
    free(v3);
  }
}

uint64_t send_data_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v161 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v70 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "send_data_callback";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v71, &type, &v146))
    {
      goto LABEL_183;
    }

    if (type == 17)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_183;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v74 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v146 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type;
      v90 = os_log_type_enabled(v72, type);
      if (backtrace_string)
      {
        if (v90)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "send_data_callback";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = backtrace_string;
          v91 = "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s";
          v92 = v72;
          v93 = v73;
          v94 = 22;
LABEL_145:
          _os_log_impl(&dword_181A37000, v92, v93, v91, buf, v94);
        }

LABEL_146:
        free(backtrace_string);
        goto LABEL_183;
      }

      if (!v90)
      {
        goto LABEL_183;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v74 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_183;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v74 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    v112 = v72;
    v113 = v73;
    v114 = 12;
LABEL_182:
    _os_log_impl(&dword_181A37000, v112, v113, v74, buf, v114);
    goto LABEL_183;
  }

  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (gLogDatapath == 1)
  {
    v75 = a5;
    v76 = a3;
    v77 = a4;
    v78 = __nwlog_obj();
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);
    a4 = v77;
    a3 = v76;
    a5 = v75;
    if (v79)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a6 + 205;
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a4 = v77;
      a3 = v76;
      a5 = v75;
    }
  }

  if (!a3)
  {
    v80 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "send_data_callback";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null framehd", buf, 12);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v14, &type, &v146))
    {
      goto LABEL_76;
    }

    if (type == 17)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null framehd";
      goto LABEL_178;
    }

    if (v146 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v82 = type;
      v95 = os_log_type_enabled(v81, type);
      if (v36)
      {
        if (!v95)
        {
          goto LABEL_45;
        }

        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v36;
        v38 = "%{public}s called with null framehd, dumping backtrace:%{public}s";
        goto LABEL_140;
      }

      if (!v95)
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null framehd, no backtrace";
    }

    else
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null framehd, backtrace limit exceeded";
    }

    goto LABEL_178;
  }

  if (!a2)
  {
    v83 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "send_data_callback";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null frame", buf, 12);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v14, &type, &v146))
    {
      goto LABEL_76;
    }

    if (type == 17)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null frame";
      goto LABEL_178;
    }

    if (v146 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v82 = type;
      v96 = os_log_type_enabled(v81, type);
      if (v36)
      {
        if (!v96)
        {
          goto LABEL_45;
        }

        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v36;
        v38 = "%{public}s called with null frame, dumping backtrace:%{public}s";
        goto LABEL_140;
      }

      if (!v96)
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_178:
    v58 = v81;
    v59 = v82;
    v60 = 12;
    goto LABEL_75;
  }

  if (!a5)
  {
    v84 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "send_data_callback";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s called with null source", buf, 12);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v14, &type, &v146))
    {
      goto LABEL_76;
    }

    if (type == 17)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null source";
      goto LABEL_178;
    }

    if (v146 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v82 = type;
      v97 = os_log_type_enabled(v81, type);
      if (v36)
      {
        if (!v97)
        {
          goto LABEL_45;
        }

        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v36;
        v38 = "%{public}s called with null source, dumping backtrace:%{public}s";
LABEL_140:
        v39 = v81;
        v40 = v82;
        v41 = 22;
        goto LABEL_44;
      }

      if (!v97)
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null source, no backtrace";
    }

    else
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (!os_log_type_enabled(v81, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_data_callback";
      v17 = "%{public}s called with null source, backtrace limit exceeded";
    }

    goto LABEL_178;
  }

  if (!a4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = a6 + 205;
    v19 = *(a2 + 8);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "send_data_callback";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = a6 + 205;
    HIWORD(buf[2]) = 1024;
    *v160 = v19;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s asked to send 0 bytes on stream %d", buf, 28);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v14, &type, &v146))
    {
      goto LABEL_76;
    }

    if (type == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v21 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_76;
      }

      v22 = *(a2 + 8);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v18;
      HIWORD(buf[2]) = 1024;
      *v160 = v22;
      v17 = "%{public}s %{public}s asked to send 0 bytes on stream %d";
      goto LABEL_71;
    }

    if (v146 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v21 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_76;
      }

      v43 = *(a2 + 8);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v18;
      HIWORD(buf[2]) = 1024;
      *v160 = v43;
      v17 = "%{public}s %{public}s asked to send 0 bytes on stream %d, backtrace limit exceeded";
      goto LABEL_71;
    }

    v33 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = type;
    v34 = os_log_type_enabled(gLogObj, type);
    if (v33)
    {
      if (v34)
      {
        v35 = *(a2 + 8);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v18;
        HIWORD(buf[2]) = 1024;
        *v160 = v35;
        *&v160[4] = 2082;
        *&v160[6] = v33;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s %{public}s asked to send 0 bytes on stream %d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v33);
      goto LABEL_76;
    }

    if (v34)
    {
      v57 = *(a2 + 8);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v18;
      HIWORD(buf[2]) = 1024;
      *v160 = v57;
      v17 = "%{public}s %{public}s asked to send 0 bytes on stream %d, no backtrace";
LABEL_71:
      v58 = v20;
      v59 = v21;
      v60 = 28;
LABEL_75:
      _os_log_impl(&dword_181A37000, v58, v59, v17, buf, v60);
    }

LABEL_76:
    if (v14)
    {
      free(v14);
    }

    return 4294966775;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 10;
  }

  else
  {
    v10 = 9;
  }

  if (v9 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = (v11 + v10);
  if (0xFFFFFFFFLL - a4 < v12)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = a6 + 205;
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "send_data_callback";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = a6 + 205;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s bytes_to_send overflow", buf, 22);
    LOBYTE(type) = 16;
    LOBYTE(v146) = 0;
    if (!__nwlog_fault(v14, &type, &v146))
    {
      goto LABEL_76;
    }

    if (type == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v13;
      v17 = "%{public}s %{public}s bytes_to_send overflow";
LABEL_74:
      v58 = v15;
      v59 = v16;
      v60 = 22;
      goto LABEL_75;
    }

    if (v146 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v13;
      v17 = "%{public}s %{public}s bytes_to_send overflow, backtrace limit exceeded";
      goto LABEL_74;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type;
    v37 = os_log_type_enabled(gLogObj, type);
    if (!v36)
    {
      if (!v37)
      {
        goto LABEL_76;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v13;
      v17 = "%{public}s %{public}s bytes_to_send overflow, no backtrace";
      goto LABEL_74;
    }

    if (!v37)
    {
LABEL_45:
      free(v36);
      goto LABEL_76;
    }

    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "send_data_callback";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v13;
    HIWORD(buf[2]) = 2082;
    *v160 = v36;
    v38 = "%{public}s %{public}s bytes_to_send overflow, dumping backtrace:%{public}s";
    v39 = v15;
    v40 = v16;
    v41 = 32;
LABEL_44:
    _os_log_impl(&dword_181A37000, v39, v40, v38, buf, v41);
    goto LABEL_45;
  }

  v23 = *a5;
  if (!*a5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a6 + 205;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received unexpected NULL frame from data source", buf, 0x16u);
    }

    return 4294966775;
  }

  v24 = *(v23 + 52);
  if (v24)
  {
    v24 -= *(v23 + 56) + *(v23 + 60);
  }

  if (v24 != a4 && gLogDatapath == 1)
  {
    v99 = a5;
    v100 = a3;
    v101 = a4;
    v102 = __nwlog_obj();
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG);
    a4 = v101;
    a3 = v100;
    a5 = v99;
    if (v103)
    {
      v104 = *(v23 + 52);
      if (v104)
      {
        v104 -= *(v23 + 56) + *(v23 + 60);
      }

      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a6 + 205;
      HIWORD(buf[2]) = 1024;
      *v160 = v104;
      *&v160[4] = 1024;
      *&v160[6] = v101;
      _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s source frame length %u, asked to send %u", buf, 0x22u);
      a4 = v101;
      a5 = v99;
      a3 = v100;
    }
  }

  v155 = 0;
  v156 = &v155;
  v154[0] = 0;
  v154[1] = v154;
  v25 = *(a6 + 32);
  if (v25)
  {
    v26 = *(v25 + 24);
    if (v26)
    {
      v27 = *(v26 + 88);
      if (v27)
      {
        v28 = a3;
        v128 = a5;
        v29 = a4;
        v30 = v12 + a4;
        v31 = v27(v25, a6, (v12 + a4), (v12 + a4), 0xFFFFFFFFLL, &v155);
        result = 4294966792;
        if (!v31 || !v155)
        {
          return result;
        }

        LODWORD(buf[0]) = 0;
        nw_frame_array_get_frame_count(&v155, 1, buf);
        if (LODWORD(buf[0]) < v30)
        {
          if (gLogDatapath != 1)
          {
            return 4294966792;
          }

          v115 = __nwlog_obj();
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            return 4294966792;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "send_data_callback";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = a6 + 205;
          _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got back fewer bytes than necessary, returing E_WOULDBLOCK", buf, 0x16u);
          return 4294966792;
        }

        type = 0;
        p_type = &type;
        v152 = 0x2000000000;
        v153 = 0;
        v146 = 0;
        v147 = &v146;
        v148 = 0x2000000000;
        v149 = 0;
        v144[0] = 0;
        v144[1] = v144;
        v144[2] = 0x2000000000;
        v145 = 0;
        v130[0] = MEMORY[0x1E69E9820];
        v130[1] = 0x40000000;
        v131 = ___ZL18send_data_callbackP15nghttp2_sessionP13nghttp2_framePKhmP19nghttp2_data_sourcePv_block_invoke;
        v132 = &unk_1E6A322F0;
        v137 = a6;
        v138 = a2;
        v143 = v30;
        v133 = &type;
        v134 = &v146;
        v139 = v29;
        v140 = v23;
        v135 = v144;
        v136 = v28;
        v141 = &v155;
        v142 = v154;
        v44 = v155;
        do
        {
          if (!v44)
          {
            break;
          }

          v45 = *(v44 + 32);
          v46 = (v131)(v130);
          v44 = v45;
        }

        while ((v46 & 1) != 0);
        v47 = *(v25 + 24);
        if (v47)
        {
          v48 = *(v47 + 96);
          if (v48)
          {
            v48(v25, v154);
            v49 = v155;
            if (!v155)
            {
              goto LABEL_63;
            }

            goto LABEL_58;
          }
        }

        v105 = __nwlog_obj();
        v106 = *(v25 + 16);
        if (!v106)
        {
          v106 = "invalid";
        }

        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v106;
        v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", buf, 22);
        LOBYTE(v157) = 16;
        v129 = 0;
        if (__nwlog_fault(v107, &v157, &v129))
        {
          if (v157 == 17)
          {
            v108 = __nwlog_obj();
            v109 = v157;
            if (!os_log_type_enabled(v108, v157))
            {
              goto LABEL_208;
            }

            v110 = *(v25 + 16);
            if (!v110)
            {
              v110 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_data_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v110;
            v111 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
LABEL_207:
            _os_log_impl(&dword_181A37000, v108, v109, v111, buf, 0x16u);
            goto LABEL_208;
          }

          if (v129 != 1)
          {
            v108 = __nwlog_obj();
            v109 = v157;
            if (!os_log_type_enabled(v108, v157))
            {
              goto LABEL_208;
            }

            v121 = *(v25 + 16);
            if (!v121)
            {
              v121 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_data_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v121;
            v111 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_207;
          }

          v118 = __nw_create_backtrace_string();
          v108 = __nwlog_obj();
          v109 = v157;
          v119 = os_log_type_enabled(v108, v157);
          if (!v118)
          {
            if (!v119)
            {
              goto LABEL_208;
            }

            v124 = *(v25 + 16);
            if (!v124)
            {
              v124 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_data_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v124;
            v111 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
            goto LABEL_207;
          }

          if (v119)
          {
            v120 = *(v25 + 16);
            if (!v120)
            {
              v120 = "invalid";
            }

            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "send_data_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v120;
            HIWORD(buf[2]) = 2082;
            *v160 = v118;
            _os_log_impl(&dword_181A37000, v108, v109, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v118);
        }

LABEL_208:
        if (v107)
        {
          free(v107);
        }

        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v49 = v155;
        if (!v155)
        {
LABEL_63:
          if (BYTE1(v8[82].isa) == 1)
          {
            v116 = __nwlog_obj();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              v117 = *(p_type + 6);
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "send_data_callback";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = a6 + 205;
              HIWORD(buf[2]) = 1024;
              *v160 = v117;
              _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes", buf, 0x1Cu);
            }
          }

          if (*(p_type + 6) == v30)
          {
            v54 = *(v23 + 52);
            if (v54)
            {
              v55 = *(v23 + 56) + *(v23 + 60);
              v56 = v54 - v55;
              if (v54 != v55)
              {
                if (BYTE1(v8[82].isa))
                {
                  v125 = __nwlog_obj();
                  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                  {
                    v126 = *(v147 + 6);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "send_data_callback";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = a6 + 205;
                    HIWORD(buf[2]) = 1024;
                    *v160 = v126;
                    *&v160[4] = 1024;
                    *&v160[6] = v56;
                    _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote partial frame, %u bytes, %u remaining", buf, 0x22u);
                  }
                }

                v69 = 0;
                goto LABEL_101;
              }

              if (BYTE1(v8[82].isa))
              {
                goto LABEL_201;
              }
            }

            else if (BYTE1(v8[82].isa))
            {
LABEL_201:
              v122 = __nwlog_obj();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
              {
                v123 = *(v147 + 6);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "send_data_callback";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = a6 + 205;
                HIWORD(buf[2]) = 2048;
                *v160 = v23;
                *&v160[8] = 1024;
                *&v160[10] = v123;
                _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s finished writing complete frame %p, final length %u", buf, 0x26u);
              }
            }

            http2_transport_cache_output_frame(a6, v23);
            v69 = 0;
            *v128 = 0;
LABEL_101:
            _Block_object_dispose(v144, 8);
            _Block_object_dispose(&v146, 8);
            _Block_object_dispose(&type, 8);
            return v69;
          }

          v61 = __nwlog_obj();
          v62 = a6 + 205;
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "send_data_callback";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = a6 + 205;
          LODWORD(v127) = 22;
          v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s %{public}s did not write complete frame", buf, v127);
          LOBYTE(v157) = 16;
          v129 = 0;
          if (__nwlog_fault(v63, &v157, &v129))
          {
            if (v157 == 17)
            {
              v64 = __nwlog_obj();
              v65 = v157;
              if (os_log_type_enabled(v64, v157))
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "send_data_callback";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v62;
                v66 = "%{public}s %{public}s did not write complete frame";
LABEL_97:
                _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0x16u);
              }
            }

            else if (v129 == 1)
            {
              v67 = __nw_create_backtrace_string();
              v64 = __nwlog_obj();
              v65 = v157;
              v68 = os_log_type_enabled(v64, v157);
              if (v67)
              {
                if (v68)
                {
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "send_data_callback";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v62;
                  HIWORD(buf[2]) = 2082;
                  *v160 = v67;
                  _os_log_impl(&dword_181A37000, v64, v65, "%{public}s %{public}s did not write complete frame, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v67);
                goto LABEL_98;
              }

              if (v68)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "send_data_callback";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v62;
                v66 = "%{public}s %{public}s did not write complete frame, no backtrace";
                goto LABEL_97;
              }
            }

            else
            {
              v64 = __nwlog_obj();
              v65 = v157;
              if (os_log_type_enabled(v64, v157))
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "send_data_callback";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v62;
                v66 = "%{public}s %{public}s did not write complete frame, backtrace limit exceeded";
                goto LABEL_97;
              }
            }
          }

LABEL_98:
          if (v63)
          {
            free(v63);
          }

          v69 = 4294966394;
          goto LABEL_101;
        }

LABEL_58:
        *(v49 + 40) = &v157;
        v157 = v49;
        v158 = v156;
        v155 = 0;
        v156 = &v155;
        buf[0] = MEMORY[0x1E69E9820];
        buf[1] = 0x40000000;
        buf[2] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        *v160 = &__block_descriptor_tmp_21_49595;
        v160[8] = 0;
        do
        {
          v50 = v157;
          if (!v157)
          {
            break;
          }

          v51 = *(v157 + 32);
          v52 = *(v157 + 40);
          v53 = (v51 + 40);
          if (!v51)
          {
            v53 = &v158;
          }

          *v53 = v52;
          *v52 = v51;
          *(v50 + 32) = 0;
          *(v50 + 40) = 0;
        }

        while (((buf[2])(buf) & 1) != 0);
        goto LABEL_63;
      }
    }
  }

  v85 = __nwlog_obj();
  v86 = a6 + 205;
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "send_data_callback";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = a6 + 205;
  v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s %{public}s output handler has no get_output_frames callback", buf, 22);
  LOBYTE(type) = 16;
  LOBYTE(v146) = 0;
  if (!__nwlog_fault(v71, &type, &v146))
  {
    goto LABEL_183;
  }

  if (type == 17)
  {
    v87 = __nwlog_obj();
    v88 = type;
    if (os_log_type_enabled(v87, type))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v86;
      v74 = "%{public}s %{public}s output handler has no get_output_frames callback";
LABEL_181:
      v112 = v87;
      v113 = v88;
      v114 = 22;
      goto LABEL_182;
    }

    goto LABEL_183;
  }

  if (v146 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    v87 = __nwlog_obj();
    v88 = type;
    v98 = os_log_type_enabled(v87, type);
    if (!backtrace_string)
    {
      if (v98)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_data_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v86;
        v74 = "%{public}s %{public}s output handler has no get_output_frames callback, no backtrace";
        goto LABEL_181;
      }

      goto LABEL_183;
    }

    if (v98)
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_data_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v86;
      HIWORD(buf[2]) = 2082;
      *v160 = backtrace_string;
      v91 = "%{public}s %{public}s output handler has no get_output_frames callback, dumping backtrace:%{public}s";
      v92 = v87;
      v93 = v88;
      v94 = 32;
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  v87 = __nwlog_obj();
  v88 = type;
  if (os_log_type_enabled(v87, type))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "send_data_callback";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v86;
    v74 = "%{public}s %{public}s output handler has no get_output_frames callback, backtrace limit exceeded";
    goto LABEL_181;
  }

LABEL_183:
  if (v71)
  {
    free(v71);
  }

  return 4294966394;
}

uint64_t nw_socket_allocate_output_frame(uint64_t a1, uint64_t count)
{
  v37 = *MEMORY[0x1E69E9840];
  external = *(a1 + 216);
  if (external)
  {
    v5 = (a1 + 224);
    v6 = *(external + 16);
    v7 = *(external + 24);
    if (v6)
    {
      v5 = (v6 + 24);
    }

    *v5 = v7;
    *v7 = v6;
    *(external + 16) = 0;
    *(external + 24) = 0;
    v8 = nw_frame_uses_external_data(external);
    if (!count || v8)
    {
      v10 = external;
      v9 = 0;
    }

    else
    {
      v9 = nw_calloc_type<unsigned char>(count);
      v10 = external;
    }

    nw_frame_reset(v10, v9, count, nw_socket_frame_output_finalizer, a1);
    return external;
  }

  if ((*(a1 + 317) & 0x1000) != 0)
  {
    external = nw_frame_create_external(0, count, nw_socket_frame_output_finalizer, a1);
    if (external)
    {
      return external;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v34 = "nw_socket_allocate_output_frame";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_create_external failed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v34 = "nw_socket_allocate_output_frame";
      v15 = "%{public}s nw_frame_create_external failed";
    }

    else
    {
      if (v31 == 1)
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
            v34 = "nw_socket_allocate_output_frame";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s nw_frame_create_external failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_42;
        }

        if (!v22)
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v34 = "nw_socket_allocate_output_frame";
        v15 = "%{public}s nw_frame_create_external failed, no backtrace";
        v27 = v20;
        v28 = v21;
        goto LABEL_36;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v34 = "nw_socket_allocate_output_frame";
      v15 = "%{public}s nw_frame_create_external failed, backtrace limit exceeded";
    }

    v27 = v13;
    v28 = v14;
LABEL_36:
    _os_log_impl(&dword_181A37000, v27, v28, v15, buf, 0xCu);
    goto LABEL_43;
  }

  if (count)
  {
    v11 = nw_calloc_type<unsigned char>(count);
    external = nw_frame_create(0, v11, count, nw_socket_frame_output_finalizer, a1);
    if (external)
    {
      return external;
    }
  }

  else
  {
    external = nw_frame_create(0, 0, 0, nw_socket_frame_output_finalizer, a1);
    v11 = 0;
    if (external)
    {
      return external;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_socket_allocate_output_frame";
  backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_create failed", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(backtrace_string, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v34 = "nw_socket_allocate_output_frame";
      v19 = "%{public}s nw_frame_create failed";
LABEL_39:
      v29 = v17;
      v30 = v18;
LABEL_40:
      _os_log_impl(&dword_181A37000, v29, v30, v19, buf, 0xCu);
      goto LABEL_41;
    }

    if (v31 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v34 = "nw_socket_allocate_output_frame";
      v19 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
      goto LABEL_39;
    }

    v23 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    v26 = os_log_type_enabled(gLogObj, type);
    if (v23)
    {
      if (v26)
      {
        *buf = 136446466;
        v34 = "nw_socket_allocate_output_frame";
        v35 = 2082;
        v36 = v23;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v23);
    }

    else if (v26)
    {
      *buf = 136446210;
      v34 = "nw_socket_allocate_output_frame";
      v19 = "%{public}s nw_frame_create failed, no backtrace";
      v29 = v24;
      v30 = v25;
      goto LABEL_40;
    }
  }

LABEL_41:
  if (backtrace_string)
  {
LABEL_42:
    free(backtrace_string);
  }

LABEL_43:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

uint64_t nw_socket_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_socket_get_output_frames";
    v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v91) = 0;
    if (__nwlog_fault(v78, type, &v91))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (os_log_type_enabled(v79, type[0]))
        {
          *buf = 136446210;
          v94 = "nw_socket_get_output_frames";
          v81 = "%{public}s called with null protocol";
LABEL_158:
          _os_log_impl(&dword_181A37000, v79, v80, v81, buf, 0xCu);
        }
      }

      else if (v91 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v79 = __nwlog_obj();
        v80 = type[0];
        v83 = os_log_type_enabled(v79, type[0]);
        if (backtrace_string)
        {
          if (v83)
          {
            *buf = 136446466;
            v94 = "nw_socket_get_output_frames";
            v95 = 2082;
            *v96 = backtrace_string;
            _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_159;
        }

        if (v83)
        {
          *buf = 136446210;
          v94 = "nw_socket_get_output_frames";
          v81 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_158;
        }
      }

      else
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (os_log_type_enabled(v79, type[0]))
        {
          *buf = 136446210;
          v94 = "nw_socket_get_output_frames";
          v81 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_158;
        }
      }
    }

LABEL_159:
    if (v78)
    {
      free(v78);
    }

    return 0;
  }

  v10 = a1;
  handle = a1->handle;
  v12 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v13 = 1;
    goto LABEL_11;
  }

  v12 = *a1[1].flow_id;
  if (v12)
  {
LABEL_6:
    callbacks = v12[1].callbacks;
    v13 = 0;
    if (callbacks)
    {
      v12[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v13 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v15 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v15 = *a1[1].flow_id;
LABEL_18:
    a6->tqh_first = 0;
    a6->tqh_last = &a6->tqh_first;
    v21 = (&v15[6].callbacks + 5);
    LOWORD(v22) = *(&v15[6].callbacks + 5);
    if ((v22 & 0x4800) != 0)
    {
      goto LABEL_19;
    }

    if (*(&v15[6].callbacks + 5) & 0x8000) != 0 && (HIBYTE(v15[6].callbacks))
    {
      if ((v22 & 0x80) == 0 && gLogDatapath == 1)
      {
        v50 = v13;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v51 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v94 = "nw_socket_get_output_frames";
          v95 = 2082;
          *v96 = v15 + 420;
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Ignoring write while waiting for TFO", buf, 0x16u);
        }

        v23 = 0;
        if ((v50 & 1) == 0)
        {
          goto LABEL_66;
        }

        return v23;
      }

LABEL_19:
      v23 = 0;
      if (v13)
      {
        return v23;
      }

      goto LABEL_66;
    }

    output_handler = v15[4].output_handler;
    if (output_handler != 2)
    {
      if (output_handler != 1 || !a5 || !a4)
      {
LABEL_62:
        v43 = v13;
        if ((v22 & 0x800) == 0)
        {
          *v21 = v22 | 0x800;
          nw_queue_resume_source(v15[3].handle);
        }

        nw_socket_set_send_low_water_mark(&v15[1].output_handler, 1u);
        v23 = 0;
        v13 = v43;
LABEL_65:
        if (v13)
        {
          return v23;
        }

        goto LABEL_66;
      }

      v86 = v13;
      v23 = 0;
      for (i = 0; i < a4; i += v26)
      {
        if (a4 - i >= 0x2400)
        {
          v26 = 9216;
        }

        else
        {
          v26 = a4 - i;
        }

        output_frame = nw_socket_allocate_output_frame(&v15[1].output_handler, v26);
        if (!output_frame)
        {
          break;
        }

        *(output_frame + 16) = 0;
        name = v15[5].identifier->name;
        *(output_frame + 24) = name;
        *name = output_frame;
        v15[5].identifier = (output_frame + 16);
        *(output_frame + 32) = 0;
        tqh_last = a6->tqh_last;
        *(output_frame + 40) = tqh_last;
        *tqh_last = output_frame;
        a6->tqh_last = (output_frame + 32);
        v23 = (v23 + 1);
        if (v23 >= a5)
        {
          break;
        }
      }

LABEL_34:
      v22 = *v21;
      if (v22 < 0 && v23)
      {
        HIBYTE(v15[6].callbacks) |= 1u;
        if (v86)
        {
          return v23;
        }

        goto LABEL_66;
      }

      v13 = v86;
      if (v23)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v86 = v13;
    if (a4 <= 0x10000)
    {
      v52 = 0x10000;
      goto LABEL_124;
    }

    v91 = 4;
    *type = 0;
    if (!getsockopt(HIDWORD(v15[4].callbacks), 0xFFFF, 4132, type, &v91))
    {
LABEL_101:
      v89 = 4;
      *v90 = 0x10000;
      if (!getsockopt(HIDWORD(v15[4].callbacks), 0xFFFF, 4097, v90, &v89))
      {
        v65 = *v90;
LABEL_123:
        v52 = v65 - *type;
LABEL_124:
        v71 = 0;
        v23 = 0;
        if (a3)
        {
          goto LABEL_127;
        }

LABEL_125:
        if (!v23)
        {
          do
          {
            if (v52 == v71)
            {
              break;
            }

            v73 = a4 - v71 >= v52 - v71 ? v52 - v71 : a4 - v71;
            if (!v73 && v23)
            {
              break;
            }

            v74 = nw_socket_allocate_output_frame(&v15[1].output_handler, v73);
            if (!v74)
            {
              break;
            }

            *(v74 + 16) = 0;
            v75 = v15[5].identifier->name;
            *(v74 + 24) = v75;
            *v75 = v74;
            v15[5].identifier = (v74 + 16);
            *(v74 + 32) = 0;
            v76 = a6->tqh_last;
            *(v74 + 40) = v76;
            *v76 = v74;
            a6->tqh_last = (v74 + 32);
            v23 = (v23 + 1);
            v71 += v73;
            if (v71 >= a3)
            {
              goto LABEL_125;
            }

LABEL_127:
            ;
          }

          while (!v23 || a4 > v71);
        }

        goto LABEL_34;
      }

      v58 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v59 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v94 = "nw_socket_get_output_frames";
        v95 = 2082;
        *v96 = v15 + 420;
        *&v96[8] = 1024;
        *&v96[10] = v58;
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d", buf, 0x1Cu);
      }

      v60 = __nwlog_obj();
      *buf = 136446466;
      v94 = "nw_socket_get_output_frames";
      v95 = 1024;
      *v96 = v58;
      LODWORD(v84) = 18;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d", buf, v84);
      v88 = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (__nwlog_fault(v61, &v88, &v87))
      {
        if (v88 == OS_LOG_TYPE_FAULT)
        {
          v62 = __nwlog_obj();
          v63 = v88;
          if (os_log_type_enabled(v62, v88))
          {
            *buf = 136446466;
            v94 = "nw_socket_get_output_frames";
            v95 = 1024;
            *v96 = v58;
            v64 = "%{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d";
LABEL_118:
            v69 = v62;
            v70 = v63;
LABEL_119:
            _os_log_impl(&dword_181A37000, v69, v70, v64, buf, 0x12u);
          }
        }

        else if (v87 == 1)
        {
          v66 = __nw_create_backtrace_string();
          v67 = __nwlog_obj();
          v85 = v88;
          v68 = os_log_type_enabled(v67, v88);
          if (v66)
          {
            if (v68)
            {
              *buf = 136446722;
              v94 = "nw_socket_get_output_frames";
              v95 = 1024;
              *v96 = v58;
              *&v96[4] = 2082;
              *&v96[6] = v66;
              _os_log_impl(&dword_181A37000, v67, v85, "%{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v66);
            goto LABEL_120;
          }

          if (v68)
          {
            *buf = 136446466;
            v94 = "nw_socket_get_output_frames";
            v95 = 1024;
            *v96 = v58;
            v64 = "%{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d, no backtrace";
            v69 = v67;
            v70 = v85;
            goto LABEL_119;
          }
        }

        else
        {
          v62 = __nwlog_obj();
          v63 = v88;
          if (os_log_type_enabled(v62, v88))
          {
            *buf = 136446466;
            v94 = "nw_socket_get_output_frames";
            v95 = 1024;
            *v96 = v58;
            v64 = "%{public}s getsockopt SO_SNDBUF failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_118;
          }
        }
      }

LABEL_120:
      if (v61)
      {
        free(v61);
      }

      v65 = 0x10000;
      goto LABEL_123;
    }

    v36 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v94 = "nw_socket_get_output_frames";
      v95 = 2082;
      *v96 = v15 + 420;
      *&v96[8] = 1024;
      *&v96[10] = v36;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_NWRITE failed %{darwin.errno}d", buf, 0x1Cu);
    }

    v38 = __nwlog_obj();
    *buf = 136446466;
    v94 = "nw_socket_get_output_frames";
    v95 = 1024;
    *v96 = v36;
    v90[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v89) = 0;
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s getsockopt SO_NWRITE failed %{darwin.errno}d", buf, 18);
    if (__nwlog_fault(v39, v90, &v89))
    {
      if (v90[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v90[0];
        if (os_log_type_enabled(v40, v90[0]))
        {
          *buf = 136446466;
          v94 = "nw_socket_get_output_frames";
          v95 = 1024;
          *v96 = v36;
          v42 = "%{public}s getsockopt SO_NWRITE failed %{darwin.errno}d";
LABEL_96:
          v56 = v40;
          v57 = v41;
LABEL_97:
          _os_log_impl(&dword_181A37000, v56, v57, v42, buf, 0x12u);
        }
      }

      else if (v89 == 1)
      {
        v53 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        HIDWORD(v84) = v90[0];
        v55 = os_log_type_enabled(v54, v90[0]);
        if (v53)
        {
          if (v55)
          {
            *buf = 136446722;
            v94 = "nw_socket_get_output_frames";
            v95 = 1024;
            *v96 = v36;
            *&v96[4] = 2082;
            *&v96[6] = v53;
            _os_log_impl(&dword_181A37000, v54, BYTE4(v84), "%{public}s getsockopt SO_NWRITE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v53);
          goto LABEL_98;
        }

        if (v55)
        {
          *buf = 136446466;
          v94 = "nw_socket_get_output_frames";
          v95 = 1024;
          *v96 = v36;
          v42 = "%{public}s getsockopt SO_NWRITE failed %{darwin.errno}d, no backtrace";
          v56 = v54;
          v57 = BYTE4(v84);
          goto LABEL_97;
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = v90[0];
        if (os_log_type_enabled(v40, v90[0]))
        {
          *buf = 136446466;
          v94 = "nw_socket_get_output_frames";
          v95 = 1024;
          *v96 = v36;
          v42 = "%{public}s getsockopt SO_NWRITE failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_96;
        }
      }
    }

LABEL_98:
    if (v39)
    {
      free(v39);
    }

    *type = 0;
    goto LABEL_101;
  }

  v16 = v13;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v94 = "nw_socket_get_output_frames";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v91) = 0;
  if (!__nwlog_fault(v17, type, &v91))
  {
    goto LABEL_47;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v94 = "nw_socket_get_output_frames";
    v20 = "%{public}s called with null socket_handler";
LABEL_45:
    v34 = v18;
    v35 = v19;
LABEL_46:
    _os_log_impl(&dword_181A37000, v34, v35, v20, buf, 0xCu);
    goto LABEL_47;
  }

  if (v91 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v94 = "nw_socket_get_output_frames";
    v20 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_45;
  }

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
      *buf = 136446466;
      v94 = "nw_socket_get_output_frames";
      v95 = 2082;
      *v96 = v30;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v30);
  }

  else if (v33)
  {
    *buf = 136446210;
    v94 = "nw_socket_get_output_frames";
    v20 = "%{public}s called with null socket_handler, no backtrace";
    v34 = v31;
    v35 = v32;
    goto LABEL_46;
  }

LABEL_47:
  if (v17)
  {
    free(v17);
  }

  v23 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_66:
    v44 = v10->handle;
    if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v10 = *v10[1].flow_id) != 0)
    {
      v45 = v10[1].callbacks;
      if (v45)
      {
        v46 = (v45 - 1);
        v10[1].callbacks = v46;
        if (!v46)
        {
          v47 = *v10[1].flow_id;
          if (v47)
          {
            *v10[1].flow_id = 0;
            v47[2](v47);
            _Block_release(v47);
          }

          if (v10[1].flow_id[8])
          {
            v48 = *v10[1].flow_id;
            if (v48)
            {
              _Block_release(v48);
            }
          }

          free(v10);
        }
      }
    }
  }

  return v23;
}

uint64_t ___ZL18send_data_callbackP15nghttp2_sessionP13nghttp2_framePKhmP19nghttp2_data_sourcePv_block_invoke(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v79 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v79);
  v6 = v4;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7 > 8)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    if (!v79)
    {
      LODWORD(v8) = 0;
      goto LABEL_43;
    }

    if (9 - v7 >= v79)
    {
      v8 = v79;
    }

    else
    {
      v8 = (9 - v7);
    }

    memcpy(v4, (*(a1 + 56) + v7), v8);
    if (gLogDatapath == 1)
    {
      v61 = __nwlog_obj();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(a1 + 64);
        *buf = 136446722;
        v81 = "send_data_callback_block_invoke";
        if (v62)
        {
          v63 = (v62 + 205);
        }

        else
        {
          v63 = "";
        }

        v82 = 2082;
        v83 = v63;
        v84 = 1024;
        LODWORD(v85) = v8;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes of frame header", buf, 0x1Cu);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) += v8;
    LODWORD(v7) = *(*(*(a1 + 32) + 8) + 24);
  }

  v9 = *(*(a1 + 72) + 16);
  if (v9)
  {
    if (v7 <= 9)
    {
      if (v79 <= v8)
      {
        goto LABEL_43;
      }

      v6[v8] = v9 - 1;
      if (gLogDatapath == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = *(a1 + 64);
          *buf = 136446722;
          v81 = "send_data_callback_block_invoke";
          if (v65)
          {
            v66 = (v65 + 205);
          }

          else
          {
            v66 = "";
          }

          v82 = 2082;
          v83 = v66;
          v84 = 1024;
          LODWORD(v85) = 1;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %d byte of padding length", buf, 0x1Cu);
        }
      }

      LODWORD(v8) = v8 + 1;
      LODWORD(v7) = ++*(*(*(a1 + 32) + 8) + 24);
      v9 = *(*(a1 + 72) + 16);
    }

    if (v7 >= *(a1 + 112) + ~v9)
    {
LABEL_24:
      if (v9 < 2)
      {
        goto LABEL_43;
      }

      v17 = v79 - v8;
      if (v79 <= v8)
      {
        goto LABEL_43;
      }

      v18 = ~*(*(*(a1 + 48) + 8) + 24) + v9;
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      bzero(&v6[v8], v19);
      if (gLogDatapath == 1)
      {
        v67 = __nwlog_obj();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          v68 = *(a1 + 64);
          *buf = 136446722;
          v81 = "send_data_callback_block_invoke";
          if (v68)
          {
            v69 = (v68 + 205);
          }

          else
          {
            v69 = "";
          }

          v82 = 2082;
          v83 = v69;
          v84 = 1024;
          LODWORD(v85) = v19;
          _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes of padding", buf, 0x1Cu);
        }
      }

      LODWORD(v8) = v19 + v8;
      *(*(*(a1 + 32) + 8) + 24) += v19;
      v20 = *(a1 + 48);
      goto LABEL_41;
    }

    v10 = v79 - v8;
    if (v79 > v8)
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v78 = 0;
      v12 = *(a1 + 80);
      v13 = nw_frame_unclaimed_bytes(*(a1 + 88), &v78);
      if (v13)
      {
        v14 = v12 - v11;
        if (v12 - v11 >= v10)
        {
          v14 = v10;
        }

        if (v14 >= v78)
        {
          v15 = v78;
        }

        else
        {
          v15 = v14;
        }

        memcpy(&v6[v8], v13, v15);
        if (gLogDatapath == 1)
        {
          v70 = __nwlog_obj();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            v71 = *(a1 + 64);
            *buf = 136446722;
            v81 = "send_data_callback_block_invoke";
            if (v71)
            {
              v72 = (v71 + 205);
            }

            else
            {
              v72 = "";
            }

            v82 = 2082;
            v83 = v72;
            v84 = 1024;
            LODWORD(v85) = v15;
            _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes of body data (padding)", buf, 0x1Cu);
          }
        }

        nw_frame_claim(*(a1 + 88), v16, v15, 0);
        LODWORD(v8) = v15 + v8;
        *(*(*(a1 + 32) + 8) + 24) += v15;
        *(*(*(a1 + 40) + 8) + 24) += v15;
        v9 = *(*(a1 + 72) + 16);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = *(a1 + 64);
      if (v35)
      {
        v36 = (v35 + 205);
      }

      else
      {
        v36 = "";
      }

      *buf = 136446466;
      v81 = "send_data_callback_block_invoke";
      v82 = 2082;
      v83 = v36;
      v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s unexpected NULL in source frame", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v37, &type, &v76))
      {
        goto LABEL_99;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v38, type))
        {
          v40 = *(a1 + 64);
          if (v40)
          {
            v41 = (v40 + 205);
          }

          else
          {
            v41 = "";
          }

LABEL_56:
          *buf = 136446466;
          v81 = "send_data_callback_block_invoke";
          v82 = 2082;
          v83 = v41;
          v42 = "%{public}s %{public}s unexpected NULL in source frame";
LABEL_98:
          _os_log_impl(&dword_181A37000, v38, v39, v42, buf, 0x16u);
          goto LABEL_99;
        }

        goto LABEL_99;
      }

      if (v76 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type;
        v47 = os_log_type_enabled(v38, type);
        if (backtrace_string)
        {
          if (v47)
          {
            v48 = *(a1 + 64);
            if (v48)
            {
              v49 = (v48 + 205);
            }

            else
            {
              v49 = "";
            }

LABEL_78:
            *buf = 136446722;
            v81 = "send_data_callback_block_invoke";
            v82 = 2082;
            v83 = v49;
            v84 = 2082;
            v85 = backtrace_string;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s %{public}s unexpected NULL in source frame, dumping backtrace:%{public}s", buf, 0x20u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }

        if (!v47)
        {
          goto LABEL_99;
        }

        v55 = *(a1 + 64);
        if (v55)
        {
          v56 = (v55 + 205);
        }

        else
        {
          v56 = "";
        }

        goto LABEL_97;
      }

      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_99;
      }

      v52 = *(a1 + 64);
      if (v52)
      {
        v53 = (v52 + 205);
      }

      else
      {
        v53 = "";
      }

      goto LABEL_84;
    }

LABEL_43:
    nw_frame_claim(a2, v5, v8, 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v27, v8, 0);
    v28 = (*(a1 + 96) + 8);
    v29 = (a2 + 32);
    v30 = *(a2 + 32);
    v31 = *(a2 + 40);
    if (v30)
    {
      v28 = (v30 + 40);
    }

    *v28 = v31;
    *v31 = v30;
    *v29 = 0;
    *(a2 + 40) = 0;
    v32 = *(a1 + 104);
    v33 = *(v32 + 8);
    *(a2 + 40) = v33;
    *v33 = a2;
    *(v32 + 8) = v29;
    if (gLogDatapath == 1)
    {
      v58 = __nwlog_obj();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a1 + 64);
        *buf = 136446722;
        v81 = "send_data_callback_block_invoke";
        if (v59)
        {
          v60 = (v59 + 205);
        }

        else
        {
          v60 = "";
        }

        v82 = 2082;
        v83 = v60;
        v84 = 1024;
        LODWORD(v85) = v8;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s copied %u bytes into output frame", buf, 0x1Cu);
      }
    }

    return 1;
  }

  if (v7 >= *(a1 + 112))
  {
    goto LABEL_43;
  }

  v21 = v79 - v8;
  if (v79 <= v8)
  {
    goto LABEL_43;
  }

  v22 = *(*(*(a1 + 40) + 8) + 24);
  v78 = 0;
  v23 = *(a1 + 80);
  v24 = nw_frame_unclaimed_bytes(*(a1 + 88), &v78);
  if (v24)
  {
    v25 = v23 - v22;
    if (v23 - v22 >= v21)
    {
      v25 = v21;
    }

    if (v25 >= v78)
    {
      v19 = v78;
    }

    else
    {
      v19 = v25;
    }

    memcpy(&v6[v8], v24, v19);
    if (gLogDatapath == 1)
    {
      v73 = __nwlog_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        v74 = *(a1 + 64);
        *buf = 136446722;
        v81 = "send_data_callback_block_invoke";
        if (v74)
        {
          v75 = (v74 + 205);
        }

        else
        {
          v75 = "";
        }

        v82 = 2082;
        v83 = v75;
        v84 = 1024;
        LODWORD(v85) = v19;
        _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes of body data (no padding)", buf, 0x1Cu);
      }
    }

    nw_frame_claim(*(a1 + 88), v26, v19, 0);
    LODWORD(v8) = v19 + v8;
    *(*(*(a1 + 32) + 8) + 24) += v19;
    v20 = *(a1 + 40);
LABEL_41:
    *(*(v20 + 8) + 24) += v19;
    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = *(a1 + 64);
  if (v43)
  {
    v44 = (v43 + 205);
  }

  else
  {
    v44 = "";
  }

  *buf = 136446466;
  v81 = "send_data_callback_block_invoke";
  v82 = 2082;
  v83 = v44;
  v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s unexpected NULL in source frame", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v37, &type, &v76))
  {
    goto LABEL_99;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v76 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v50 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v50)
        {
          v51 = *(a1 + 64);
          if (v51)
          {
            v49 = (v51 + 205);
          }

          else
          {
            v49 = "";
          }

          goto LABEL_78;
        }

LABEL_79:
        free(backtrace_string);
        goto LABEL_99;
      }

      if (!v50)
      {
        goto LABEL_99;
      }

      v57 = *(a1 + 64);
      if (v57)
      {
        v56 = (v57 + 205);
      }

      else
      {
        v56 = "";
      }

LABEL_97:
      *buf = 136446466;
      v81 = "send_data_callback_block_invoke";
      v82 = 2082;
      v83 = v56;
      v42 = "%{public}s %{public}s unexpected NULL in source frame, no backtrace";
      goto LABEL_98;
    }

    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_99;
    }

    v54 = *(a1 + 64);
    if (v54)
    {
      v53 = (v54 + 205);
    }

    else
    {
      v53 = "";
    }

LABEL_84:
    *buf = 136446466;
    v81 = "send_data_callback_block_invoke";
    v82 = 2082;
    v83 = v53;
    v42 = "%{public}s %{public}s unexpected NULL in source frame, backtrace limit exceeded";
    goto LABEL_98;
  }

  v38 = __nwlog_obj();
  v39 = type;
  if (os_log_type_enabled(v38, type))
  {
    v45 = *(a1 + 64);
    if (v45)
    {
      v41 = (v45 + 205);
    }

    else
    {
      v41 = "";
    }

    goto LABEL_56;
  }

LABEL_99:
  if (v37)
  {
    free(v37);
  }

  return 0;
}