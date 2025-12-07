uint64_t __nw_socket_protocol_identifier_block_invoke()
{
  byte_1EA83FB7F = 0;
  unk_1EA83FB77 = 0;
  unk_1EA83FB67 = 0u;
  strcpy(&nw_socket_protocol_identifier::identifier, "socket");
  qword_1EA83FB80 = 0x100000003;
  return nw_protocol_register_extended(&nw_socket_protocol_identifier::identifier, nw_protocol_socket_create);
}

char *nw_protocol_socket_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v3 = a3;
  if (nw_socket_protocol_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
    v3 = a3;
  }

  if (nw_socket_protocol_callbacks(void)::onceToken != -1)
  {
    v7 = v3;
    dispatch_once(&nw_socket_protocol_callbacks(void)::onceToken, &__block_literal_global_17_67176);
    v3 = v7;
  }

  v4 = nw_protocol_new(408, v3, &nw_socket_protocol_identifier::identifier, nw_socket_protocol_callbacks(void)::callbacks);
  *(v4 + 27) = 0;
  v4 += 216;
  *(v4 - 20) = 0;
  *(v4 - 152) &= ~1u;
  *(v4 - 17) = 0;
  *(v4 - 128) &= ~1u;
  *(v4 - 9) = 0;
  *(v4 - 64) &= ~1u;
  *(v4 - 7) = -1;
  *(v4 - 5) = 6159;
  *(v4 + 2) = 0;
  *(v4 + 3) = v4 + 16;
  *(v4 + 4) = 0;
  *(v4 + 5) = v4 + 32;
  *(v4 + 6) = 0;
  *(v4 + 7) = v4 + 48;
  *(v4 + 8) = 0;
  *(v4 + 9) = v4 + 64;
  *(v4 + 10) = 0;
  *(v4 + 11) = v4 + 80;
  *(v4 + 1) = v4;
  return v4 - 312;
}

void ___ZL28nw_socket_protocol_callbacksv_block_invoke()
{
  nw_socket_protocol_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_add_input_handler);
  nw_protocol_callbacks_set_replace_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_replace_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_remove_input_handler);
  nw_protocol_callbacks_set_input_available(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_input_available);
  nw_protocol_callbacks_set_input_finished(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_input_finished);
  nw_protocol_callbacks_set_output_available(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_output_available);
  nw_protocol_callbacks_set_output_finished(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_output_finished);
  nw_protocol_callbacks_set_get_input_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_finalize_output_frames);
  nw_protocol_callbacks_set_get_parameters(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_parameters);
  nw_protocol_callbacks_set_get_path(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_path);
  nw_protocol_callbacks_set_updated_path(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_updated_path);
  nw_protocol_callbacks_set_get_local_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_local);
  nw_protocol_callbacks_set_get_remote_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_remote);
  nw_protocol_callbacks_set_get_output_local_endpoint(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_local);
  nw_protocol_callbacks_set_get_output_interface(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_get_output_interface);
  nw_protocol_callbacks_set_waiting_for_output(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_waiting_for_output);
  nw_protocol_callbacks_set_connect(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_connect);
  nw_protocol_callbacks_set_disconnect(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_disconnect);
  nw_protocol_callbacks_set_error(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_error);
  nw_protocol_callbacks_set_reset(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_reset);
  nw_protocol_callbacks_set_copy_info(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_copy_info);
  nw_protocol_callbacks_set_register_notification(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_register_notification);
  nw_protocol_callbacks_set_unregister_notification(nw_socket_protocol_callbacks(void)::callbacks, nw_socket_unregister_notification);
  nw_protocol_callbacks_set_notify(nw_socket_protocol_callbacks(void)::callbacks, nw_protocol_socket_notify);
  v0 = nw_socket_protocol_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_get_message_properties(v0, nw_protocol_socket_get_message_properties);
}

void ___ZL25nw_protocol_udp_callbacksv_block_invoke()
{
  nw_protocol_udp_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_add_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_remove_input_handler);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_finalize_output_frames);
  nw_protocol_callbacks_set_connected(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_connected);
  nw_protocol_callbacks_set_disconnected(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_disconnected);
  nw_protocol_callbacks_set_link_state(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_link_state);
  nw_protocol_callbacks_set_updated_path(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_updated_path);
  nw_protocol_callbacks_set_get_message_properties(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_get_message_properties);
  nw_protocol_callbacks_set_copy_info(nw_protocol_udp_callbacks(void)::callbacks, nw_protocol_udp_copy_info);
  v0 = nw_protocol_udp_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_error(v0, nw_protocol_udp_error);
}

const char **nw_mem_buffer_manager_initialize(NSObject *a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v199 = *MEMORY[0x1E69E9840];
  if (nw_mem_buffer_manager_init(void)::onceToken != -1)
  {
    dispatch_once(&nw_mem_buffer_manager_init(void)::onceToken, &__block_literal_global_66862);
  }

  if (use_malloc_memory == 1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x5E65A360uLL);
          if (v8)
          {
            goto LABEL_13;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          *buf = 136446722;
          v190 = "nw_mem_malloc_buffer_manager_initialize";
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          v191 = 2048;
          *v192 = 1;
          *&v192[8] = 2048;
          *v193 = 160;
          v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (!__nwlog_should_abort(v11))
          {
            free(v11);
LABEL_13:
            v8[5] = a3;
            v8[6] = a4;
            v12 = v8 + 12;
            v13 = 64;
            v8[7] = a3;
            v8[8] = a4;
            while (1)
            {
              v14 = *a2;
              *v12 = v14;
              if (!v14)
              {
                return v8;
              }

              ++v12;
              ++a2;
              if (--v13 <= 1)
              {
                goto LABEL_156;
              }
            }
          }

LABEL_298:
          __break(1u);
        }

        v114 = __nwlog_obj();
        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v114, 16, "%{public}s called with null (obj_cnt > 0)", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v187 = 0;
        if (__nwlog_fault(v107, type, &v187))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v108 = __nwlog_obj();
            v109 = type[0];
            if (!os_log_type_enabled(v108, type[0]))
            {
              goto LABEL_295;
            }

            *buf = 136446210;
            v190 = "nw_mem_malloc_buffer_manager_initialize";
            v110 = "%{public}s called with null (obj_cnt > 0)";
            goto LABEL_294;
          }

          if (v187 != 1)
          {
            v108 = __nwlog_obj();
            v109 = type[0];
            if (!os_log_type_enabled(v108, type[0]))
            {
              goto LABEL_295;
            }

            *buf = 136446210;
            v190 = "nw_mem_malloc_buffer_manager_initialize";
            v110 = "%{public}s called with null (obj_cnt > 0), backtrace limit exceeded";
            goto LABEL_294;
          }

          backtrace_string = __nw_create_backtrace_string();
          v108 = __nwlog_obj();
          v109 = type[0];
          v166 = os_log_type_enabled(v108, type[0]);
          if (!backtrace_string)
          {
            if (!v166)
            {
              goto LABEL_295;
            }

            *buf = 136446210;
            v190 = "nw_mem_malloc_buffer_manager_initialize";
            v110 = "%{public}s called with null (obj_cnt > 0), no backtrace";
            goto LABEL_294;
          }

          if (v166)
          {
            *buf = 136446466;
            v190 = "nw_mem_malloc_buffer_manager_initialize";
            v191 = 2082;
            *v192 = backtrace_string;
            v163 = "%{public}s called with null (obj_cnt > 0), dumping backtrace:%{public}s";
            goto LABEL_265;
          }

LABEL_266:
          free(backtrace_string);
          if (!v107)
          {
            return 0;
          }

          goto LABEL_296;
        }

LABEL_295:
        if (v107)
        {
LABEL_296:
          free(v107);
        }

        return 0;
      }

      v112 = __nwlog_obj();
      *buf = 136446210;
      v190 = "nw_mem_malloc_buffer_manager_initialize";
      v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null (obj_size > 0)", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v187 = 0;
      if (!__nwlog_fault(v107, type, &v187))
      {
        goto LABEL_295;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v108 = __nwlog_obj();
        v109 = type[0];
        if (!os_log_type_enabled(v108, type[0]))
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v110 = "%{public}s called with null (obj_size > 0)";
        goto LABEL_294;
      }

      if (v187 != 1)
      {
        v108 = __nwlog_obj();
        v109 = type[0];
        if (!os_log_type_enabled(v108, type[0]))
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v110 = "%{public}s called with null (obj_size > 0), backtrace limit exceeded";
        goto LABEL_294;
      }

      backtrace_string = __nw_create_backtrace_string();
      v108 = __nwlog_obj();
      v109 = type[0];
      v164 = os_log_type_enabled(v108, type[0]);
      if (!backtrace_string)
      {
        if (!v164)
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v110 = "%{public}s called with null (obj_size > 0), no backtrace";
        goto LABEL_294;
      }

      if (!v164)
      {
        goto LABEL_266;
      }

      *buf = 136446466;
      v190 = "nw_mem_malloc_buffer_manager_initialize";
      v191 = 2082;
      *v192 = backtrace_string;
      v163 = "%{public}s called with null (obj_size > 0), dumping backtrace:%{public}s";
LABEL_265:
      _os_log_impl(&dword_181A37000, v108, v109, v163, buf, 0x16u);
      goto LABEL_266;
    }

    v106 = __nwlog_obj();
    *buf = 136446210;
    v190 = "nw_mem_malloc_buffer_manager_initialize";
    v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v106, 16, "%{public}s called with null name", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v187 = 0;
    if (!__nwlog_fault(v107, type, &v187))
    {
      goto LABEL_295;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v187 != 1)
      {
        v108 = __nwlog_obj();
        v109 = type[0];
        if (!os_log_type_enabled(v108, type[0]))
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v110 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_294;
      }

      v159 = __nw_create_backtrace_string();
      v108 = __nwlog_obj();
      v109 = type[0];
      v160 = os_log_type_enabled(v108, type[0]);
      if (!v159)
      {
        if (!v160)
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v110 = "%{public}s called with null name, no backtrace";
        goto LABEL_294;
      }

      if (v160)
      {
        *buf = 136446466;
        v190 = "nw_mem_malloc_buffer_manager_initialize";
        v191 = 2082;
        *v192 = v159;
        _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v159);
      goto LABEL_295;
    }

    v108 = __nwlog_obj();
    v109 = type[0];
    if (!os_log_type_enabled(v108, type[0]))
    {
      goto LABEL_295;
    }

    *buf = 136446210;
    v190 = "nw_mem_malloc_buffer_manager_initialize";
    v110 = "%{public}s called with null name";
LABEL_294:
    _os_log_impl(&dword_181A37000, v108, v109, v110, buf, 0xCu);
    goto LABEL_295;
  }

  if (!a2)
  {
    v111 = __nwlog_obj();
    *buf = 136446210;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s called with null name", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v187 = 0;
    if (!__nwlog_fault(v107, type, &v187))
    {
      goto LABEL_295;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v187 != 1)
      {
        v108 = __nwlog_obj();
        v109 = type[0];
        if (!os_log_type_enabled(v108, type[0]))
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v110 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_294;
      }

      backtrace_string = __nw_create_backtrace_string();
      v108 = __nwlog_obj();
      v109 = type[0];
      v162 = os_log_type_enabled(v108, type[0]);
      if (!backtrace_string)
      {
        if (!v162)
        {
          goto LABEL_295;
        }

        *buf = 136446210;
        v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v110 = "%{public}s called with null name, no backtrace";
        goto LABEL_294;
      }

      if (!v162)
      {
        goto LABEL_266;
      }

      *buf = 136446466;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v191 = 2082;
      *v192 = backtrace_string;
      v163 = "%{public}s called with null name, dumping backtrace:%{public}s";
      goto LABEL_265;
    }

    v108 = __nwlog_obj();
    v109 = type[0];
    if (!os_log_type_enabled(v108, type[0]))
    {
      goto LABEL_295;
    }

    *buf = 136446210;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v110 = "%{public}s called with null name";
    goto LABEL_294;
  }

  if (!a3)
  {
    v113 = __nwlog_obj();
    *buf = 136446210;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null (obj_size > 0)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v187 = 0;
    if (!__nwlog_fault(v107, type, &v187))
    {
      goto LABEL_295;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v108 = __nwlog_obj();
      v109 = type[0];
      if (!os_log_type_enabled(v108, type[0]))
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_size > 0)";
      goto LABEL_294;
    }

    if (v187 != 1)
    {
      v108 = __nwlog_obj();
      v109 = type[0];
      if (!os_log_type_enabled(v108, type[0]))
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_size > 0), backtrace limit exceeded";
      goto LABEL_294;
    }

    backtrace_string = __nw_create_backtrace_string();
    v108 = __nwlog_obj();
    v109 = type[0];
    v165 = os_log_type_enabled(v108, type[0]);
    if (!backtrace_string)
    {
      if (!v165)
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_size > 0), no backtrace";
      goto LABEL_294;
    }

    if (!v165)
    {
      goto LABEL_266;
    }

    *buf = 136446466;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v191 = 2082;
    *v192 = backtrace_string;
    v163 = "%{public}s called with null (obj_size > 0), dumping backtrace:%{public}s";
    goto LABEL_265;
  }

  if (!a4)
  {
    v115 = __nwlog_obj();
    *buf = 136446210;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null (obj_cnt > 0)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v187 = 0;
    if (!__nwlog_fault(v107, type, &v187))
    {
      goto LABEL_295;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v108 = __nwlog_obj();
      v109 = type[0];
      if (!os_log_type_enabled(v108, type[0]))
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_cnt > 0)";
      goto LABEL_294;
    }

    if (v187 != 1)
    {
      v108 = __nwlog_obj();
      v109 = type[0];
      if (!os_log_type_enabled(v108, type[0]))
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_cnt > 0), backtrace limit exceeded";
      goto LABEL_294;
    }

    backtrace_string = __nw_create_backtrace_string();
    v108 = __nwlog_obj();
    v109 = type[0];
    v167 = os_log_type_enabled(v108, type[0]);
    if (!backtrace_string)
    {
      if (!v167)
      {
        goto LABEL_295;
      }

      *buf = 136446210;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v110 = "%{public}s called with null (obj_cnt > 0), no backtrace";
      goto LABEL_294;
    }

    if (v167)
    {
      *buf = 136446466;
      v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
      v191 = 2082;
      *v192 = backtrace_string;
      v163 = "%{public}s called with null (obj_cnt > 0), dumping backtrace:%{public}s";
      goto LABEL_265;
    }

    goto LABEL_266;
  }

  if (nw_mem_slab_allocator_buffer_manager_initialize(dispatch_workloop_s *,char const*,unsigned long,unsigned long)::onceToken != -1)
  {
    dispatch_once(&nw_mem_slab_allocator_buffer_manager_initialize(dispatch_workloop_s *,char const*,unsigned long,unsigned long)::onceToken, &__block_literal_global_5_66894);
  }

  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x4388A537uLL);
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446722;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v191 = 2048;
    *v192 = 1;
    *&v192[8] = 2048;
    *v193 = 160;
    v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    if (__nwlog_should_abort(v17))
    {
      goto LABEL_298;
    }

    free(v17);
  }

  *(v8 + 2) = xmmword_1E6A2E6F0;
  *(v8 + 3) = unk_1E6A2E700;
  *v8 = nw_mem_regions;
  *(v8 + 1) = unk_1E6A2E6E0;
  *(&v18 + 1) = 0;
  *(v8 + 4) = xmmword_1E6A2E710;
  v8[5] = a3;
  v8[6] = a4;
  *(v8 + 3) = 32 * (nw_mem_debug & 1);
  v19 = nw_mem_buf_seg_size;
  v8[2] = nw_mem_buf_seg_size;
  v20 = nw_mem_seg_min_buf_cnt;
  if (nw_mem_seg_min_buf_cnt < a4 && v19 / a3 < nw_mem_seg_min_buf_cnt)
  {
    v19 = -(-(nw_mem_seg_min_buf_cnt * a3) & 0xFFFFFFFFFFFFC000);
    v8[2] = v19;
    a4 = v20 + a4 / v20 * v20;
  }

  if (!v19 || (v19 & 0x3FFF) != 0)
  {
    v142 = __nwlog_obj();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *buf = 136446466;
    v190 = "nw_mem_region_params_config";
    v191 = 2082;
    *v192 = "VERIFY seglim != 0 && (seglim % NW_MEM_PAGE_SIZE) == 0 failed";
    LODWORD(v176) = 22;
    v144 = _os_log_send_and_compose_impl(v143, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s %{public}s", buf, v176);
    if (__nwlog_should_abort(v144))
    {
      goto LABEL_298;
    }

    free(v144);
  }

  if (gLogDatapath == 1)
  {
    v116 = __nwlog_obj();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      v117 = *v8;
      *buf = 136447234;
      v190 = "nw_mem_region_params_config";
      v191 = 2082;
      *v192 = v117;
      *&v192[8] = 2048;
      *v193 = v19;
      *&v193[8] = 2048;
      *&v193[10] = a3;
      *v194 = 2048;
      *&v194[2] = a4;
      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: seglim %zu objsize %zu objcnt %zu", buf, 0x34u);
    }
  }

  v186 = a1;
  v21 = -(-a3 & 0xFFFFFFFFFFFFFF80);
  if (v19 > v21)
  {
    *&v18 = 136446978;
    do
    {
      if (!(v19 % v21))
      {
        break;
      }

      if (gLogDatapath == 1)
      {
        v182 = v18;
        log = __nwlog_obj();
        v22 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        v18 = v182;
        if (v22)
        {
          v23 = *v8;
          *buf = v182;
          v190 = "nw_mem_region_params_config";
          v191 = 2082;
          *v192 = v23;
          *&v192[8] = 2048;
          *v193 = v21;
          *&v193[8] = 2048;
          *&v193[10] = v21 + 128;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: objsize %zu -> %zu", buf, 0x2Au);
          v18 = v182;
        }
      }

      v21 += 128;
    }

    while (v21 < v19);
  }

  if (v21 > v19)
  {
    *&v18 = 136446978;
    do
    {
      if (gLogDatapath == 1)
      {
        v183 = v18;
        loga = __nwlog_obj();
        v24 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
        v18 = v183;
        if (v24)
        {
          v25 = *v8;
          *buf = v183;
          v190 = "nw_mem_region_params_config";
          v191 = 2082;
          *v192 = v25;
          *&v192[8] = 2048;
          *v193 = v19;
          *&v193[8] = 2048;
          *&v193[10] = v19 + 0x4000;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: seglim %zu -> %zu", buf, 0x2Au);
          v18 = v183;
        }
      }

      v19 += 0x4000;
    }

    while (v21 > v19);
  }

  v26 = -(a4 * v21) & 0xFFFFFFFFFFFFC000;
  v27 = -v26;
  if (v19 <= -v26)
  {
    if (v19 >= -v26)
    {
      v29 = -v26;
    }

    else
    {
      v34 = v19 + (v19 >> 1);
      *&v18 = 136447746;
      do
      {
        if (v19 >= v27 || !(v27 % v19))
        {
          break;
        }

        if (gLogDatapath == 1)
        {
          v185 = v18;
          logc = __nwlog_obj();
          v35 = os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG);
          v18 = v185;
          if (v35)
          {
            v36 = *v8;
            *buf = v185;
            v190 = "nw_mem_region_params_config";
            v191 = 2082;
            *v192 = v36;
            *&v192[8] = 2048;
            *v193 = -v26;
            *&v193[8] = 2048;
            *&v193[10] = v21;
            *v194 = 2048;
            *&v194[2] = a4;
            v195 = 2048;
            v196 = v19;
            v197 = 2048;
            v198 = v19 + 0x4000;
            _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segsize %zu (%zu*%zu) seglim [+] %zu -> %zu", buf, 0x48u);
            v18 = v185;
          }
        }

        v19 += 0x4000;
      }

      while (v19 < v34);
      if (v27 % v19)
      {
        v29 = v19 - v26 - v27 % v19;
      }

      else
      {
        v29 = -v26;
      }
    }
  }

  else
  {
    if (v27 <= 0x4000)
    {
      v28 = 0x4000;
    }

    else
    {
      v28 = -v26;
    }

    if (v19 <= 0x4000)
    {
      v29 = v19;
    }

    else
    {
      *&v18 = 136447746;
      v29 = v19;
      v30 = "%{public}s %{public}s: segsize %zu (%zu*%zu) seglim [-] %zu -> %zu";
      do
      {
        if (gLogDatapath == 1)
        {
          v184 = v18;
          v31 = v30;
          logb = __nwlog_obj();
          v32 = os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG);
          v30 = v31;
          v18 = v184;
          if (v32)
          {
            v33 = *v8;
            *buf = v184;
            v190 = "nw_mem_region_params_config";
            v191 = 2082;
            *v192 = v33;
            *&v192[8] = 2048;
            *v193 = v27;
            *&v193[8] = 2048;
            *&v193[10] = v21;
            *v194 = 2048;
            *&v194[2] = a4;
            v195 = 2048;
            v196 = v29;
            v197 = 2048;
            v198 = -((0x4000 - v29) & 0xFFFFFFFFFFFFC000);
            _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, v31, buf, 0x48u);
            v30 = v31;
            v18 = v184;
          }
        }

        v29 = -((0x4000 - v29) & 0xFFFFFFFFFFFFC000);
        v19 = v29;
      }

      while (v28 < v29);
    }
  }

  if (gLogDatapath == 1)
  {
    v118 = __nwlog_obj();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      v119 = *v8;
      *buf = 136446978;
      v190 = "nw_mem_region_params_config";
      v191 = 2082;
      *v192 = v119;
      *&v192[8] = 2048;
      *v193 = v29;
      *&v193[8] = 2048;
      *&v193[10] = v19;
      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segsize %zu seglim %zu", buf, 0x2Au);
    }
  }

  if ((*(v8 + 12) & 0x10) != 0)
  {
    v37 = 1;
  }

  else
  {
    if (v19 <= v29)
    {
      v37 = v29 / v19;
    }

    else
    {
      v37 = 1;
    }

    v29 /= v37;
  }

  if (gLogDatapath == 1)
  {
    v120 = __nwlog_obj();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      v121 = *v8;
      *buf = 136446978;
      v190 = "nw_mem_region_params_config";
      v191 = 2082;
      *v192 = v121;
      *&v192[8] = 2048;
      *v193 = v37;
      *&v193[8] = 2048;
      *&v193[10] = v29;
      _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: segcnt %zu segsize %zu", buf, 0x2Au);
    }
  }

  v8[7] = v21;
  v8[8] = v29 * v37 / v21;
  v8[3] = v29;
  v8[4] = v37;
  if (gLogDatapath == 1)
  {
    v122 = __nwlog_obj();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      v123 = *v8;
      *buf = 136447490;
      v190 = "nw_mem_region_params_config";
      v191 = 2082;
      *v192 = v123;
      *&v192[8] = 2048;
      *v193 = v21;
      *&v193[8] = 2048;
      *&v193[10] = v29 * v37 / v21;
      *v194 = 2048;
      *&v194[2] = v37;
      v195 = 2048;
      v196 = v29;
      _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: objsize %zu objcnt %zu segcnt %zu segsize %zu", buf, 0x3Eu);
    }
  }

  if (gLogDatapath == 1)
  {
    v124 = *(v8 + 2);
    v125 = "";
    if (v124 == 1)
    {
      v125 = "REGIONS";
    }

    if (v124)
    {
      v126 = v125;
    }

    else
    {
      v126 = "BUF";
    }

    snprintf(type, 0x20uLL, "REGION_%s:", v126);
    if (gLogDatapath == 1)
    {
      v171 = __nwlog_obj();
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
      {
        v173 = v8[5];
        v172 = v8[6];
        v175 = v8[7];
        v174 = v8[8];
        *buf = 136447490;
        v190 = "nw_mem_region_params_config";
        v191 = 2080;
        *v192 = type;
        *&v192[8] = 1024;
        *v193 = v172;
        *&v193[4] = 1024;
        *&v193[6] = v173;
        *&v193[10] = 1024;
        *&v193[12] = v174;
        *&v193[16] = 1024;
        *v194 = v175;
        _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %-16s o:[%4u x %6u -> %4u x %6u]", buf, 0x2Eu);
      }
    }

    if (gLogDatapath)
    {
      v127 = __nwlog_obj();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
      {
        v128 = v8[7];
        v129 = v8[8];
        v130 = v8[5];
        v131 = v8[6];
        *buf = 136447234;
        v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
        v191 = 2048;
        *v192 = v128;
        *&v192[8] = 2048;
        *v193 = v130;
        *&v193[8] = 2048;
        *&v193[10] = v129;
        *v194 = 2048;
        *&v194[2] = v131;
        _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s   obj size %6zu (was %6zu) cnt %6zu (was %6zu) for REGION_BUF", buf, 0x34u);
      }
    }
  }

  if (v8[7])
  {
    v38 = *(v8 + 3);
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_216;
  }

  v132 = __nwlog_obj();
  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
  {
    v133 = 3;
  }

  else
  {
    v133 = 2;
  }

  *buf = 136446466;
  v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
  v191 = 2082;
  *v192 = "VERIFY buffer_manager->nrp[NW_MEM_REGION_BUF].nrp_c_obj_size != 0 failed";
  LODWORD(v176) = 22;
  v134 = _os_log_send_and_compose_impl(v133, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s %{public}s", buf, v176);
  if (__nwlog_should_abort(v134))
  {
    goto LABEL_298;
  }

  free(v134);
  v38 = *(v8 + 3);
  if ((v38 & 0x20) != 0)
  {
LABEL_216:
    v135 = __nwlog_obj();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    *buf = 136446466;
    v190 = "nw_mem_slab_allocator_buffer_manager_initialize";
    v191 = 2082;
    *v192 = "VERIFY !(buffer_manager->nrp[NW_MEM_REGION_BUF].nrp_cflags & NW_MEM_REGION_CR_NOCACHE) failed";
    LODWORD(v176) = 22;
    v137 = _os_log_send_and_compose_impl(v136, 0, 0, 0, &dword_181A37000, v135, 16, "%{public}s %{public}s", buf, v176);
    if (__nwlog_should_abort(v137))
    {
      goto LABEL_298;
    }

    free(v137);
    v38 = *(v8 + 3);
  }

LABEL_86:
  v39 = malloc_type_zone_calloc(g_slab_zone, 1uLL, 0x190uLL, 0x8C983D4uLL);
  if (!v39)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    v41 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v190 = "nw_mem_region_create";
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v191 = 2048;
    *v192 = 1;
    *&v192[8] = 2048;
    *v193 = 400;
    LODWORD(v176) = 32;
    v43 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s malloc_zone_calloc(..., %zu, %zu) failed", buf, v176);
    if (__nwlog_should_abort(v43))
    {
      goto LABEL_298;
    }

    free(v43);
  }

  if (v186)
  {
    dispatch_retain(v186);
    *(v39 + 34) = v186;
  }

  *(v39 + 10) = v8[2];
  v44 = v8[3];
  *(v39 + 11) = v44;
  v45 = v8[4];
  *(v39 + 31) = v45 * v44;
  *(v39 + 37) = v44 / v8[7];
  *(v39 + 12) = v45;
  *(v39 + 41) = 32;
  *(v39 + 42) = 4096;
  v46 = malloc_type_calloc(1uLL, 0x200uLL, 0x7FF16BE5uLL);
  if (!v46)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    v48 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v190 = "nw_mem_region_create";
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v191 = 2048;
    *v192 = 1;
    *&v192[8] = 2048;
    *v193 = 512;
    LODWORD(v176) = 32;
    v50 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v176);
    if (__nwlog_should_abort(v50))
    {
      goto LABEL_298;
    }

    free(v50);
    v46 = 0;
  }

  *(v39 + 44) = *(v39 + 41) - 1;
  *(v39 + 45) = v46;
  *(v39 + 43) = flsll(v8[3]) - 1;
  v51 = *(v39 + 44);
  v52 = v51 + 1;
  if (v51 != -1)
  {
    v53 = *(v39 + 45);
    if (v52 < 8)
    {
      v54 = 0;
      v55 = 0;
LABEL_103:
      v56 = v55 + 1;
      do
      {
        v57 = (v53 + 16 * v54);
        *v57 = 0;
        v57[1] = v57;
        v54 = v56++;
      }

      while (v52 > v54);
      goto LABEL_105;
    }

    v55 = 0;
    v54 = 0;
    if (v51 == -1)
    {
      goto LABEL_103;
    }

    if (HIDWORD(v51))
    {
      goto LABEL_103;
    }

    v54 = v52 & 0x1FFFFFFFCLL;
    v99 = (v53 + 32);
    v100 = 0uLL;
    v101 = v52 & 0x1FFFFFFFCLL;
    do
    {
      *&v200.val[1].f64[0] = v99 - 4;
      *&v200.val[1].f64[1] = v99 - 2;
      v102 = v99;
      v103 = v99 + 2;
      v200.val[0] = 0uLL;
      vst2q_f64(*&v200.val[1].f64[0], v200);
      vst2q_f64(v99, *&v100);
      v99 += 8;
      v101 -= 4;
    }

    while (v101);
    v55 = v52 & 0xFFFFFFFC;
    if (v52 != v54)
    {
      goto LABEL_103;
    }
  }

LABEL_105:
  *(v39 + 104) = *(v8 + 5);
  *(v39 + 120) = *(v8 + 7);
  *(v39 + 17) = v8[9];
  *(v39 + 33) = 0;
  *v39 = 0;
  *(v39 + 35) = 0;
  *(v39 + 36) = 0;
  *(v39 + 46) = 0;
  *(v39 + 47) = v39 + 368;
  *(v39 + 18) = *(v8 + 2);
  uuid_generate_random(v39 + 224);
  snprintf(v39 + 160, 0x40uLL, "%s.region.%s.%s", "NWSlab", *v8, a2);
  if (gLogDatapath == 1)
  {
    v138 = __nwlog_obj();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v190 = "nw_mem_region_create";
      v191 = 2082;
      *v192 = v39 + 160;
      *&v192[8] = 2048;
      *v193 = v39;
      _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: nwr %p ", buf, 0x20u);
    }
  }

  *(v39 + 19) = v38;
  if ((v38 & 0x10) != 0)
  {
    *(v39 + 60) |= 0x10u;
  }

  if ((v38 & 0x20) != 0)
  {
    *(v39 + 60) |= 0x20u;
  }

  v58 = *(v39 + 12) + 63;
  *(v39 + 39) = v58 >> 6;
  v59 = (v58 >> 3) & 0x1FFFFFF8;
  if (!v59)
  {
    v139 = __nwlog_obj();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *buf = 136446210;
    v190 = "nw_mem_region_create";
    LODWORD(v177) = 12;
    v141 = _os_log_send_and_compose_impl(v140, 0, 0, 0, &dword_181A37000, v139, 16, "%{public}s strict_calloc called with size 0", buf, v177);
    if (__nwlog_should_abort(v141))
    {
      goto LABEL_298;
    }

    free(v141);
  }

  v60 = malloc_type_calloc(1uLL, v59, 0x9143376AuLL);
  if (!v60)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    v62 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v190 = "nw_mem_region_create";
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v191 = 2048;
    *v192 = 1;
    *&v192[8] = 2048;
    *v193 = v59;
    LODWORD(v177) = 32;
    v64 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v177);
    if (__nwlog_should_abort(v64))
    {
      goto LABEL_298;
    }

    free(v64);
    v60 = 0;
  }

  *(v39 + 38) = v60;
  memset(v60, 255, ((*(v39 + 24) + 63) >> 3) & 0x1FFFFFF8);
  ++*(v39 + 1);
  os_unfair_lock_lock(&nw_mem_region_lock);
  *(v39 + 18) = 0;
  v65 = qword_1ED411038;
  *(v39 + 19) = qword_1ED411038;
  *v65 = v39;
  qword_1ED411038 = (v39 + 144);
  os_unfair_lock_unlock(&nw_mem_region_lock);
  if (gLogDatapath == 1)
  {
    v145 = __nwlog_obj();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
    {
      v146 = *(v39 + 11);
      v147 = *(v39 + 12);
      v148 = *(v39 + 15);
      v149 = *(v39 + 16);
      v150 = *(v39 + 19);
      *buf = 136447490;
      v190 = "nw_mem_region_create";
      v191 = 1024;
      *v192 = v146;
      *&v192[4] = 1024;
      *&v192[6] = v147;
      *v193 = 1024;
      *&v193[2] = v148;
      *&v193[6] = 1024;
      *&v193[8] = v149;
      *&v193[12] = 1024;
      *&v193[14] = v150;
      _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_DEBUG, "%{public}s   [TOTAL] seg (%u*%u) obj (%u*%u) cflags 0x%u", buf, 0x2Au);
    }
  }

  v8[10] = v39;
  v66 = v8[7];
  v67 = *(v39 + 11);
  v68 = malloc_type_zone_calloc(g_slab_zone, 1uLL, 0x308uLL, 0x3D0FF037uLL);
  if (!v68)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v69 = gLogObj;
    v70 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v190 = "nw_mem_cache_create";
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v191 = 2048;
    *v192 = 1;
    *&v192[8] = 2048;
    *v193 = 776;
    LODWORD(v177) = 32;
    v72 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s malloc_zone_calloc(..., %zu, %zu) failed", buf, v177);
    if (__nwlog_should_abort(v72))
    {
      goto LABEL_298;
    }

    free(v72);
    v68 = 0;
  }

  v73 = (-8 - v68) & 0xFFFFFFFFFFFFFF80;
  *(v73 ^ 0xFFFFFFFFFFFFFFF8) = v68;
  if (v67 <= 7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    v75 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v190 = "nw_mem_cache_create";
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v191 = 2082;
    *v192 = "nw_mem_cache_create";
    *&v192[8] = 2048;
    *v193 = 8;
    LODWORD(v177) = 32;
    v77 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s %{public}s: bad alignment %lu", buf, v177);
    if (__nwlog_should_abort(v77))
    {
      goto LABEL_298;
    }

    free(v77);
  }

  v78 = -v73;
  v79 = nw_mem_debug;
  if (nw_mem_debug)
  {
    *(176 - v73) |= 1u;
  }

  if ((v79 & 2) != 0)
  {
    *(176 - v73) |= 2u;
  }

  snprintf((96 - v73), 0x40uLL, "NWSlab.mem.%s", a2);
  *(160 - v73) = v66;
  *(168 - v73) = 8;
  *(184 - v73) = 0u;
  *(200 - v73) = 0u;
  *(248 - v73) = v67;
  *(216 - v73) = v39;
  ++*(v39 + 1);
  v80 = *(v39 + 15);
  *(240 - v73) = v80;
  v81 = -(-v66 & 0xFFFFFFFFFFFFFFF8);
  if (v80 < v81)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v82 = gLogObj;
    v83 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446978;
    v190 = "nw_mem_cache_create";
    v191 = 2048;
    if (v83)
    {
      v84 = 3;
    }

    else
    {
      v84 = 2;
    }

    *v192 = v66;
    *&v192[8] = 2048;
    *v193 = -(-v66 & 0xFFFFFFFFFFFFFFF8);
    *&v193[8] = 2048;
    *&v193[10] = v80;
    LODWORD(v177) = 42;
    v85 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s (bufsize %lu, chunksize %lu) > objsize %lu", buf, v177);
    if (__nwlog_should_abort(v85))
    {
      goto LABEL_298;
    }

    free(v85);
  }

  *(232 - v73) = v81;
  *(224 - v73) = 0;
  *(296 - v73) = 0;
  *(304 - v73) = 296 - v73;
  *(312 - v73) = 0;
  *(320 - v73) = 312 - v73;
  *(256 - v73) = xmmword_182B08E70;
  v86 = nw_calloc_type<nw_mem_bufctl_bkt>(0x40uLL);
  *(280 - v73) = *(256 - v73) - 1;
  *(288 - v73) = v86;
  *(272 - v73) = flsll(v81) - 1;
  v87 = *(280 - v73);
  v88 = v87 + 1;
  if (v87 != -1)
  {
    v89 = *(288 - v73);
    if (v88 < 0xA)
    {
      v90 = 0;
      v91 = 0;
LABEL_143:
      v92 = v91 + 1;
      do
      {
        *(v89 + 8 * v90) = 0;
        v90 = v92++;
      }

      while (v88 > v90);
      goto LABEL_145;
    }

    v91 = 0;
    v90 = 0;
    if (v87 == -1)
    {
      goto LABEL_143;
    }

    if (HIDWORD(v87))
    {
      goto LABEL_143;
    }

    v90 = v88 & 0x1FFFFFFFCLL;
    v104 = *(288 - v73);
    v105 = v88 & 0x1FFFFFFFCLL;
    do
    {
      *v104 = 0uLL;
      v104[1] = 0uLL;
      v104 += 2;
      v105 -= 4;
    }

    while (v105);
    v91 = v88 & 0xFFFFFFFC;
    if (v88 != v90)
    {
      goto LABEL_143;
    }
  }

LABEL_145:
  *(328 - v73) = 0;
  v93 = &qword_1ED40FF48;
  do
  {
    v94 = v93[12];
    v93 += 11;
  }

  while (v94 >= v81);
  *(336 - v73) = v93;
  *(512 - v73) = 0;
  *(552 - v73) = -1;
  os_unfair_lock_lock(&nw_mem_cache_lock);
  *(80 - v73) = 0;
  v95 = qword_1ED411060;
  *(88 - v73) = qword_1ED411060;
  *v95 = v78;
  qword_1ED411060 = 80 - v73;
  os_unfair_lock_unlock(&nw_mem_cache_lock);
  if (gLogDatapath == 1)
  {
    v151 = __nwlog_obj();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
    {
      v152 = *(176 - v73);
      *buf = 136446978;
      v190 = "nw_mem_cache_create";
      v191 = 2082;
      *v192 = 96 - v73;
      *&v192[8] = 2048;
      *v193 = -v73;
      *&v193[8] = 1024;
      *&v193[10] = v152;
      _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s: nwm %p mode 0x%X", buf, 0x26u);
    }
  }

  if (gLogDatapath == 1)
  {
    v153 = __nwlog_obj();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
    {
      v154 = *(160 - v73);
      v155 = *(168 - v73);
      v156 = *(232 - v73);
      v157 = *(240 - v73);
      v158 = *(248 - v73);
      *buf = 136447490;
      v190 = "nw_mem_cache_create";
      v191 = 1024;
      *v192 = v154;
      *&v192[4] = 1024;
      *&v192[6] = v155;
      *v193 = 1024;
      *&v193[2] = v156;
      *&v193[6] = 1024;
      *&v193[8] = v157;
      *&v193[12] = 1024;
      *&v193[14] = v158;
      _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s   bufsz %u align %u chunksz %u objsz %u slabsz %u", buf, 0x2Au);
    }
  }

  if (nw_mem_cache_ready == 1 && (*(176 - v73) & 1) == 0)
  {
    *(560 - v73) = **(336 - v73);
    if (gLogDatapath == 1)
    {
      v168 = __nwlog_obj();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
      {
        v169 = *(232 - v73);
        v170 = *(560 - v73);
        *buf = 136446978;
        v190 = "nw_mem_cache_magazine_enable";
        v191 = 2048;
        *v192 = -v73;
        *&v192[8] = 1024;
        *v193 = v169;
        *&v193[4] = 1024;
        *&v193[6] = v170;
        _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s nwm %p chunksize %u magsize %d", buf, 0x22u);
      }
    }
  }

  v8[11] = v78;
  if (!v73)
  {
    nw_mem_buffer_manager_close(v8);
    return 0;
  }

  v12 = v8 + 12;
  v96 = 64;
  while (1)
  {
    v97 = *a2;
    *v12 = v97;
    if (!v97)
    {
      break;
    }

    ++v12;
    ++a2;
    if (--v96 <= 1)
    {
LABEL_156:
      *v12 = 0;
      return v8;
    }
  }

  return v8;
}

void nw_protocol_callbacks_set_get_output_local_endpoint(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 200) = a2;
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null get_output_local_endpoint", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v6 = "%{public}s called with null get_output_local_endpoint";
        goto LABEL_32;
      }

      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v6 = "%{public}s called with null get_output_local_endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null get_output_local_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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
        v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v6 = "%{public}s called with null get_output_local_endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null callbacks", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v6 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v6 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v6 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_callbacks_set_get_output_interface(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 208) = a2;
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_get_output_interface";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null get_output_interface", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_get_output_interface";
        v6 = "%{public}s called with null get_output_interface";
        goto LABEL_32;
      }

      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_get_output_interface";
        v6 = "%{public}s called with null get_output_interface, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_callbacks_set_get_output_interface";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null get_output_interface, dumping backtrace:%{public}s", buf, 0x16u);
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
        v15 = "nw_protocol_callbacks_set_get_output_interface";
        v6 = "%{public}s called with null get_output_interface, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_get_output_interface";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null callbacks", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_interface";
      v6 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_interface";
      v6 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_get_output_interface";
      v6 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_callbacks_set_get_output_interface";
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_callbacks_set_register_notification(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 144) = a2;
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_register_notification";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null register_notification", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_register_notification";
        v6 = "%{public}s called with null register_notification";
        goto LABEL_32;
      }

      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_register_notification";
        v6 = "%{public}s called with null register_notification, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_callbacks_set_register_notification";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null register_notification, dumping backtrace:%{public}s", buf, 0x16u);
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
        v15 = "nw_protocol_callbacks_set_register_notification";
        v6 = "%{public}s called with null register_notification, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_register_notification";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null callbacks", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_register_notification";
      v6 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_register_notification";
      v6 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_register_notification";
      v6 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_callbacks_set_register_notification";
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_protocol_callbacks_set_unregister_notification(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 152) = a2;
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_unregister_notification";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null unregister_notification", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_unregister_notification";
        v6 = "%{public}s called with null unregister_notification";
        goto LABEL_32;
      }

      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v15 = "nw_protocol_callbacks_set_unregister_notification";
        v6 = "%{public}s called with null unregister_notification, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_callbacks_set_unregister_notification";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null unregister_notification, dumping backtrace:%{public}s", buf, 0x16u);
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
        v15 = "nw_protocol_callbacks_set_unregister_notification";
        v6 = "%{public}s called with null unregister_notification, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_callbacks_set_unregister_notification";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null callbacks", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_unregister_notification";
      v6 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_unregister_notification";
      v6 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v15 = "nw_protocol_callbacks_set_unregister_notification";
      v6 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_callbacks_set_unregister_notification";
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
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

BOOL nw_socket_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v87 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_socket_add_input_handler";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v88, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v89 = __nwlog_obj();
        v90 = type;
        if (os_log_type_enabled(v89, type))
        {
          *buf = 136446210;
          v101 = "nw_socket_add_input_handler";
          v91 = "%{public}s called with null protocol";
LABEL_209:
          _os_log_impl(&dword_181A37000, v89, v90, v91, buf, 0xCu);
        }
      }

      else if (v98 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v90 = type;
        v94 = os_log_type_enabled(v89, type);
        if (backtrace_string)
        {
          if (v94)
          {
            *buf = 136446466;
            v101 = "nw_socket_add_input_handler";
            v102 = 2082;
            v103 = backtrace_string;
            _os_log_impl(&dword_181A37000, v89, v90, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_210;
        }

        if (v94)
        {
          *buf = 136446210;
          v101 = "nw_socket_add_input_handler";
          v91 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_209;
        }
      }

      else
      {
        v89 = __nwlog_obj();
        v90 = type;
        if (os_log_type_enabled(v89, type))
        {
          *buf = 136446210;
          v101 = "nw_socket_add_input_handler";
          v91 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_209;
        }
      }
    }

LABEL_210:
    if (v88)
    {
      free(v88);
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
      v101 = "nw_socket_add_input_handler";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v98 = 0;
      if (!__nwlog_fault(v9, &type, &v98))
      {
        goto LABEL_88;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v101 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler";
        goto LABEL_86;
      }

      if (v98 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v101 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        goto LABEL_86;
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
          v101 = "nw_socket_add_input_handler";
          v102 = 2082;
          v103 = v18;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_88;
      }

      if (v21)
      {
        *buf = 136446210;
        v101 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler, no backtrace";
        v49 = v19;
        v50 = v20;
        goto LABEL_87;
      }

LABEL_88:
      if (v9)
      {
        free(v9);
      }

LABEL_90:
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_171;
    }

    v8 = *a1[1].flow_id;
  }

  if (!a2)
  {
    v92 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_socket_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v9, &type, &v98))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v101 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol";
    }

    else if (v98 == 1)
    {
      v95 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v96 = os_log_type_enabled(v10, type);
      if (v95)
      {
        if (v96)
        {
          *buf = 136446466;
          v101 = "nw_socket_add_input_handler";
          v102 = 2082;
          v103 = v95;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v95);
        goto LABEL_88;
      }

      if (!v96)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v101 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v101 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_86:
    v49 = v10;
    v50 = v11;
LABEL_87:
    _os_log_impl(&dword_181A37000, v49, v50, v12, buf, 0xCu);
    goto LABEL_88;
  }

  v13 = a2->callbacks;
  if (!v13)
  {
    goto LABEL_70;
  }

  supports_external_data = v13->supports_external_data;
  if (supports_external_data)
  {
    v15 = a2->handle;
    v16 = a2;
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = *a2[1].flow_id) != 0)
    {
      v22 = v16[1].callbacks;
      if (v22)
      {
        v16[1].callbacks = (&v22->add_input_handler + 1);
      }

      if (supports_external_data(a2))
      {
        v17 = 4096;
      }

      else
      {
        v17 = 0;
      }

      v23 = a2->handle;
      v24 = a2;
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *a2[1].flow_id) != 0)
      {
        v25 = v24[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v24[1].callbacks = v26;
          if (!v26)
          {
            v27 = *v24[1].flow_id;
            if (v27)
            {
              *v24[1].flow_id = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v24[1].flow_id[8])
            {
              v28 = *v24[1].flow_id;
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v24);
          }
        }
      }
    }

    else
    {
      v17 = supports_external_data(a2) ? 4096 : 0;
    }

    *(&v8[6].callbacks + 5) = *(&v8[6].callbacks + 5) & 0xEFFF | v17;
    v13 = a2->callbacks;
    if (!v13)
    {
      goto LABEL_70;
    }
  }

  get_parameters = v13->get_parameters;
  if (!get_parameters)
  {
    goto LABEL_70;
  }

  v30 = a2->handle;
  v31 = a2;
  if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *a2[1].flow_id) != 0)
  {
    v33 = v31[1].callbacks;
    if (v33)
    {
      v31[1].callbacks = (&v33->add_input_handler + 1);
    }

    v32 = get_parameters(a2);
    v34 = a2->handle;
    v35 = a2;
    if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = *a2[1].flow_id) != 0)
    {
      v36 = v35[1].callbacks;
      if (v36)
      {
        v37 = (v36 - 1);
        v35[1].callbacks = v37;
        if (!v37)
        {
          v38 = *v35[1].flow_id;
          if (v38)
          {
            *v35[1].flow_id = 0;
            v38[2](v38);
            _Block_release(v38);
          }

          if (v35[1].flow_id[8])
          {
            v39 = *v35[1].flow_id;
            if (v39)
            {
              _Block_release(v39);
            }
          }

          free(v35);
        }
      }
    }
  }

  else
  {
    v32 = get_parameters(a2);
  }

  if (!v32)
  {
LABEL_70:
    if ((*(&v8[6].callbacks + 5) & 0x80) != 0)
    {
      goto LABEL_90;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v101 = "nw_socket_add_input_handler";
      v102 = 2082;
      v103 = &v8[6].output_handler + 4;
      v44 = "%{public}s %{public}s Parameters are NULL when adding input_handler";
      goto LABEL_167;
    }

LABEL_170:
    if (v6)
    {
      return result;
    }

    goto LABEL_171;
  }

  v40 = _nw_parameters_copy_context();
  output_handler_context = v8[3].output_handler_context;
  if ((output_handler_context & 1) != 0 && v8[3].default_input_handler)
  {
    v45 = v40;
    os_release(v8[3].default_input_handler);
    v40 = v45;
    output_handler_context = v8[3].output_handler_context;
  }

  v8[3].default_input_handler = v40;
  LOBYTE(v8[3].output_handler_context) = output_handler_context | 1;
  v46 = _nw_parameters_copy_default_protocol_stack();
  v47 = nw_protocol_stack_copy_transport_protocol(v46);
  nw_protocol_options_get_log_id_str(v47, &v8[6].output_handler + 4, 84);
  LODWORD(v8[6].callbacks) = nw_protocol_options_get_log_id_num(v47);
  if (nw_protocol_options_is_udp(v47))
  {
    if (_nw_udp_options_get_no_metadata(v47))
    {
      v48 = 16;
    }

    else
    {
      v48 = 0;
    }

    HIBYTE(v8[6].callbacks) = HIBYTE(v8[6].callbacks) & 0xEF | v48;
  }

  else if (nw_protocol_options_is_quic(v47))
  {
    HIBYTE(v8[6].callbacks) |= 0x10u;
  }

  else if (nw_protocol_options_is_tcp(v47))
  {
    if (_nw_tcp_options_get_reset_local_port())
    {
      v51 = 0x80;
    }

    else
    {
      v51 = 0;
    }

    HIBYTE(v8[6].callbacks) = v51 & 0x80 | HIBYTE(v8[6].callbacks) & 0x7F;
  }

  if (v47)
  {
    os_release(v47);
  }

  if (v46)
  {
    os_release(v46);
  }

  ip_protocol = nw_parameters_get_ip_protocol(v32);
  v53 = ip_protocol;
  v54 = v6;
  if (ip_protocol == 17)
  {
    data_mode = 1;
  }

  else if (ip_protocol == 6)
  {
    data_mode = 2;
  }

  else
  {
    data_mode = _nw_parameters_get_data_mode();
  }

  LODWORD(v8[4].output_handler) = data_mode;
  if (_nw_parameters_get_logging_disabled(v32))
  {
    v56 = 128;
  }

  else
  {
    v56 = 0;
  }

  v57 = (&v8[6].callbacks + 5);
  *(&v8[6].callbacks + 5) = *(&v8[6].callbacks + 5) & 0xFF7F | v56;
  LODWORD(v8[4].identifier) = 9216;
  v58 = a2->callbacks;
  if (v58)
  {
    get_path = v58->get_path;
    if (get_path)
    {
      v60 = a2->handle;
      v61 = a2;
      if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *a2[1].flow_id) != 0)
      {
        v63 = v61[1].callbacks;
        if (v63)
        {
          v61[1].callbacks = (&v63->add_input_handler + 1);
        }

        v62 = get_path(a2);
        v64 = a2->handle;
        v65 = a2;
        if (v64 == &nw_protocol_ref_counted_handle || v64 == &nw_protocol_ref_counted_additional_handle && (v65 = *a2[1].flow_id) != 0)
        {
          v66 = v65[1].callbacks;
          if (v66)
          {
            v67 = (v66 - 1);
            v65[1].callbacks = v67;
            if (!v67)
            {
              v97 = v62;
              v68 = *v65[1].flow_id;
              if (v68)
              {
                *v65[1].flow_id = 0;
                v68[2](v68);
                _Block_release(v68);
              }

              if (v65[1].flow_id[8])
              {
                v69 = *v65[1].flow_id;
                if (v69)
                {
                  _Block_release(v69);
                }
              }

              free(v65);
              v62 = v97;
            }
          }
        }
      }

      else
      {
        v62 = get_path(a2);
      }

      if (v62)
      {
        v70 = v62;
        is_multilayer_packet_logging_enabled = _nw_path_is_multilayer_packet_logging_enabled(v70);

        if (is_multilayer_packet_logging_enabled)
        {
          if ((*v57 & 0x80) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v72 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v101 = "nw_socket_add_input_handler";
              v102 = 2082;
              v103 = &v8[6].output_handler + 4;
              _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Multilayer packet logging enabled", buf, 0x16u);
            }
          }

          *v57 |= 0x100u;
        }

        if (v53 == 17)
        {
          maximum_datagram_size = nw_path_get_maximum_datagram_size(v70);
          if (maximum_datagram_size >> 10 <= 8)
          {
            LODWORD(v8[4].identifier) = maximum_datagram_size;
          }
        }

        goto LABEL_145;
      }

      v56 = *v57 & 0x80;
    }
  }

  if (!v56)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v74 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v101 = "nw_socket_add_input_handler";
      v102 = 2082;
      v103 = &v8[6].output_handler + 4;
      _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to copy path, will not use multilayer packet logging", buf, 0x16u);
    }
  }

LABEL_145:
  nw_protocol_set_flow_id_from_protocol(v8, a2);
  v75 = a2->handle;
  v76 = a2;
  if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v76 = *a2[1].flow_id) != 0)
  {
    v78 = v76[1].callbacks;
    if (v78)
    {
      v76[1].callbacks = (&v78->add_input_handler + 1);
    }

    v77 = 1;
  }

  else
  {
    v77 = 0;
  }

  nw::retained_ptr<nw_protocol *>::~retained_ptr(&v8[2].callbacks);
  v8[2].callbacks = a2;
  LOBYTE(v8[2].output_handler) = v8[2].output_handler & 0xFE | v77;
  if (!nw_socket_initialize_socket(v3))
  {
    if ((*v57 & 0x80) != 0)
    {
      result = 0;
      v6 = v54;
      goto LABEL_170;
    }

    v6 = v54;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v101 = "nw_socket_add_input_handler";
      v102 = 2082;
      v103 = &v8[6].output_handler + 4;
      v44 = "%{public}s %{public}s Failed to initialize socket";
LABEL_167:
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, v44, buf, 0x16u);
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_171;
    }

    goto LABEL_170;
  }

  *&v8[4].flow_id[8] = 0x100000001;
  result = 1;
  v6 = v54;
  if (a2->output_handler || !v8)
  {
    goto LABEL_170;
  }

  nw_protocol_release(0);
  a2->output_handler = v8;
  v79 = v8->handle;
  if (v79 == &nw_protocol_ref_counted_handle || v79 == &nw_protocol_ref_counted_additional_handle && (v8 = *v8[1].flow_id) != 0)
  {
    v80 = v8[1].callbacks;
    if (v80)
    {
      v8[1].callbacks = (&v80->add_input_handler + 1);
    }
  }

  result = 1;
  if ((v54 & 1) == 0)
  {
LABEL_171:
    v81 = v3->handle;
    if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v82 = v3[1].callbacks;
      if (v82)
      {
        v83 = (v82 - 1);
        v3[1].callbacks = v83;
        if (!v83)
        {
          v84 = result;
          v85 = *v3[1].flow_id;
          if (v85)
          {
            *v3[1].flow_id = 0;
            v85[2](v85);
            _Block_release(v85);
          }

          if (v3[1].flow_id[8])
          {
            v86 = *v3[1].flow_id;
            if (v86)
            {
              _Block_release(v86);
            }
          }

          free(v3);
          return v84;
        }
      }
    }
  }

  return result;
}

void sub_181D04844(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (v4)
  {
    *a2 = v4;

    return;
  }

  v36 = a2;
  swift_beginAccess();
  v37 = *(*(a1 + 16) + 16);
  v38 = a1;
  if (!v37)
  {
    v6 = 0;
    v20 = 0;
    v8 = 0;
    v21 = 0;
    v11 = MEMORY[0x1E69E7CC8];
LABEL_31:
    *(v38 + 24) = v11;

    sub_181A554F4(v6, v20);
    sub_181A554F4(v8, v21);
    *v36 = v11;
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v12 = *(v38 + 16);
    if (v10 >= v12[2])
    {
      break;
    }

    v13 = v12[v5 + 7];
    v39 = v9;
    v40 = v12[v5 + 6];
    swift_beginAccess();
    v41 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_182083520(v12);
    }

    if (v10 >= v12[2])
    {
      goto LABEL_33;
    }

    LOWORD(v12[v5 + 11]) = -1;
    *(v38 + 16) = v12;
    swift_endAccess();
    if (v11[2])
    {
      v15 = sub_181CA266C(v40, v13);
      if (v16)
      {
        if (v10 >> 16)
        {
          goto LABEL_37;
        }

        v17 = *(v11[7] + 4 * v15 + 2);
        swift_beginAccess();
        v18 = *(v38 + 16);
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 16) = v18;
        if ((v19 & 1) == 0)
        {
          v18 = sub_182083520(v18);
        }

        if (v18[2] <= v17)
        {
          goto LABEL_38;
        }

        LOWORD(v18[8 * v17 + 11]) = v10;
        *(v38 + 16) = v18;
        swift_endAccess();
      }
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v10;
    sub_181A554F4(v6, v7);
    if (v10 == 0x10000)
    {
      goto LABEL_34;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = sub_18208C9B8;
    *(v21 + 24) = v20;
    sub_181A554F4(v8, v39);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_181CA266C(v40, v41);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_35;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if (v22)
      {
        if (v23)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_182254E38();
        if (v28)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_181CBDA98(v27, v22);
      v29 = sub_181CA266C(v40, v41);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_39;
      }

      v24 = v29;
      if (v28)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v31 = (*(v21 + 16))();
    v11[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v11[6] + 16 * v24);
    *v32 = v40;
    v32[1] = v41;
    *(v11[7] + 4 * v24) = v31;
    v33 = v11[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_36;
    }

    v11[2] = v35;
LABEL_6:
    *(v11[7] + 4 * v24 + 2) = v10;
    v5 += 8;
    v8 = sub_18208C9D4;
    v6 = sub_18208C9B8;
    v7 = v20;
    v9 = v21;
    if (v37 == ++v10)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_182AD4408();
  __break(1u);
}

unint64_t sub_181D04C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_182AD4268())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_181D04D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t _nw_http_request_set_header_fieldsTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;

  swift_beginAccess();
  v7[2] = v5;
  (*(*a2 + 80))(a3, v7, MEMORY[0x1E69E7CA8] + 8);
  swift_endAccess();
}

uint64_t sub_181D04E50(uint64_t *a1)
{
  *(*(v1 + 16) + 8) = *a1;
}

void *nw_http_allocate_metadata(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x564BE5D9uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_allocate_metadata";
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
  v12 = 56;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_181D05010()
{

  return swift_deallocClassInstance();
}

void __nw_parameters_copy_custom_proxy_configs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v9 = v3;
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v9;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (v4)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = v3;
    _nw_array_append(v4, v3);
    v3 = v10;
  }
}

uint64_t nw_proxy_config_supports_connection(void *a1, void *a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null config", buf, 12);

    type[0] = 16;
    LOBYTE(v78[0]) = 0;
    if (!__nwlog_fault(v41, type, v78))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null config", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (LOBYTE(v78[0]) != 1)
    {
      v42 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v55, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v49 = type[0];
    v50 = os_log_type_enabled(v42, type[0]);
    if (!backtrace_string)
    {
      if (v50)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v50)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_108;
  }

  if (!v8)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null endpoint", buf, 12);

    type[0] = 16;
    LOBYTE(v78[0]) = 0;
    if (!__nwlog_fault(v41, type, v78))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v42 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (LOBYTE(v78[0]) != 1)
    {
      v42 = __nwlog_obj();
      v56 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v56, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v51 = type[0];
    v52 = os_log_type_enabled(v42, type[0]);
    if (!backtrace_string)
    {
      if (v52)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v52)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_108;
  }

  if (!v9)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null parameters", buf, 12);

    type[0] = 16;
    LOBYTE(v78[0]) = 0;
    if (!__nwlog_fault(v41, type, v78))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v42 = __nwlog_obj();
      v47 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_126:

LABEL_127:
      if (v41)
      {
        free(v41);
      }

      goto LABEL_8;
    }

    if (LOBYTE(v78[0]) != 1)
    {
      v42 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v57, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v53 = type[0];
    v54 = os_log_type_enabled(v42, type[0]);
    if (!backtrace_string)
    {
      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v42, v53, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v42, v53, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_108:

    free(backtrace_string);
    goto LABEL_127;
  }

  v11 = *(v7 + 38);
  if (!v11)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_69;
  }

  if (v11 != 4)
  {
    if (_nw_parameters_get_server_mode(v9))
    {
      goto LABEL_8;
    }

    v13 = _nw_parameters_copy_default_protocol_stack();
    if ((*(v7 + 38) & 0xFFFFFFFE) == 2)
    {
      if (nw_protocol_setup_tcp_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
      }

      v14 = g_tcp_definition;
      v15 = nw_protocol_stack_includes_protocol(v13, v14);

      if ((v15 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    v16 = *(v7 + 3);
    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v80) = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_supports_connection_block_invoke;
      applier[3] = &unk_1E6A324A8;
      applier[4] = v13;
      applier[5] = buf;
      xpc_array_apply(v16, applier);
      v17 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v17)
      {
        goto LABEL_67;
      }
    }

    if (*(v7 + 38) == 1)
    {
      v18 = nw_protocol_stack_copy_transport_protocol(v13);
      if (v18)
      {
        v19 = _nw_protocol_options_copy_definition();
        if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
        }

        v20 = nw_protocol_copy_quic_connection_definition_quic_definition;
        is_equal_unsafe = nw_protocol_definition_is_equal_unsafe(v19, v20);

        if (is_equal_unsafe)
        {
          v22 = nw_protocol_copy_quic_stream_definition();

          v19 = v22;
        }

        identifier = nw_protocol_definition_get_identifier(v19);
        buf[0] = 0;
        nw_proxy_config_should_proxy_transport_at_level(v7, identifier, buf);
        if (buf[0])
        {
          v24 = "proxy-wildcard";
        }

        else
        {
          v24 = identifier;
        }

        v25 = nw_dictionary_copy_value(*(v7 + 1), v24);
        if ((*(v7 + 172) & 2) != 0 && nw_protocol_options_is_quic(v18) && (_os_feature_enabled_impl() & 1) == 0)
        {

          goto LABEL_66;
        }

        if (!v25)
        {
LABEL_66:

          goto LABEL_67;
        }
      }
    }

    if (*(v7 + 39) != 3005)
    {
      goto LABEL_37;
    }

    if (nw_proxy_config_can_use_tcp_converter(void)::onceToken != -1)
    {
      dispatch_once(&nw_proxy_config_can_use_tcp_converter(void)::onceToken, &__block_literal_global_280);
    }

    if (nw_proxy_config_can_use_tcp_converter(void)::allowed != 1)
    {
      goto LABEL_67;
    }

    if (!v10)
    {
LABEL_37:
      v27 = v8;
      v28 = _nw_endpoint_get_type(v27);

      if ((v28 - 3) <= 0xFFFFFFFD)
      {
        v12 = 0;
        if ((*(v7 + 170) & 0x10) == 0 || v28 != 3)
        {
          goto LABEL_68;
        }
      }

      if ((*(v7 + 170) & 0x20) == 0)
      {
        if ((*(v7 + 170) & 0x80) != 0 && v28 == 2)
        {
          hostname = nw_endpoint_get_hostname(v27);
          if (hostname)
          {
            if (!strchr(hostname, 46))
            {
              goto LABEL_67;
            }
          }
        }

LABEL_72:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v80) = 0;
        v38 = *(v7 + 16);
        if (v38 && (v69[0] = MEMORY[0x1E69E9820], v69[1] = 3221225472, v69[2] = __nw_proxy_config_supports_connection_block_invoke_141, v69[3] = &unk_1E6A324A8, v70 = v27, v71 = buf, xpc_array_apply(v38, v69), v70, (*(*&buf[8] + 24) & 1) != 0))
        {
          v12 = 0;
        }

        else
        {
          v39 = *(v7 + 15);
          if (v39)
          {
            *type = 0;
            *&type[8] = type;
            *&type[16] = 0x2020000000;
            v77 = 0;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = __nw_proxy_config_supports_connection_block_invoke_2_142;
            v66[3] = &unk_1E6A324A8;
            v67 = v27;
            v68 = type;
            xpc_array_apply(v39, v66);
            v12 = *(*&type[8] + 24);

            _Block_object_dispose(type, 8);
          }

          else
          {
            v12 = (*(v7 + 172) & 1) == 0;
          }
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_68;
      }

      if (v28 != 1)
      {
        goto LABEL_67;
      }

      v30 = *(v7 + 5);
      if (!v30 || nw_endpoint_get_type(v30) != nw_endpoint_type_address)
      {
        goto LABEL_67;
      }

      if (!nw_path_has_nat64_prefixes(v10) || nw_endpoint_get_address_family(v27) != 30)
      {
        goto LABEL_71;
      }

      v31 = nw_path_nat64_prefixes(v10);
      v78[0] = 0;
      v78[1] = 0;
      v74 = 0;
      v32 = v31[4];
      if (v32)
      {
        LODWORD(v78[0]) = v31[4];
        memcpy(v78 + 4, v31, v32);
        memset(buf, 0, sizeof(buf));
        v80 = 0;
        if ((nw_endpoint_fillout_v4v6_address(v27, buf) & 1) == 0)
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v78, &buf[8], &v74))
        {
          goto LABEL_63;
        }
      }

      v33 = v31[9];
      if (v33)
      {
        LODWORD(v78[0]) = v31[9];
        memcpy(v78 + 4, v31 + 5, v33);
        memset(buf, 0, sizeof(buf));
        v80 = 0;
        if (!nw_endpoint_fillout_v4v6_address(v27, buf))
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v78, &buf[8], &v74))
        {
          goto LABEL_63;
        }
      }

      v34 = v31[14];
      if (v34)
      {
        LODWORD(v78[0]) = v31[14];
        memcpy(v78 + 4, v31 + 10, v34);
        memset(buf, 0, sizeof(buf));
        v80 = 0;
        if (!nw_endpoint_fillout_v4v6_address(v27, buf))
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v78, &buf[8], &v74))
        {
          goto LABEL_63;
        }
      }

      v35 = v31[19];
      if (!v35)
      {
        goto LABEL_71;
      }

      LODWORD(v78[0]) = v31[19];
      memcpy(v78 + 4, v31 + 15, v35);
      memset(buf, 0, sizeof(buf));
      v80 = 0;
      if (nw_endpoint_fillout_v4v6_address(v27, buf))
      {
        if (nw_nat64_extract_v4(v78, &buf[8], &v74))
        {
LABEL_63:
          if (nw_endpoint_get_address_family(*(v7 + 5)) == 2)
          {
            goto LABEL_72;
          }

LABEL_67:
          v12 = 0;
LABEL_68:

          goto LABEL_69;
        }

LABEL_71:
        address_family = nw_endpoint_get_address_family(v27);
        if (address_family == nw_endpoint_get_address_family(*(v7 + 5)))
        {
          goto LABEL_72;
        }

        goto LABEL_67;
      }

LABEL_129:
      v58 = __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_proxy_config_supports_connection";
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null success", type, 12);

      v73 = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (__nwlog_fault(v59, &v73, &v72))
      {
        if (v73 == OS_LOG_TYPE_FAULT)
        {
          v60 = __nwlog_obj();
          v61 = v73;
          if (os_log_type_enabled(v60, v73))
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null success", type, 0xCu);
          }
        }

        else if (v72 == 1)
        {
          v62 = __nw_create_backtrace_string();
          v60 = __nwlog_obj();
          v63 = v73;
          v64 = os_log_type_enabled(v60, v73);
          if (v62)
          {
            if (v64)
            {
              *type = 136446466;
              *&type[4] = "nw_proxy_config_supports_connection";
              *&type[12] = 2082;
              *&type[14] = v62;
              _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v62);
            goto LABEL_145;
          }

          if (v64)
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null success, no backtrace", type, 0xCu);
          }
        }

        else
        {
          v60 = __nwlog_obj();
          v65 = v73;
          if (os_log_type_enabled(v60, v73))
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
          }
        }
      }

LABEL_145:
      if (v59)
      {
        free(v59);
      }

      goto LABEL_67;
    }

    v26 = nw_path_copy_direct_interface(v10);
    v18 = v26;
    if (!v26 || _nw_interface_get_type(v26))
    {

      goto LABEL_37;
    }

    goto LABEL_66;
  }

  v12 = 1;
LABEL_69:

  return v12 & 1;
}

uint64_t nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
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
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
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
            v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
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
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
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

BOOL nw_parameters_get_prohibit_privacy_proxy(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_privacy_proxy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_privacy_proxy";
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
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
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
            v12 = "nw_parameters_get_prohibit_privacy_proxy";
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
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
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

uint64_t nw_proxy_config_get_generation(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[41];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_generation";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_generation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

id nw_proxy_config_copy_fallback_proxy_config(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[11];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_copy_fallback_proxy_config";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
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
          v16 = "nw_proxy_config_copy_fallback_proxy_config";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void __nw_path_copy_proxy_config_for_agent_uuid_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = _nw_network_agent_cache_copy_proxy_config();
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t nw_endpoint_handler_get_proxy_privacy_stance(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[70];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null handler", buf, 12);

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
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
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
          v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_proxy_config_get_is_companion_proxy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[172] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_is_companion_proxy";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_is_companion_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_endpoint_copy_cfurl_0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD1F98();
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);
    return v10;
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_parameters_get_no_proxy(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_proxy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_proxy";
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
        v12 = "nw_parameters_get_no_proxy";
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
            v12 = "nw_parameters_get_no_proxy";
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
        v12 = "nw_parameters_get_no_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_proxy";
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

BOOL nw_parameters_get_prefer_no_proxy(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prefer_no_proxy(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prefer_no_proxy";
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
        v12 = "nw_parameters_get_prefer_no_proxy";
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
            v12 = "nw_parameters_get_prefer_no_proxy";
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
        v12 = "nw_parameters_get_prefer_no_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prefer_no_proxy";
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

uint64_t nw_parameters_get_https_proxy_is_opaque(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_https_proxy_is_opaque(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_https_proxy_is_opaque";
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
        v12 = "nw_parameters_get_https_proxy_is_opaque";
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
            v12 = "nw_parameters_get_https_proxy_is_opaque";
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
        v12 = "nw_parameters_get_https_proxy_is_opaque";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_is_opaque";
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

BOOL nw_array_is_empty(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_array_is_empty(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_array_is_empty";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null array", buf, 12);

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
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array";
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
            v12 = "nw_array_is_empty";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array, backtrace limit exceeded";
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

  return 1;
}

uint64_t ___ZL40nw_endpoint_proxy_has_unresolved_proxiesP30NWConcrete_nw_endpoint_handlerPb_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  mode = nw_proxy_config_get_mode(a3);
  if ((mode & 0xFFFFFFFE) == 2)
  {
    v5 = 32;
LABEL_5:
    *(*(*(a1 + v5) + 8) + 24) = 1;
    return 1;
  }

  if (mode)
  {
    v5 = 40;
    goto LABEL_5;
  }

  return 1;
}

void nw_endpoint_set_do_not_redact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_set_do_not_redact(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_set_do_not_redact";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null endpoint", buf, 12);

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
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
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
          v14 = "nw_endpoint_set_do_not_redact";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

void _nw_endpoint_set_do_not_redact(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_flags];
  v4 = a1;
  if ((v3 & 0x80) == 0)
  {
    *&a1[v2] = v3 | 0x80;
  }
}

nw_protocol_options_t nw_protocol_stack_copy_internet_protocol(nw_protocol_stack_t stack)
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    return _nw_protocol_stack_copy_internet_protocol(stack);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_stack_copy_internet_protocol";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null stack", buf, 12);

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
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack";
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
            v12 = "nw_protocol_stack_copy_internet_protocol";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack, backtrace limit exceeded";
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

void nw_parameters_set_proxy_applied(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_proxy_applied();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_proxy_applied";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_proxy_applied";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_set_preferred_netagent_classes(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    _nw_parameters_clear_preferred_netagent_types(v5);
    if (v6)
    {
      Class = object_getClass(v6);
      if (v7)
      {
        v9 = MEMORY[0x1E69E9E50];
        if (Class == MEMORY[0x1E69E9E50] && object_getClass(v7) == v9)
        {
          count = xpc_array_get_count(v6);
          if (count == xpc_array_get_count(v7))
          {
            v11 = xpc_array_get_count(v6);
            if (v11)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                string = xpc_array_get_string(v6, i);
                v15 = xpc_array_get_string(v7, i);
                if (string && v15)
                {
                  _nw_parameters_add_preferred_netagent_type(v5, string, v15);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_set_preferred_netagent_classes";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v17, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters";
LABEL_26:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v22 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v26 = "nw_parameters_set_preferred_netagent_classes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v17)
  {
    free(v17);
  }

LABEL_30:
}

uint64_t _nw_protocol_options_copy(uint64_t a1)
{
  v1 = sub_181AA847C(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7[1] = v1;
  (*(*(v3 + 8) + 32))(v7);
  v5 = (*(v3 + 336))(ObjectType, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t nw_protocol_options_copy(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_copy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_copy";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);

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
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options";
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
            v12 = "nw_protocol_options_copy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
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

void nw_protocol_stack_set_original_proxied_transport_protocol(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_protocol_stack_set_original_proxied_transport_protocol();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null stack", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

uint64_t sub_181D08DF0(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    a2 = sub_181AA847C(a2);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0;
      a2 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v7 = 0x2000000000000000;
        a2 = v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v7 = 0x4000000000000000;
          a2 = v9;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v7 = 0x6000000000000000;
            a2 = v10;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v7 = 0x8000000000000000;
              a2 = v11;
            }

            else
            {
              v7 = v5 | 0xA000000000000000;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0xF000000000000007;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = v7;
  sub_181A53008(v12, v13);
}

uint64_t nw_masque_options_get_forced_protocol(nw_protocol_options *a1)
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
    v10[2] = ___ZL37nw_masque_options_get_forced_protocolP19nw_protocol_options_block_invoke;
    v10[3] = &unk_1E6A2F7A0;
    v10[4] = buf;
    nw_protocol_options_access_handle(a1, v10);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_options_get_forced_protocol";
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
        *&buf[4] = "nw_masque_options_get_forced_protocol";
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
          *&buf[4] = "nw_masque_options_get_forced_protocol";
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
        *&buf[4] = "nw_masque_options_get_forced_protocol";
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
        *&buf[4] = "nw_masque_options_get_forced_protocol";
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

uint64_t nw_parameters_copy_effective_proxy_config(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_effective_proxy_config(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_effective_proxy_config";
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
        v12 = "nw_parameters_copy_effective_proxy_config";
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
            v12 = "nw_parameters_copy_effective_proxy_config";
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
        v12 = "nw_parameters_copy_effective_proxy_config";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_effective_proxy_config";
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

uint64_t nw_flow_passthrough_supports_external_data(nw_protocol *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_flow_passthrough_supports_external_data";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol";
LABEL_19:
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
            v13 = "nw_flow_passthrough_supports_external_data";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:

LABEL_21:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    return 0;
  }

  return nw_protocol_supports_external_data(default_input_handler);
}

void nw_parameters_set_use_enhanced_privacy_mode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_use_enhanced_privacy_mode(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_set_use_enhanced_privacy_mode";
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
            v12 = "nw_parameters_set_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_set_use_enhanced_privacy_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_use_enhanced_privacy_mode";
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

uint64_t nw_protocol_implementation_connect(nw_protocol *a1, nw_protocol *a2)
{
  v207 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v190[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v7, type, v190))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v190[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v26 = type[0];
            v27 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v27)
              {
                *buf = 136446466;
                v196 = "nw_protocol_implementation_connect";
                v197 = 2082;
                v198 = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v26, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
            }

            if (v27)
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v26, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v38 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v38, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_68:
          v10 = 0;
          goto LABEL_88;
        }

LABEL_67:
        free(v7);
        goto LABEL_68;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v5[1].handle;
    if (!v11)
    {
      v103 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null instance->parent_definition", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v104, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v128 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v128, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v112 = type[0];
      v113 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v113)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v112, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v113)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v112, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (!v11[10])
    {
      v105 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v106 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v106, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v129 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v129, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v114 = type[0];
      v115 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v115)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v114, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v115)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v114, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (!a2)
    {
      v107 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null input_protocol", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v108 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v108, "%{public}s called with null input_protocol", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v130 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v130, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v116 = type[0];
      v117 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v117)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v116, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v117)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v116, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (a1->output_handler != a1)
    {
      if ((BYTE2(v5[7].output_handler_context) & 0x20) == 0)
      {
        if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
        {
          v119 = __nwlog_obj();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sConnect", buf, 0x20u);
          }

          v11 = v5[1].handle;
        }

        if (*(v11 + 16) == 3)
        {
          output_handler_context = a2->output_handler_context;
          if (output_handler_context)
          {
            v13 = SBYTE5(v5[7].output_handler_context);
            if (!v5[7].output_handler)
            {
LABEL_159:
              v5[7].output_handler = output_handler_context;
              if ((v13 & 0x80) == 0 && gLogDatapath == 1)
              {
                v152 = __nwlog_obj();
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  v153 = nw_protocol_flow_for_protocol(v10, a2);
                  *buf = 136446978;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v153;
                  _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRequested connect from flow %llx", buf, 0x2Au);
                }
              }

LABEL_161:
              WORD2(output_handler_context[1].identifier) |= 4u;
              output_handler = a1->output_handler;
              if (output_handler)
              {
                v80 = output_handler->handle;
                v81 = a1->output_handler;
                if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *output_handler[1].flow_id) != 0)
                {
                  callbacks = v81[1].callbacks;
                  if (callbacks)
                  {
                    v81[1].callbacks = (&callbacks->add_input_handler + 1);
                  }

                  v82 = 0;
                  *type = output_handler;
                  v194 |= 1u;
                }

                else
                {
                  *type = a1->output_handler;
                  v194 &= ~1u;
                  v82 = 1;
                }

                v84 = a1->handle;
                v85 = a1;
                if (v84 != &nw_protocol_ref_counted_handle)
                {
                  if (v84 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v85) = 0;
                    v86 = 1;
                    goto LABEL_176;
                  }

                  v85 = *a1[1].flow_id;
                  if (!v85)
                  {
                    v86 = 1;
                    goto LABEL_176;
                  }
                }

                v87 = v85[1].callbacks;
                v86 = 0;
                if (v87)
                {
                  v85[1].callbacks = (&v87->add_input_handler + 1);
                }

                LOBYTE(v85) = -1;
LABEL_176:
                *v190 = a1;
                v191 = v85;
                v88 = output_handler->callbacks;
                if (v88)
                {
                  connect = v88->connect;
                  if (connect)
                  {
                    connect();
LABEL_179:
                    if ((v86 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v190);
                    }

                    if ((v82 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(type);
                    }

LABEL_183:
                    v90 = v5[7].output_handler;
                    if (v90)
                    {
                      v91 = *(v90 + 16);
                      extra = nw_hash_node_get_extra(v90);
                      v93 = *(extra + 52);
                      if ((v93 & 0x20) != 0)
                      {
                        if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                        {
                          v176 = extra;
                          v177 = __nwlog_obj();
                          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446722;
                            v196 = "nw_protocol_implementation_connect";
                            v197 = 2082;
                            v198 = &v5[7].output_handler_context + 7;
                            v199 = 2080;
                            v200 = " ";
                            _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelivering deferred connected event", buf, 0x20u);
                          }

                          extra = v176;
                          v93 = *(v176 + 52);
                        }

                        *(extra + 52) = v93 & 0xFFDF;
                        v94 = v10;
                        if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == v91)
                        {
                          v95 = -2;
                        }

                        else
                        {
                          v95 = v91;
                        }

                        nw_protocol_implementation_report_connected(v94, a1, v91, v95);
                      }

                      v5[7].output_handler = 0;
                      v47 = 1;
                      goto LABEL_197;
                    }

                    if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v96 = gLogObj;
                      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446722;
                        v196 = "nw_protocol_implementation_connect";
                        v197 = 2082;
                        v198 = &v5[7].output_handler_context + 7;
                        v199 = 2080;
                        v200 = " ";
                        _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sflow was removed during connect, ignoring", buf, 0x20u);
                      }
                    }

                    goto LABEL_196;
                  }
                }

                v131 = output_handler;
                v132 = __nwlog_obj();
                name = v131->identifier->name;
                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                if (!name)
                {
                  name = "invalid";
                }

                v197 = 2082;
                v198 = name;
                v199 = 2048;
                v134 = v131;
                v200 = v131;
                LODWORD(v187) = 32;
                v135 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, v187);

                v192 = OS_LOG_TYPE_ERROR;
                v189 = 0;
                if (__nwlog_fault(v135, &v192, &v189))
                {
                  if (v192 == OS_LOG_TYPE_FAULT)
                  {
                    v136 = __nwlog_obj();
                    v137 = v192;
                    if (os_log_type_enabled(v136, v192))
                    {
                      v138 = v134->identifier->name;
                      if (!v138)
                      {
                        v138 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v138;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v137, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                    }
                  }

                  else if (v189 == 1)
                  {
                    v154 = __nw_create_backtrace_string();
                    v136 = __nwlog_obj();
                    v155 = v192;
                    v156 = os_log_type_enabled(v136, v192);
                    if (v154)
                    {
                      if (v156)
                      {
                        v157 = v134->identifier->name;
                        if (!v157)
                        {
                          v157 = "invalid";
                        }

                        *buf = 136446978;
                        v196 = "__nw_protocol_connect";
                        v197 = 2082;
                        v198 = v157;
                        v199 = 2048;
                        v200 = v134;
                        v201 = 2082;
                        v202 = v154;
                        _os_log_impl(&dword_181A37000, v136, v155, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v154);
                      goto LABEL_388;
                    }

                    if (v156)
                    {
                      v183 = v134->identifier->name;
                      if (!v183)
                      {
                        v183 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v183;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v155, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v136 = __nwlog_obj();
                    v172 = v192;
                    if (os_log_type_enabled(v136, v192))
                    {
                      v173 = v134->identifier->name;
                      if (!v173)
                      {
                        v173 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v173;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v172, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                    }
                  }
                }

LABEL_388:
                if (v135)
                {
                  free(v135);
                }

                goto LABEL_179;
              }

              v147 = __nwlog_obj();
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              LODWORD(v187) = 12;
              v148 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null protocol", buf, v187);

              type[0] = OS_LOG_TYPE_ERROR;
              v190[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v148, type, v190))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v149 = __nwlog_obj();
                  v150 = type[0];
                  if (os_log_type_enabled(v149, type[0]))
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null protocol", buf, 0xCu);
                  }
                }

                else if (v190[0] == OS_LOG_TYPE_INFO)
                {
                  v169 = __nw_create_backtrace_string();
                  v149 = __nwlog_obj();
                  v170 = type[0];
                  v171 = os_log_type_enabled(v149, type[0]);
                  if (v169)
                  {
                    if (v171)
                    {
                      *buf = 136446466;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v169;
                      _os_log_impl(&dword_181A37000, v149, v170, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v169);
                    goto LABEL_403;
                  }

                  if (v171)
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v170, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v149 = __nwlog_obj();
                  v182 = type[0];
                  if (os_log_type_enabled(v149, type[0]))
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v182, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_403:
              if (v148)
              {
                free(v148);
              }

              goto LABEL_183;
            }

            if (v13 < 0)
            {
              v5[7].output_handler = output_handler_context;
              goto LABEL_161;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = v5[7].output_handler;
            *buf = 136447234;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = v15;
            v203 = 2048;
            v204 = output_handler_context;
            v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p)", buf, 52);

            type[0] = OS_LOG_TYPE_ERROR;
            v190[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v16, type, v190))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v17 = gLogObj;
                v18 = type[0];
                if (os_log_type_enabled(v17, type[0]))
                {
                  v19 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v19;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p)", buf, 0x34u);
                }
              }

              else if (v190[0] == OS_LOG_TYPE_INFO)
              {
                v54 = __nw_create_backtrace_string();
                v17 = __nwlog_obj();
                HIDWORD(v187) = type[0];
                v55 = os_log_type_enabled(v17, type[0]);
                if (v54)
                {
                  if (v55)
                  {
                    v56 = v5[7].output_handler;
                    *buf = 136447490;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    v201 = 2048;
                    v202 = v56;
                    v203 = 2048;
                    v204 = output_handler_context;
                    v205 = 2082;
                    v206 = v54;
                    _os_log_impl(&dword_181A37000, v17, BYTE4(v187), "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), dumping backtrace:%{public}s", buf, 0x3Eu);
                  }

                  free(v54);
                  goto LABEL_156;
                }

                if (v55)
                {
                  v78 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v78;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, BYTE4(v187), "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), no backtrace", buf, 0x34u);
                }
              }

              else
              {
                v17 = __nwlog_obj();
                v61 = type[0];
                if (os_log_type_enabled(v17, type[0]))
                {
                  v62 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v62;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, v61, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), backtrace limit exceeded", buf, 0x34u);
                }
              }
            }

LABEL_156:
            if (v16)
            {
              free(v16);
            }

            LOBYTE(v13) = BYTE5(v5[7].output_handler_context);
            goto LABEL_159;
          }

          if (SBYTE5(v5[7].output_handler_context) < 0)
          {
            goto LABEL_88;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = a2;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
          }

LABEL_72:

          goto LABEL_88;
        }

        v39 = a1->output_handler;
        if (v39)
        {
          v40 = v39->handle;
          v41 = a1->output_handler;
          if (v40 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_80;
          }

          if (v40 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v41) = 0;
            v42 = 1;
            goto LABEL_90;
          }

          v41 = *v39[1].flow_id;
          if (v41)
          {
LABEL_80:
            v45 = v41[1].callbacks;
            v42 = 0;
            if (v45)
            {
              v41[1].callbacks = (&v45->add_input_handler + 1);
            }

            LOBYTE(v41) = -1;
          }

          else
          {
            v42 = 1;
          }

LABEL_90:
          *type = v39;
          v194 = v41;
          v48 = a1->handle;
          v49 = a1;
          if (v48 != &nw_protocol_ref_counted_handle)
          {
            if (v48 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v49) = 0;
              v50 = 1;
              goto LABEL_97;
            }

            v49 = *a1[1].flow_id;
            if (!v49)
            {
              v50 = 1;
              goto LABEL_97;
            }
          }

          v51 = v49[1].callbacks;
          v50 = 0;
          if (v51)
          {
            v49[1].callbacks = (&v51->add_input_handler + 1);
          }

          LOBYTE(v49) = -1;
LABEL_97:
          *v190 = a1;
          v191 = v49;
          v52 = v39->callbacks;
          if (v52)
          {
            v53 = v52->connect;
            if (v53)
            {
              v53();
LABEL_100:
              if ((v50 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(v190);
              }

              if ((v42 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(type);
              }

              goto LABEL_196;
            }
          }

          v120 = v39;
          v121 = __nwlog_obj();
          v122 = v120->identifier->name;
          *buf = 136446722;
          v196 = "__nw_protocol_connect";
          if (!v122)
          {
            v122 = "invalid";
          }

          v197 = 2082;
          v198 = v122;
          v199 = 2048;
          v123 = v120;
          v200 = v120;
          v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 32);

          v192 = OS_LOG_TYPE_ERROR;
          v189 = 0;
          if (__nwlog_fault(v124, &v192, &v189))
          {
            if (v192 == OS_LOG_TYPE_FAULT)
            {
              v125 = __nwlog_obj();
              v126 = v192;
              if (os_log_type_enabled(v125, v192))
              {
                v127 = v123->identifier->name;
                if (!v127)
                {
                  v127 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v127;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v126, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
              }
            }

            else if (v189 == 1)
            {
              v143 = __nw_create_backtrace_string();
              v125 = __nwlog_obj();
              v144 = v192;
              v145 = os_log_type_enabled(v125, v192);
              if (v143)
              {
                if (v145)
                {
                  v146 = v123->identifier->name;
                  if (!v146)
                  {
                    v146 = "invalid";
                  }

                  *buf = 136446978;
                  v196 = "__nw_protocol_connect";
                  v197 = 2082;
                  v198 = v146;
                  v199 = 2048;
                  v200 = v123;
                  v201 = 2082;
                  v202 = v143;
                  _os_log_impl(&dword_181A37000, v125, v144, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v143);
                goto LABEL_378;
              }

              if (v145)
              {
                v181 = v123->identifier->name;
                if (!v181)
                {
                  v181 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v181;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v144, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v125 = __nwlog_obj();
              v161 = v192;
              if (os_log_type_enabled(v125, v192))
              {
                v162 = v123->identifier->name;
                if (!v162)
                {
                  v162 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v162;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v161, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

LABEL_378:
          if (v124)
          {
            free(v124);
          }

          goto LABEL_100;
        }

        v139 = __nwlog_obj();
        *buf = 136446210;
        v196 = "__nw_protocol_connect";
        v140 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v139, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v190[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v140, type, v190))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v141 = __nwlog_obj();
            v142 = type[0];
            if (os_log_type_enabled(v141, type[0]))
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v142, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v190[0] == OS_LOG_TYPE_INFO)
          {
            v158 = __nw_create_backtrace_string();
            v141 = __nwlog_obj();
            v159 = type[0];
            v160 = os_log_type_enabled(v141, type[0]);
            if (v158)
            {
              if (v160)
              {
                *buf = 136446466;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v158;
                _os_log_impl(&dword_181A37000, v141, v159, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v158);
              goto LABEL_398;
            }

            if (v160)
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v159, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v141 = __nwlog_obj();
            v174 = type[0];
            if (os_log_type_enabled(v141, type[0]))
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v174, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_398:
        if (v140)
        {
          free(v140);
        }

        goto LABEL_196;
      }

      if (*(v11 + 16) != 3)
      {
LABEL_196:
        v47 = 1;
        goto LABEL_197;
      }

      v28 = a2->output_handler_context;
      v29 = SBYTE5(v5[7].output_handler_context);
      if (!v28)
      {
        if (v29 < 0)
        {
          goto LABEL_88;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = &v5[7].output_handler_context + 7;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a2;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
        }

        goto LABEL_72;
      }

      if ((v29 & 0x80000000) == 0 && gLogDatapath == 1)
      {
        v151 = __nwlog_obj();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = &v5[7].output_handler_context + 7;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = nw_protocol_flow_for_protocol(v10, a2);
          _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sConnect from flow %llx", buf, 0x2Au);
        }
      }

      v30 = v28[42];
      v31 = v30 | 4;
      v28[42] = v30 | 4;
      if ((v30 & 8) != 0)
      {
        if ((v30 & 0x10) != 0)
        {
          v31 = v30 | 0x24;
          v28[42] = v30 | 0x24;
        }

        goto LABEL_139;
      }

      if (*(*(v5[1].handle + 10) + 120))
      {
        v32 = a2->handle;
        v33 = a2;
        if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *a2[1].flow_id) != 0)
        {
          v66 = v33[1].callbacks;
          if (v66)
          {
            v33[1].callbacks = (&v66->add_input_handler + 1);
          }

          v34 = 0;
          *type = a2;
          v194 |= 1u;
        }

        else
        {
          *type = a2;
          v194 &= ~1u;
          v34 = 1;
        }

        v67 = a2->callbacks;
        if (v67)
        {
          get_parameters = v67->get_parameters;
          if (get_parameters)
          {
            v69 = get_parameters(a2);
            if (v34)
            {
LABEL_132:
              if (v69)
              {
                v70 = nw_parameters_copy_protocol_options(v69, v5);
                objc_storeStrong(&v5[2].callbacks, v70);
                v71 = *(v28 + 5);
                *(v28 + 5) = v70;
              }

              v28[42] |= 8u;
              v72 = *(*(v5[1].handle + 10) + 120);
              v73 = v10;
              if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
              {
                v74 = -2;
              }

              else
              {
                v74 = a2;
              }

              v72(v73, v74, v28[42] & 1);
              if (!nw_hash_table_get_node(*&v5[5].flow_id[8], a2, 8))
              {
                if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                {
                  v77 = __nwlog_obj();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446978;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    v201 = 2048;
                    v202 = a2;
                    _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sinput_protocol %p no longer exists in flows_table", buf, 0x2Au);
                  }
                }

                v47 = 1;
                v10 = v73;
                goto LABEL_197;
              }

              v31 = v28[42];
LABEL_139:
              if ((v31 & 0x20) != 0)
              {
                if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                {
                  v175 = __nwlog_obj();
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelivering deferred connected event", buf, 0x20u);
                  }

                  v31 = v28[42];
                }

                v28[42] = v31 & 0xFFDF;
                v75 = v10;
                if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
                {
                  v76 = -2;
                }

                else
                {
                  v76 = a2;
                }

                nw_protocol_implementation_report_connected(v75, a1, a2, v76);
                v47 = 1;
                v10 = v75;
                goto LABEL_197;
              }

              goto LABEL_196;
            }

LABEL_131:
            nw::release_if_needed<nw_protocol *>(type);
            goto LABEL_132;
          }
        }

        v163 = __nwlog_obj();
        identifier = a2->identifier;
        *buf = 136446722;
        v196 = "__nw_protocol_get_parameters";
        if (!identifier)
        {
          identifier = "invalid";
        }

        v197 = 2082;
        v198 = identifier;
        v199 = 2048;
        v200 = a2;
        v165 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);

        v190[0] = OS_LOG_TYPE_ERROR;
        v192 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v165, v190, &v192))
        {
          if (v190[0] == OS_LOG_TYPE_FAULT)
          {
            v166 = __nwlog_obj();
            v167 = v190[0];
            if (os_log_type_enabled(v166, v190[0]))
            {
              v168 = a2->identifier;
              if (!v168)
              {
                v168 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v168;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v167, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 0x20u);
            }

LABEL_409:

            goto LABEL_410;
          }

          if (v192 != OS_LOG_TYPE_INFO)
          {
            v166 = __nwlog_obj();
            v184 = v190[0];
            if (os_log_type_enabled(v166, v190[0]))
            {
              v185 = a2->identifier;
              if (!v185)
              {
                v185 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v185;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v184, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_409;
          }

          v178 = __nw_create_backtrace_string();
          v166 = __nwlog_obj();
          v188 = v190[0];
          v179 = os_log_type_enabled(v166, v190[0]);
          if (!v178)
          {
            if (v179)
            {
              v186 = a2->identifier;
              if (!v186)
              {
                v186 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v186;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v188, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace", buf, 0x20u);
            }

            goto LABEL_409;
          }

          if (v179)
          {
            v180 = a2->identifier;
            if (!v180)
            {
              v180 = "invalid";
            }

            *buf = 136446978;
            v196 = "__nw_protocol_get_parameters";
            v197 = 2082;
            v198 = v180;
            v199 = 2048;
            v200 = a2;
            v201 = 2082;
            v202 = v178;
            _os_log_impl(&dword_181A37000, v166, v188, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v178);
        }

LABEL_410:
        if (v165)
        {
          free(v165);
        }

        v69 = 0;
        if (v34)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }

      v57 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null instance->parent_definition->start", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
        }

LABEL_206:

        goto LABEL_207;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v98 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v98, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v64 = type[0];
      v65 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v65)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v65)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_123:

      free(v63);
LABEL_207:
      if (!v58)
      {
        goto LABEL_88;
      }

      v46 = v58;
      goto LABEL_87;
    }

    if (SBYTE5(v5[7].output_handler_context) < 0)
    {
LABEL_88:
      v47 = 0;
LABEL_197:

      return v47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = &v5[7].output_handler_context + 7;
    *buf = 136446978;
    v196 = "nw_protocol_implementation_connect";
    v197 = 2082;
    v198 = &v5[7].output_handler_context + 7;
    v199 = 2080;
    v200 = " ";
    v201 = 2048;
    v202 = a1;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself", buf, 42);

    type[0] = OS_LOG_TYPE_ERROR;
    v190[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v22, type, v190))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself", buf, 0x2Au);
        }
      }

      else if (v190[0] == OS_LOG_TYPE_INFO)
      {
        v35 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v36 = type[0];
        v37 = os_log_type_enabled(v23, type[0]);
        if (v35)
        {
          if (v37)
          {
            *buf = 136447234;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = v21;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = a1;
            v203 = 2082;
            v204 = v35;
            _os_log_impl(&dword_181A37000, v23, v36, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v35);
          if (!v22)
          {
            goto LABEL_88;
          }

LABEL_86:
          v46 = v22;
LABEL_87:
          free(v46);
          goto LABEL_88;
        }

        if (v37)
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v36, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v43 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v43, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v22)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  v99 = __nwlog_obj();
  *buf = 136446210;
  v196 = "nw_protocol_implementation_connect";
  v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v190[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v100, type, v190))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = type[0];
      if (os_log_type_enabled(v101, type[0]))
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v190[0] == OS_LOG_TYPE_INFO)
    {
      v109 = __nw_create_backtrace_string();
      v101 = __nwlog_obj();
      v110 = type[0];
      v111 = os_log_type_enabled(v101, type[0]);
      if (v109)
      {
        if (v111)
        {
          *buf = 136446466;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v109;
          _os_log_impl(&dword_181A37000, v101, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v109);
        goto LABEL_297;
      }

      if (v111)
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v110, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v101 = __nwlog_obj();
      v118 = type[0];
      if (os_log_type_enabled(v101, type[0]))
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v118, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_297:
  if (v100)
  {
    free(v100);
  }

  return 0;
}

uint64_t ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = *(a1 + 32);
    v5 = object[5];
    v6 = object;
    if (v5 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v5 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v6) = 0;
      v7 = 1;
      goto LABEL_9;
    }

    v6 = object[8];
    if (v6)
    {
LABEL_6:
      v8 = v6[11];
      v7 = 0;
      if (v8)
      {
        v6[11] = v8 + 1;
      }

      LOBYTE(v6) = -1;
    }

    else
    {
      v7 = 1;
    }

LABEL_9:
    *v52 = object;
    v53 = v6;
    if (v4)
    {
      v9 = *(v4 + 40);
      v10 = v4;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v4 + 64)) != 0)
      {
        v13 = *(v10 + 88);
        v12 = 0;
        if (v13)
        {
          *(v10 + 88) = v13 + 1;
        }

        v11 = -1;
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      *v49 = v4;
      v50 = v11;
      v14 = object[3];
      if (v14)
      {
        v15 = *(v14 + 40);
        if (v15)
        {
          v15();
LABEL_20:
          if ((v12 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_22:
          if ((v7 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v17 = object;
      v18 = __nwlog_obj();
      v19 = v17[2];
      *buf = 136446722;
      v55 = "__nw_protocol_connected";
      if (!v19)
      {
        v19 = "invalid";
      }

      v56 = 2082;
      v57 = v19;
      v58 = 2048;
      v20 = v17;
      v59 = v17;
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = v20[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              v36 = v20[2];
              if (!v36)
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_connected";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = v20;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_78;
          }

          if (v35)
          {
            v47 = v20[2];
            if (!v47)
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = v20[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_78:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_20;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_connected";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null other_protocol", buf, 12);

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_88;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_88:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_22;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_connected";
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", buf, 12);

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_connected";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_83;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_83:
  if (v26)
  {
    free(v26);
  }

  return 1;
}

void sub_181D0CE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

unint64_t nw_quic_connection_get_datagram_context_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_context_id = _nw_quic_connection_get_datagram_context_id();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_context_id";
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
        v14 = "nw_quic_connection_get_datagram_context_id";
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
            v14 = "nw_quic_connection_get_datagram_context_id";
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
        v14 = "nw_quic_connection_get_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_context_id";
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

  datagram_context_id = 0;
LABEL_3:

  return datagram_context_id;
}

unint64_t _nw_quic_connection_get_datagram_context_id()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 7) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t _nw_quic_connection_get_disable_ecn()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 9) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t nw_quic_connection_get_disable_ecn_echo(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    disable_ecn_echo = _nw_quic_connection_get_disable_ecn_echo();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_disable_ecn_echo";
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
        v14 = "nw_quic_connection_get_disable_ecn_echo";
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
            v14 = "nw_quic_connection_get_disable_ecn_echo";
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
        v14 = "nw_quic_connection_get_disable_ecn_echo";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn_echo";
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

  disable_ecn_echo = 0;
LABEL_3:

  return disable_ecn_echo;
}

BOOL network_config_get_quic_l4s_enabled()
{
  if (l4s_enabled_by_developer())
  {
    return 1;
  }

  if (l4s_disabled_by_developer())
  {
    return 0;
  }

  v1 = networkd_settings_copy_value_of_type(nw_setting_enable_quic_l4s, 0);
  v2 = v1;
  v3 = v1 && object_getClass(v1) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v2);

  return v3;
}

BOOL l4s_disabled_by_developer(void)
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);

    if (value == 2)
    {
      return 1;
    }
  }

  else
  {
  }

  if (nw_settings_get_l4s_enabled_internal::onceToken != -1)
  {
    dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
  }

  return nw_settings_get_l4s_enabled_internal::l4s_setting == 2;
}

uint64_t nw_protocol_definition_get_variant(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[16];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_variant";
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
        v15 = "nw_protocol_definition_get_variant";
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
          v15 = "nw_protocol_definition_get_variant";
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
        v15 = "nw_protocol_definition_get_variant";
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
        v15 = "nw_protocol_definition_get_variant";
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

void nw_sec_protocol_options_iterate_application_protocols(void *a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_sec_protocol_options_iterate_application_protocols";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v9, &type, &v25))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v25 == 1)
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
          v28 = "nw_sec_protocol_options_iterate_application_protocols";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v9);
        goto LABEL_4;
      }

      if (v16)
      {
        *buf = 136446210;
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v6)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __nw_sec_protocol_options_iterate_application_protocols_block_invoke;
    v22[3] = &unk_1E6A3A7C8;
    v23 = v6;
    v24 = a2;
    nw_protocol_options_access_handle(v5, v22);

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_sec_protocol_options_iterate_application_protocols";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null alpn_iterator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v9, &type, &v25))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null alpn_iterator", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v25 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null alpn_iterator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null alpn_iterator, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v28 = "nw_sec_protocol_options_iterate_application_protocols";
    v29 = 2082;
    v30 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null alpn_iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_quic_connection_get_quic_state(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_quic_state(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_quic_state";
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
        v14 = "nw_quic_connection_get_quic_state";
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
            v14 = "nw_quic_connection_get_quic_state";
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
        v14 = "nw_quic_connection_get_quic_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_quic_state";
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

  v2 = 0;
LABEL_3:

  return v2;
}

void nw_protocol_stack_prepend_application_protocol(nw_protocol_stack_t stack, nw_protocol_options_t protocol)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = stack;
  v4 = protocol;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_stack_prepend_application_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null stack", buf, 12);

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
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack";
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
          v19 = "nw_protocol_stack_prepend_application_protocol";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack, no backtrace";
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
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_stack_prepend_application_protocol(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_stack_prepend_application_protocol";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);

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
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol";
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
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
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
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_stack_prepend_application_protocol";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t nw_quic_connection_get_ack_delay_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    ack_delay_size = _nw_quic_connection_get_ack_delay_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_ack_delay_size";
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
        v14 = "nw_quic_connection_get_ack_delay_size";
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
            v14 = "nw_quic_connection_get_ack_delay_size";
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
        v14 = "nw_quic_connection_get_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_ack_delay_size";
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

  ack_delay_size = 0;
LABEL_3:

  return ack_delay_size;
}

uint64_t _nw_quic_connection_get_idle_timeout()
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

  v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout);

  return v4;
}

uint64_t nw_quic_connection_get_initial_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_streams_bidirectional = _nw_quic_connection_get_initial_max_streams_bidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
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
            v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
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

  initial_max_streams_bidirectional = 0;
LABEL_3:

  return initial_max_streams_bidirectional;
}

uint64_t _nw_quic_connection_get_initial_max_streams_unidirectional()
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

  v4 = *(v3 + 56);

  return v4;
}

uint64_t nw_quic_connection_get_initial_max_data(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_data = _nw_quic_connection_get_initial_max_data();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_data";
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
        v14 = "nw_quic_connection_get_initial_max_data";
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
            v14 = "nw_quic_connection_get_initial_max_data";
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
        v14 = "nw_quic_connection_get_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_data";
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

  initial_max_data = 0;
LABEL_3:

  return initial_max_data;
}

uint64_t _nw_quic_connection_get_initial_max_data()
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

  v4 = *(v3 + 16);

  return v4;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_bidirectional_local(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_bidirectional_local = _nw_quic_connection_get_initial_max_stream_data_bidirectional_local();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
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

  initial_max_stream_data_bidirectional_local = 0;
LABEL_3:

  return initial_max_stream_data_bidirectional_local;
}

uint64_t _nw_quic_connection_get_initial_max_stream_data_bidirectional_local()
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

  v4 = *(v3 + 24);

  return v4;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_bidirectional_remote = _nw_quic_connection_get_initial_max_stream_data_bidirectional_remote();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
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

  initial_max_stream_data_bidirectional_remote = 0;
LABEL_3:

  return initial_max_stream_data_bidirectional_remote;
}