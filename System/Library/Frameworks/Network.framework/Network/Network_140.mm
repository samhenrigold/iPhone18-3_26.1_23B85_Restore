void __nw_connection_group_remove_member_block_invoke(void *a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(a1[4] + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v4 = gconnection_groupLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[5];
      v6 = *(a1[4] + 176);
      v10 = 136447234;
      v11 = "nw_connection_group_remove_member_block_invoke";
      v12 = 1024;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      v16 = 1042;
      v17 = 16;
      v18 = 2098;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [G%u] Removing member '%@' from Group Agent UUID=(%{public,uuid_t}.16P)", &v10, 0x2Cu);
    }
  }

  v7 = _nw_array_create();
  v8 = v7;
  if (v7)
  {
    v9 = a1[5];
    if (v9)
    {
      _nw_array_append(v7, v9);
    }
  }

  nw_path_group_member_action(a1[6], a2, 134, v8);
}

void nw_connection_group_start(nw_connection_group_t group)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = group;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_start_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v13 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 45);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 45);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_connection_group_start";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null group", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_start";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_connection_group_start";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_connection_group_start";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_start";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_connection_group_start_block_invoke(uint64_t a1)
{
  v180 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 16) = qos_class_self();
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!v3)
  {
    if (!*(v2 + 8))
    {
      if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v4 = gconnection_groupLogObj;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v27 = *(*(a1 + 32) + 176);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_start_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group's client_queue is not set. You must set this group's client_queue using group() prior to calling start.", buf, 0x12u);
        }

        goto LABEL_78;
      }

      return;
    }

    if (!*(v2 + 144) && !*(v2 + 152))
    {
      if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v4 = gconnection_groupLogObj;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v60 = *(*(a1 + 32) + 176);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_start_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v60;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group does not have a receive handler or new connection handler set, You must set this group's receive handler or new connection handler prior to calling start.", buf, 0x12u);
        }

        goto LABEL_78;
      }

      return;
    }

    if (!*(v2 + 32) && !nw_parameters_get_logging_disabled(*(v2 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v6 = gconnection_groupLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(*(a1 + 32) + 176);
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_start_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group does not have a state changed handler set, no state updates will be delivered.", buf, 0x12u);
      }
    }

    v8 = *(a1 + 32);
    if (*(v8 + 96))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 176);
        port = nw_listener_get_port(*(v10 + 96));
        v13 = *(a1 + 32);
        v14 = *(v13 + 56);
        id_string = nw_listener_get_id_string(*(v13 + 96));
        *buf = 136447234;
        *&buf[4] = "nw_connection_group_start_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        *&buf[18] = 1024;
        *&buf[20] = port;
        *v173 = 2112;
        *&v173[2] = v14;
        *&v173[10] = 2080;
        *&v173[12] = id_string;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u port: %u, parameters: %@, listener: [%s]] start", buf, 0x2Cu);
      }

      v8 = *(a1 + 32);
      if (*(v8 + 192))
      {
        nw_listener_set_new_connection_limit(*(v8 + 96), *(v8 + 192));
        v8 = *(a1 + 32);
      }
    }

    objc_storeStrong((v8 + 24), v8);
    *(*(a1 + 32) + 198) |= 1u;
    v16 = *(a1 + 32);
    if (!v16[10])
    {
      v28 = v16;
LABEL_45:
      if (v28[14])
      {
        if (!nw_parameters_get_logging_disabled(v28[7]) && gLogDatapath == 1)
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v92 = gconnection_groupLogObj;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v93 = *(v28 + 44);
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_start_existing_connections_locked";
            *&buf[12] = 1024;
            *&buf[14] = v93;
            _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] starting existing connections", buf, 0x12u);
          }
        }

        v29 = v28[14];
        if (v29)
        {
          _nw_array_apply(v29, &__block_literal_global_168);
        }
      }

      goto LABEL_50;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_start_block_invoke";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s Calling nw_path_create_evaluator_for_group", buf, 0xCu);
    }

    evaluator_for_group = nw_path_create_evaluator_for_group(*(*(a1 + 32) + 64), *(*(a1 + 32) + 56));
    v19 = *(*(a1 + 32) + 72);
    *(*(a1 + 32) + 72) = evaluator_for_group;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v173[0] = 0;
    v20 = *(a1 + 32);
    v21 = v20[9];
    v22 = v20[1];
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __nw_connection_group_start_block_invoke_30;
    v163[3] = &unk_1E6A2CAE8;
    v165 = buf;
    v164 = v20;
    nw_path_evaluator_set_update_handler(v21, v22, v163);
    v23 = *(*(a1 + 32) + 72);
    if (v23)
    {
      v24 = v23;
      os_unfair_lock_lock(v23 + 24);
      v25 = v24[6];
      os_unfair_lock_unlock(v23 + 24);

      if (v25)
      {
        v159[0] = MEMORY[0x1E69E9820];
        v159[1] = 3221225472;
        v159[2] = __nw_connection_group_start_block_invoke_33;
        v159[3] = &unk_1E6A2CAC0;
        v160 = *(a1 + 32);
        v25 = v25;
        v161 = v25;
        v162 = buf;
        nw_path_enumerate_group_options(v25, v159);
      }
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(buf, 8);
    v28 = *(a1 + 32);
    if (v28)
    {
      goto LABEL_45;
    }

    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_start_existing_connections_locked";
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null group", buf, 12);

    v177[0] = 16;
    handler[0] = 0;
    if (__nwlog_fault(v89, v177, handler))
    {
      if (v177[0] == 17)
      {
        v90 = __nwlog_obj();
        v91 = v177[0];
        if (os_log_type_enabled(v90, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_start_existing_connections_locked";
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null group", buf, 0xCu);
        }
      }

      else if (handler[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v95 = v177[0];
        v96 = os_log_type_enabled(v90, v177[0]);
        if (backtrace_string)
        {
          if (v96)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_start_existing_connections_locked";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v90, v95, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_225;
        }

        if (v96)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_start_existing_connections_locked";
          _os_log_impl(&dword_181A37000, v90, v95, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v112 = v177[0];
        if (os_log_type_enabled(v90, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_start_existing_connections_locked";
          _os_log_impl(&dword_181A37000, v90, v112, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_225:
    if (v89)
    {
      free(v89);
    }

    v28 = 0;
LABEL_50:

    v30 = *(*(a1 + 32) + 64);
    if (!v30)
    {
      return;
    }

    v31 = v30;
    v32 = v31[2] == 1;

    if (!v32)
    {
      v33 = *(*(a1 + 32) + 64);
      if (!v33)
      {
        return;
      }

      v34 = v33;
      v35 = v34[2] == 4;

      if (!v35)
      {
        return;
      }
    }

    v36 = *(a1 + 32);
    v37 = v36;
    if (v36)
    {
      v38 = v36[12];
      if (v38)
      {
        v39 = v36;
        v40 = v39[7];
        if (v40)
        {
          v41 = _nw_parameters_copy_context();
          v42 = v41;
          if (v41)
          {
            v43 = nw_context_copy_workloop(v41);
            if (v43)
            {
              goto LABEL_62;
            }

            if (nw_context_copy_implicit_context::onceToken[0] != -1)
            {
              dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
            }

            v44 = nw_context_copy_implicit_context::implicit_context;
            v43 = nw_context_copy_workloop(v44);

            if (v43)
            {
              goto LABEL_62;
            }

            v110 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_copy_workloop";
            LODWORD(v148) = 12;
            v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v110, 16, "%{public}s called with null workloop", buf, v148);

            v177[0] = 16;
            handler[0] = 0;
            if (__nwlog_fault(v158, v177, handler))
            {
              if (v177[0] == 17)
              {
                v108 = __nwlog_obj();
                v111 = v177[0];
                if (os_log_type_enabled(v108, v177[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v108, v111, "%{public}s called with null workloop", buf, 0xCu);
                }

LABEL_221:

                goto LABEL_278;
              }

              if (handler[0] != 1)
              {
                v108 = __nwlog_obj();
                v129 = v177[0];
                if (os_log_type_enabled(v108, v177[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v108, v129, "%{public}s called with null workloop, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_221;
              }

              v121 = __nw_create_backtrace_string();
              v122 = __nwlog_obj();
              v153 = v177[0];
              v124 = os_log_type_enabled(v122, v177[0]);
              if (v121)
              {
                if (v124)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  *&buf[12] = 2082;
                  *&buf[14] = v121;
                  _os_log_impl(&dword_181A37000, v122, v153, "%{public}s called with null workloop, dumping backtrace:%{public}s", buf, 0x16u);
                }

LABEL_206:

                free(v121);
                goto LABEL_278;
              }

              if (v124)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v122, v153, "%{public}s called with null workloop, no backtrace", buf, 0xCu);
              }

              goto LABEL_277;
            }
          }

          else
          {
            v107 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_copy_workloop";
            LODWORD(v148) = 12;
            v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null context", buf, v148);

            v177[0] = 16;
            handler[0] = 0;
            if (__nwlog_fault(v158, v177, handler))
            {
              if (v177[0] == 17)
              {
                v108 = __nwlog_obj();
                v109 = v177[0];
                if (os_log_type_enabled(v108, v177[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null context", buf, 0xCu);
                }

                goto LABEL_221;
              }

              if (handler[0] != 1)
              {
                v108 = __nwlog_obj();
                v128 = v177[0];
                if (os_log_type_enabled(v108, v177[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v108, v128, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_221;
              }

              v121 = __nw_create_backtrace_string();
              v122 = __nwlog_obj();
              v152 = v177[0];
              v123 = os_log_type_enabled(v122, v177[0]);
              if (v121)
              {
                if (v123)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_group_copy_workloop";
                  *&buf[12] = 2082;
                  *&buf[14] = v121;
                  _os_log_impl(&dword_181A37000, v122, v152, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
                }

                goto LABEL_206;
              }

              if (v123)
              {
                *buf = 136446210;
                *&buf[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v122, v152, "%{public}s called with null context, no backtrace", buf, 0xCu);
              }

LABEL_277:
            }
          }

LABEL_278:
          if (v158)
          {
            free(v158);
          }

          v43 = 0;
LABEL_62:

          goto LABEL_63;
        }

        v103 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_copy_workloop";
        LODWORD(v148) = 12;
        v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null parameters", buf, v148);

        v177[0] = 16;
        handler[0] = 0;
        if (__nwlog_fault(v104, v177, handler))
        {
          if (v177[0] == 17)
          {
            v105 = __nwlog_obj();
            v106 = v177[0];
            if (os_log_type_enabled(v105, v177[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null parameters", buf, 0xCu);
            }
          }

          else if (handler[0] == 1)
          {
            v119 = __nw_create_backtrace_string();
            v105 = __nwlog_obj();
            typea = v177[0];
            v120 = os_log_type_enabled(v105, v177[0]);
            if (v119)
            {
              if (v120)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_group_copy_workloop";
                *&buf[12] = 2082;
                *&buf[14] = v119;
                _os_log_impl(&dword_181A37000, v105, typea, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v119);
              goto LABEL_269;
            }

            if (v120)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v105, typea, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v105 = __nwlog_obj();
            v127 = v177[0];
            if (os_log_type_enabled(v105, v177[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v105, v127, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_269:
        if (v104)
        {
          free(v104);
        }

        v43 = 0;
LABEL_63:

        nw_listener_set_queue(v38, v43);
        v45 = v37[12];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke;
        *v173 = &unk_1E6A3D820;
        v46 = v39;
        *&v173[8] = v46;
        nw_listener_set_state_changed_handler(v45, buf);
        v47 = v46[8];
        if (!v47)
        {
          goto LABEL_87;
        }

        v48 = v47;
        v49 = v48[2] == 1;

        if (v49)
        {
          v50 = v37[12];
          *v177 = MEMORY[0x1E69E9820];
          *&v177[8] = 3221225472;
          *&v177[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2;
          v178 = &unk_1E6A2CC20;
          v51 = v46;
          v179 = v51;
          nw_listener_set_new_packet_handler(v50, v177);
          v52 = v51[13];
          if (!v52)
          {
LABEL_72:

LABEL_106:
            *(v46 + 198) |= 8u;
            nw_listener_start(v37[12]);

LABEL_107:
            return;
          }

          v157 = v51;
          type = v39[7];
          if (type)
          {
            v53 = _nw_parameters_copy_context();
            v54 = v53;
            if (v53)
            {
              v55 = nw_context_copy_workloop(v53);
              if (v55 || (v56 = nw_context_copy_implicit_context(), v55 = nw_context_copy_workloop(v56), v56, v55))
              {
LABEL_70:

LABEL_71:
                nw_listener_set_queue(v52, v55);

                v57 = v51[13];
                *handler = MEMORY[0x1E69E9820];
                *&handler[8] = 3221225472;
                *&handler[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_3;
                v175 = &unk_1E6A2CC48;
                v58 = v157;
                v176 = v58;
                nw_listener_set_new_connection_handler(v57, handler);
                v59 = v51[13];
                *v166 = MEMORY[0x1E69E9820];
                v167 = 3221225472;
                v168 = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_4;
                v169 = &unk_1E6A3D820;
                v170 = v58;
                nw_listener_set_state_changed_handler(v59, v166);
                nw_listener_start(v51[13]);

                goto LABEL_72;
              }

              v137 = __nwlog_obj();
              *handler = 136446210;
              *&handler[4] = "nw_connection_group_copy_workloop";
              LODWORD(v148) = 12;
              v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s called with null workloop", handler, v148);

              v166[0] = OS_LOG_TYPE_ERROR;
              v171 = 0;
              if (__nwlog_fault(v154, v166, &v171))
              {
                if (v166[0] == OS_LOG_TYPE_FAULT)
                {
                  v135 = __nwlog_obj();
                  v138 = v166[0];
                  if (os_log_type_enabled(v135, v166[0]))
                  {
                    *handler = 136446210;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v135, v138, "%{public}s called with null workloop", handler, 0xCu);
                  }

LABEL_289:

                  goto LABEL_302;
                }

                if (v171 != 1)
                {
                  v135 = __nwlog_obj();
                  v147 = v166[0];
                  if (os_log_type_enabled(v135, v166[0]))
                  {
                    *handler = 136446210;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v135, v147, "%{public}s called with null workloop, backtrace limit exceeded", handler, 0xCu);
                  }

                  goto LABEL_289;
                }

                v141 = __nw_create_backtrace_string();
                v142 = __nwlog_obj();
                v150 = v166[0];
                v144 = os_log_type_enabled(v142, v166[0]);
                if (v141)
                {
                  if (v144)
                  {
                    *handler = 136446466;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    *&handler[12] = 2082;
                    *&handler[14] = v141;
                    _os_log_impl(&dword_181A37000, v142, v150, "%{public}s called with null workloop, dumping backtrace:%{public}s", handler, 0x16u);
                  }

LABEL_257:

                  free(v141);
                  goto LABEL_302;
                }

                if (v144)
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v142, v150, "%{public}s called with null workloop, no backtrace", handler, 0xCu);
                }

                goto LABEL_301;
              }
            }

            else
            {
              v134 = __nwlog_obj();
              *handler = 136446210;
              *&handler[4] = "nw_connection_group_copy_workloop";
              LODWORD(v148) = 12;
              v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v134, 16, "%{public}s called with null context", handler, v148);

              v166[0] = OS_LOG_TYPE_ERROR;
              v171 = 0;
              if (__nwlog_fault(v154, v166, &v171))
              {
                if (v166[0] == OS_LOG_TYPE_FAULT)
                {
                  v135 = __nwlog_obj();
                  v136 = v166[0];
                  if (os_log_type_enabled(v135, v166[0]))
                  {
                    *handler = 136446210;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v135, v136, "%{public}s called with null context", handler, 0xCu);
                  }

                  goto LABEL_289;
                }

                if (v171 != 1)
                {
                  v135 = __nwlog_obj();
                  v146 = v166[0];
                  if (os_log_type_enabled(v135, v166[0]))
                  {
                    *handler = 136446210;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v135, v146, "%{public}s called with null context, backtrace limit exceeded", handler, 0xCu);
                  }

                  goto LABEL_289;
                }

                v141 = __nw_create_backtrace_string();
                v142 = __nwlog_obj();
                v149 = v166[0];
                v143 = os_log_type_enabled(v142, v166[0]);
                if (v141)
                {
                  if (v143)
                  {
                    *handler = 136446466;
                    *&handler[4] = "nw_connection_group_copy_workloop";
                    *&handler[12] = 2082;
                    *&handler[14] = v141;
                    _os_log_impl(&dword_181A37000, v142, v149, "%{public}s called with null context, dumping backtrace:%{public}s", handler, 0x16u);
                  }

                  goto LABEL_257;
                }

                if (v143)
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v142, v149, "%{public}s called with null context, no backtrace", handler, 0xCu);
                }

LABEL_301:
              }
            }

LABEL_302:
            if (v154)
            {
              free(v154);
            }

            v55 = 0;
            goto LABEL_70;
          }

          v130 = __nwlog_obj();
          *handler = 136446210;
          *&handler[4] = "nw_connection_group_copy_workloop";
          LODWORD(v148) = 12;
          v131 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s called with null parameters", handler, v148);

          v166[0] = OS_LOG_TYPE_ERROR;
          v171 = 0;
          if (__nwlog_fault(v131, v166, &v171))
          {
            if (v166[0] == OS_LOG_TYPE_FAULT)
            {
              v132 = __nwlog_obj();
              v133 = v166[0];
              if (os_log_type_enabled(v132, v166[0]))
              {
                *handler = 136446210;
                *&handler[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null parameters", handler, 0xCu);
              }
            }

            else if (v171 == 1)
            {
              v139 = __nw_create_backtrace_string();
              v132 = __nwlog_obj();
              v151 = v166[0];
              v140 = os_log_type_enabled(v132, v166[0]);
              if (v139)
              {
                if (v140)
                {
                  *handler = 136446466;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  *&handler[12] = 2082;
                  *&handler[14] = v139;
                  _os_log_impl(&dword_181A37000, v132, v151, "%{public}s called with null parameters, dumping backtrace:%{public}s", handler, 0x16u);
                }

                free(v139);
                goto LABEL_293;
              }

              if (v140)
              {
                *handler = 136446210;
                *&handler[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v132, v151, "%{public}s called with null parameters, no backtrace", handler, 0xCu);
              }
            }

            else
            {
              v132 = __nwlog_obj();
              v145 = v166[0];
              if (os_log_type_enabled(v132, v166[0]))
              {
                *handler = 136446210;
                *&handler[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v132, v145, "%{public}s called with null parameters, backtrace limit exceeded", handler, 0xCu);
              }
            }
          }

LABEL_293:
          if (v131)
          {
            free(v131);
          }

          v55 = 0;
          goto LABEL_71;
        }

        v61 = v46[8];
        if (!v61)
        {
          goto LABEL_87;
        }

        if (nw_group_descriptor_get_type(v61) == 2)
        {
LABEL_83:
          v63 = v37[12];
          *v177 = MEMORY[0x1E69E9820];
          *&v177[8] = 3221225472;
          *&v177[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2_176;
          v178 = &unk_1E6A2CC48;
          v179 = v46;
          nw_listener_set_new_connection_handler(v63, v177);

          goto LABEL_106;
        }

        v62 = v46[8];
        if (!v62)
        {
          goto LABEL_87;
        }

        if (nw_group_descriptor_get_type(v62) == 4)
        {
          goto LABEL_83;
        }

        if (!v46[8])
        {
LABEL_87:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v67 = gLogObj;
          *v177 = 136446210;
          *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
          LODWORD(v148) = 12;
          v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s Group descriptor is not set", v177, v148);

          handler[0] = 16;
          v166[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v68, handler, v166))
          {
            goto LABEL_104;
          }

          if (handler[0] == 17)
          {
            v69 = __nwlog_obj();
            v70 = handler[0];
            if (os_log_type_enabled(v69, handler[0]))
            {
              *v177 = 136446210;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v69, v70, "%{public}s Group descriptor is not set", v177, 0xCu);
            }
          }

          else if (v166[0] == OS_LOG_TYPE_INFO)
          {
            v71 = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v72 = handler[0];
            v73 = os_log_type_enabled(v69, handler[0]);
            if (v71)
            {
              if (v73)
              {
                *v177 = 136446466;
                *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
                *&v177[12] = 2082;
                *&v177[14] = v71;
                _os_log_impl(&dword_181A37000, v69, v72, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", v177, 0x16u);
              }

              free(v71);
              if (!v68)
              {
                goto LABEL_106;
              }

              goto LABEL_105;
            }

            if (v73)
            {
              *v177 = 136446210;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v69, v72, "%{public}s Group descriptor is not set, no backtrace", v177, 0xCu);
            }
          }

          else
          {
            v69 = __nwlog_obj();
            v74 = handler[0];
            if (os_log_type_enabled(v69, handler[0]))
            {
              *v177 = 136446210;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v69, v74, "%{public}s Group descriptor is not set, backtrace limit exceeded", v177, 0xCu);
            }
          }

          goto LABEL_103;
        }

        v64 = __nwlog_obj();
        v65 = nw_group_descriptor_get_type(v46[8]);
        if (v65 > 4)
        {
          v66 = "unknown";
        }

        else
        {
          v66 = off_1E6A2CCD0[v65];
        }

        *v177 = 136446466;
        *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
        *&v177[12] = 2080;
        *&v177[14] = v66;
        LODWORD(v148) = 22;
        v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s Unsupported group descriptor type: %s", v177, v148);

        handler[0] = 16;
        v166[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v68, handler, v166))
        {
          if (handler[0] == 17)
          {
            v69 = __nwlog_obj();
            v75 = handler[0];
            if (os_log_type_enabled(v69, handler[0]))
            {
              v76 = nw_group_descriptor_get_type(v46[8]);
              if (v76 > 4)
              {
                v77 = "unknown";
              }

              else
              {
                v77 = off_1E6A2CCD0[v76];
              }

              *v177 = 136446466;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&v177[12] = 2080;
              *&v177[14] = v77;
              _os_log_impl(&dword_181A37000, v69, v75, "%{public}s Unsupported group descriptor type: %s", v177, 0x16u);
            }

LABEL_103:

            goto LABEL_104;
          }

          if (v166[0] != OS_LOG_TYPE_INFO)
          {
            v69 = __nwlog_obj();
            v83 = handler[0];
            if (os_log_type_enabled(v69, handler[0]))
            {
              v84 = nw_group_descriptor_get_type(v46[8]);
              if (v84 > 4)
              {
                v85 = "unknown";
              }

              else
              {
                v85 = off_1E6A2CCD0[v84];
              }

              *v177 = 136446466;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&v177[12] = 2080;
              *&v177[14] = v85;
              _os_log_impl(&dword_181A37000, v69, v83, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", v177, 0x16u);
            }

            goto LABEL_103;
          }

          v78 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v79 = handler[0];
          v80 = os_log_type_enabled(v69, handler[0]);
          if (!v78)
          {
            if (v80)
            {
              v86 = nw_group_descriptor_get_type(v46[8]);
              if (v86 > 4)
              {
                v87 = "unknown";
              }

              else
              {
                v87 = off_1E6A2CCD0[v86];
              }

              *v177 = 136446466;
              *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&v177[12] = 2080;
              *&v177[14] = v87;
              _os_log_impl(&dword_181A37000, v69, v79, "%{public}s Unsupported group descriptor type: %s, no backtrace", v177, 0x16u);
            }

            goto LABEL_103;
          }

          if (v80)
          {
            v81 = nw_group_descriptor_get_type(v46[8]);
            if (v81 > 4)
            {
              v82 = "unknown";
            }

            else
            {
              v82 = off_1E6A2CCD0[v81];
            }

            *v177 = 136446722;
            *&v177[4] = "nw_connection_group_set_up_and_start_listener_locked";
            *&v177[12] = 2080;
            *&v177[14] = v82;
            *&v177[22] = 2082;
            v178 = v78;
            _os_log_impl(&dword_181A37000, v69, v79, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", v177, 0x20u);
          }

          free(v78);
        }

LABEL_104:
        if (!v68)
        {
          goto LABEL_106;
        }

LABEL_105:
        free(v68);
        goto LABEL_106;
      }

      v101 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
      LODWORD(v148) = 12;
      v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v101, 16, "%{public}s called with null group->listener", buf, v148);

      v177[0] = 16;
      handler[0] = 0;
      if (!__nwlog_fault(v98, v177, handler))
      {
        goto LABEL_264;
      }

      if (v177[0] == 17)
      {
        v99 = __nwlog_obj();
        v102 = v177[0];
        if (os_log_type_enabled(v99, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null group->listener", buf, 0xCu);
        }
      }

      else if (handler[0] == 1)
      {
        v116 = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v117 = v177[0];
        v118 = os_log_type_enabled(v99, v177[0]);
        if (v116)
        {
          if (v118)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
            *&buf[12] = 2082;
            *&buf[14] = v116;
            _os_log_impl(&dword_181A37000, v99, v117, "%{public}s called with null group->listener, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v116);
          if (!v98)
          {
            goto LABEL_107;
          }

          goto LABEL_265;
        }

        if (v118)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v117, "%{public}s called with null group->listener, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v126 = v177[0];
        if (os_log_type_enabled(v99, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v126, "%{public}s called with null group->listener, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v97 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
      LODWORD(v148) = 12;
      v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null group", buf, v148);

      v177[0] = 16;
      handler[0] = 0;
      if (!__nwlog_fault(v98, v177, handler))
      {
        goto LABEL_264;
      }

      if (v177[0] == 17)
      {
        v99 = __nwlog_obj();
        v100 = v177[0];
        if (os_log_type_enabled(v99, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null group", buf, 0xCu);
        }
      }

      else if (handler[0] == 1)
      {
        v113 = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v114 = v177[0];
        v115 = os_log_type_enabled(v99, v177[0]);
        if (v113)
        {
          if (v115)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
            *&buf[12] = 2082;
            *&buf[14] = v113;
            _os_log_impl(&dword_181A37000, v99, v114, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v113);
LABEL_264:
          if (!v98)
          {
            goto LABEL_107;
          }

LABEL_265:
          free(v98);
          goto LABEL_107;
        }

        if (v115)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v114, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v125 = v177[0];
        if (os_log_type_enabled(v99, v177[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          _os_log_impl(&dword_181A37000, v99, v125, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_264;
  }

  if (v3 == 4)
  {
    if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v4 = gconnection_groupLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 176);
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_start_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group has already been cancelled and cannot be started again. You must create a new group object and start it.", buf, 0x12u);
      }

LABEL_78:
    }
  }

  else if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v4 = gconnection_groupLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v26 = *(*(a1 + 32) + 176);
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_start_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group has already been started, ignoring nw_connection_group_start().", buf, 0x12u);
    }

    goto LABEL_78;
  }
}

void __nw_connection_group_start_block_invoke_30(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 136446466;
    *&buf[4] = "nw_connection_group_start_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Path evaluator update handler called, initial_set_members_complete=%{BOOL}d", buf, 0x12u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_connection_group_start_block_invoke_31;
  aBlock[3] = &unk_1E6A3BFC0;
  v25 = &v27;
  v8 = v6;
  v9 = *(a1 + 40);
  v23 = v8;
  v26 = v9;
  v10 = v3;
  v24 = v10;
  v11 = _Block_copy(aBlock);
  os_unfair_lock_lock(v6 + 45);
  v11[2](v11);
  os_unfair_lock_unlock(v6 + 45);

  if (v7 && (v28[3] & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = v10;
    v14 = nw_group_descriptor_copy_members(v12[8]);
    v15 = nw_path_copy_group_members(v13);
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = _nw_array_create();
      if (v16)
      {
        goto LABEL_10;
      }
    }

    v16 = _nw_array_create();
LABEL_10:
    nw_group_descriptor_set_members(v12[8], v16);
    v17 = v12[8];
    if (v17)
    {
      v18 = v17;
      v19 = v18[2] == 3;

      if (v19 && *(v12 + 10) <= 2)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL37nw_connection_group_reconcile_membersP30NWConcrete_nw_connection_groupPU21objcproto10OS_nw_path8NSObject_block_invoke;
        v34 = &unk_1E6A3CCB8;
        v20 = v12;
        v35 = v20;
        if (v16)
        {
          _nw_array_apply(v16, buf);
          v20 = v35;
        }
      }
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___ZL37nw_connection_group_reconcile_membersP30NWConcrete_nw_connection_groupPU21objcproto10OS_nw_path8NSObject_block_invoke_2;
    v31[3] = &unk_1E6A2CBF8;
    v21 = v12;
    v32 = v21;
    nw_array_review_change(v14, v16, &__block_literal_global_165, v31);
  }

  _Block_object_dispose(&v27, 8);
}

void sub_1823DB260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_connection_group_start_block_invoke_33(uint64_t a1, const unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446722;
    v7 = "nw_connection_group_start_block_invoke";
    v8 = 1042;
    v9 = 16;
    v10 = 2098;
    v11 = a2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Group Agent UUID=(%{public,uuid_t}.16P)", &v6, 0x1Cu);
  }

  v5 = nw_group_descriptor_copy_members(*(*(a1 + 32) + 64));
  nw_path_group_member_action(*(a1 + 40), a2, 133, v5);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  nw_connection_group_set_state_locked(*(a1 + 32), 2, 0);
}

void __nw_connection_group_start_block_invoke_31(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 198) >> 7;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __nw_connection_group_start_block_invoke_2;
    v5[3] = &unk_1E6A2CAC0;
    v1 = *(a1 + 40);
    v6 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v7 = v3;
    v8 = v4;
    nw_path_enumerate_group_options(v1, v5);
  }
}

uint64_t ___ZL37nw_connection_group_reconcile_membersP30NWConcrete_nw_connection_groupPU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v66 = nw_endpoint_copy(v67);
  v4 = _nw_parameters_copy();
  v5 = *(a1 + 32);
  v6 = v66;
  v7 = v4;
  v8 = v7;
  if (!v5)
  {
    v40 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null group", aBlock, 12);

    v91[0] = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v41, v91, buf))
    {
      goto LABEL_103;
    }

    if (v91[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null group", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    if (buf[0] != 1)
    {
      v42 = __nwlog_obj();
      v60 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v60, "%{public}s called with null group, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v49 = v91[0];
    v50 = os_log_type_enabled(v42, v91[0]);
    if (!backtrace_string)
    {
      if (v50)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null group, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    if (v50)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      *&aBlock[12] = 2082;
      *&aBlock[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null group, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

    goto LABEL_68;
  }

  if (!v6)
  {
    v44 = __nwlog_obj();
    *aBlock = 136446210;
    *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null remote_endpoint", aBlock, 12);

    v91[0] = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v41, v91, buf))
    {
      goto LABEL_103;
    }

    if (v91[0] == 17)
    {
      v42 = __nwlog_obj();
      v45 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null remote_endpoint", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    if (buf[0] != 1)
    {
      v42 = __nwlog_obj();
      v61 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v61, "%{public}s called with null remote_endpoint, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v51 = v91[0];
    v52 = os_log_type_enabled(v42, v91[0]);
    if (!backtrace_string)
    {
      if (v52)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null remote_endpoint, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    if (v52)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      *&aBlock[12] = 2082;
      *&aBlock[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

LABEL_68:

    free(backtrace_string);
    if (!v41)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (v7)
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__9201;
    v76 = __Block_byref_object_dispose__9202;
    v77 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke;
    *&aBlock[24] = &unk_1E6A2CB10;
    v9 = v5;
    *&aBlock[32] = v9;
    v87 = &v68;
    v10 = v8;
    v85 = v10;
    v11 = v6;
    v86 = v11;
    v88 = &v72;
    v12 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 45);
    v12[2](v12);
    os_unfair_lock_unlock(v5 + 45);

    if (v69[3])
    {
      v13 = 0;
LABEL_36:

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);

      goto LABEL_37;
    }

    if (v73[5])
    {
      v14 = *&v9[16]._os_unfair_lock_opaque;
      if (!v14 || (v15 = v14, v16 = v15[2] == 2, v15, !v16))
      {
LABEL_35:
        v13 = v73[5];
        goto LABEL_36;
      }
    }

    if (!nw_parameters_get_logging_disabled(*&v9[14]._os_unfair_lock_opaque) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v56 = gconnection_groupLogObj;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        os_unfair_lock_opaque = v9[44]._os_unfair_lock_opaque;
        *v91 = 136446978;
        *&v91[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        *&v91[12] = 1024;
        *&v91[14] = os_unfair_lock_opaque;
        *&v91[18] = 2112;
        *&v91[20] = v11;
        *&v91[28] = 2112;
        *&v91[30] = v10;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Did not find connection for (remote: %@, parameters: %@), creating new connection", v91, 0x26u);
      }
    }

    v17 = v73[5];
    v18 = v9;
    v64 = v17;
    v65 = v11;
    v19 = v10;
    *v91 = 0;
    *&v91[8] = v91;
    *&v91[16] = 0x3032000000;
    *&v91[24] = __Block_byref_object_copy__9201;
    *&v91[32] = __Block_byref_object_dispose__9202;
    v92 = 0;
    v63 = v19;
    v20 = _nw_parameters_copy();
    nw_parameters_set_reuse_local_address(v20, 1);
    if (!nw_parameters_get_logging_disabled(*&v9[14]._os_unfair_lock_opaque) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v58 = gconnection_groupLogObj;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = v18[44]._os_unfair_lock_opaque;
        *buf = 136446978;
        *&buf[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v59;
        *&buf[18] = 2112;
        *&buf[20] = v65;
        *&buf[28] = 2112;
        *&buf[30] = v20;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Creating connection for endpoint (%@) and parameters (%@)", buf, 0x26u);
      }
    }

    v21 = *&v18[16]._os_unfair_lock_opaque;
    if (v21 && (v22 = v21, v23 = v22[2] == 2, v22, v23))
    {
      v24 = nw_connection_create_with_connection(v64, v20);
    }

    else
    {
      v24 = nw_connection_create_without_parameters_copy(v65, v20);
    }

    v25 = *(*&v91[8] + 40);
    *(*&v91[8] + 40) = v24;

    if (*(*&v91[8] + 40))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL65nw_connection_group_create_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS3_PU33objcproto22OS_nw_protocol_optionsS3_b_block_invoke;
      *&buf[24] = &unk_1E6A3D738;
      *&buf[32] = v18;
      v90 = v91;
      v26 = _Block_copy(buf);
      os_unfair_lock_lock(v5 + 45);
      v26[2](v26);
      os_unfair_lock_unlock(v5 + 45);

      v27 = *&buf[32];
    }

    else
    {
      if (nw_parameters_get_logging_disabled(*&v9[14]._os_unfair_lock_opaque))
      {
        goto LABEL_25;
      }

      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v27 = gconnection_groupLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = v18[44]._os_unfair_lock_opaque;
        v29 = *&v9[14]._os_unfair_lock_opaque;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_create_connection_for_endpoint_and_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v28;
        *&buf[18] = 2112;
        *&buf[20] = v29;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to create connection with parameters %@", buf, 0x1Cu);
      }
    }

LABEL_25:
    v30 = *(*&v91[8] + 40);

    _Block_object_dispose(v91, 8);
    v31 = v73[5];
    v73[5] = v30;

    if (v73[5])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      *v91 = MEMORY[0x1E69E9820];
      *&v91[8] = 3221225472;
      *&v91[16] = ___ZL63nw_connection_group_copy_connection_for_endpoint_and_parametersP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1_PU33objcproto22OS_nw_protocol_optionsS1_bbb_block_invoke_138;
      *&v91[24] = &unk_1E6A3D738;
      v92 = buf;
      v32 = v18;
      *&v91[32] = v32;
      v33 = _Block_copy(v91);
      os_unfair_lock_lock(v5 + 45);
      v33[2](v33);
      os_unfair_lock_unlock(v5 + 45);

      if (*(*&buf[8] + 24) == 1)
      {
        nw_connection_start(v73[5]);
      }

      else if (!nw_parameters_get_logging_disabled(*&v9[14]._os_unfair_lock_opaque))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v34 = gconnection_groupLogObj;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = v32[44]._os_unfair_lock_opaque;
          v36 = v73[5];
          *v78 = 136446722;
          v79 = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
          v80 = 1024;
          v81 = v35;
          v82 = 2112;
          v83 = v36;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Deferring start of connection %@ until group start", v78, 0x1Cu);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    goto LABEL_35;
  }

  v46 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
  v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null parameters", aBlock, 12);

  v91[0] = 16;
  buf[0] = 0;
  if (__nwlog_fault(v41, v91, buf))
  {
    if (v91[0] == 17)
    {
      v42 = __nwlog_obj();
      v47 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null parameters", aBlock, 0xCu);
      }

LABEL_102:

      goto LABEL_103;
    }

    if (buf[0] != 1)
    {
      v42 = __nwlog_obj();
      v62 = v91[0];
      if (os_log_type_enabled(v42, v91[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v62, "%{public}s called with null parameters, backtrace limit exceeded", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    v53 = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v54 = v91[0];
    v55 = os_log_type_enabled(v42, v91[0]);
    if (!v53)
    {
      if (v55)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
        _os_log_impl(&dword_181A37000, v42, v54, "%{public}s called with null parameters, no backtrace", aBlock, 0xCu);
      }

      goto LABEL_102;
    }

    if (v55)
    {
      *aBlock = 136446466;
      *&aBlock[4] = "nw_connection_group_copy_connection_for_endpoint_and_parameters";
      *&aBlock[12] = 2082;
      *&aBlock[14] = v53;
      _os_log_impl(&dword_181A37000, v42, v54, "%{public}s called with null parameters, dumping backtrace:%{public}s", aBlock, 0x16u);
    }

    free(v53);
  }

LABEL_103:
  if (v41)
  {
LABEL_104:
    free(v41);
  }

LABEL_105:
  v13 = 0;
LABEL_37:

  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v37 = gconnection_groupLogObj;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = *(*(a1 + 32) + 176);
      *aBlock = 136446978;
      *&aBlock[4] = "nw_connection_group_reconcile_members_block_invoke";
      *&aBlock[12] = 1024;
      *&aBlock[14] = v38;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v13;
      *&aBlock[28] = 2112;
      *&aBlock[30] = v6;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s [G%u] created connection %@ to endpoint %@", aBlock, 0x26u);
    }
  }

  return 1;
}

void sub_1823DC3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, id a36, id a37)
{
  _Block_object_dispose((v41 - 240), 8);

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_start_block_invoke_2(uint64_t a1, const unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446722;
    v7 = "nw_connection_group_start_block_invoke_2";
    v8 = 1042;
    v9 = 16;
    v10 = 2098;
    v11 = a2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Group Agent UUID=(%{public,uuid_t}.16P)", &v6, 0x1Cu);
  }

  v5 = nw_group_descriptor_copy_members(*(*(a1 + 32) + 64));
  nw_path_group_member_action(*(a1 + 40), a2, 133, v5);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  nw_connection_group_set_state_locked(*(a1 + 32), 2, 0);
}

void nw_connection_group_cancel(nw_connection_group_t group)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = group;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_cancel_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v13 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 45);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 45);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_connection_group_cancel";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null group", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_cancel";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_connection_group_cancel";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_connection_group_cancel";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_connection_group_cancel";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_connection_group_cancel_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 198);
  logging_disabled = nw_parameters_get_logging_disabled(*(v2 + 56));
  if (v3 < 0)
  {
    if (logging_disabled)
    {
      return;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v16 = gconnection_groupLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 176);
      v18 = 136446466;
      v19 = "nw_connection_group_cancel_block_invoke";
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [G%u] The group has already been cancelled, ignoring nw_connection_group_cancel().", &v18, 0x12u);
    }

    goto LABEL_33;
  }

  if (!logging_disabled)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v5 = gconnection_groupLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 176);
      v18 = 136446466;
      v19 = "nw_connection_group_cancel_block_invoke";
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] cancel", &v18, 0x12u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  if (v8)
  {
    nw_path_evaluator_cancel(v8);
    v7 = *(a1 + 32);
  }

  *(v7 + 198) |= 0x80u;
  v9 = *(a1 + 32);
  if ((*(v9 + 198) & 8) != 0 && *(v9 + 96))
  {
    if (!nw_parameters_get_logging_disabled(*(v9 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v10 = gconnection_groupLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(*(a1 + 32) + 176);
        v18 = 136446466;
        v19 = "nw_connection_group_cancel_block_invoke";
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [G%u] cancelling group listener", &v18, 0x12u);
      }
    }

    nw_listener_cancel(*(*(a1 + 32) + 96));
  }

  else
  {
    if (!nw_parameters_get_logging_disabled(*(v9 + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v12 = gconnection_groupLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(a1 + 32) + 176);
        v18 = 136446466;
        v19 = "nw_connection_group_cancel_block_invoke";
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [G%u] cancelling group connections", &v18, 0x12u);
      }
    }

    nw_connection_group_cancel_connections_locked(*(a1 + 32));
  }

  v14 = *(*(a1 + 32) + 104);
  if (v14)
  {
    nw_listener_cancel(v14);
    v15 = *(a1 + 32);
    v16 = *(v15 + 104);
    *(v15 + 104) = 0;
LABEL_33:
  }
}

nw_group_descriptor_t nw_connection_group_copy_descriptor(nw_connection_group_t group)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = group;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_group_copy_descriptor";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null group", buf, 12);

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
        v16 = "nw_connection_group_copy_descriptor";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null group", buf, 0xCu);
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
          v16 = "nw_connection_group_copy_descriptor";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_group_copy_descriptor";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_group_copy_descriptor";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

nw_parameters_t nw_connection_group_copy_parameters(nw_connection_group_t group)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = group;
  v2 = v1;
  if (v1)
  {
    v3 = v1[7].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_group_copy_parameters";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null group", buf, 12);

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
        v16 = "nw_connection_group_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null group", buf, 0xCu);
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
          v16 = "nw_connection_group_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_group_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_group_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_connection_group_get_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[44];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_connection_group_get_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null group", buf, 12);

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
        v15 = "nw_connection_group_get_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null group", buf, 0xCu);
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
          v15 = "nw_connection_group_get_id";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_connection_group_get_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_connection_group_get_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
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

nw_protocol_metadata_t nw_connection_group_copy_protocol_metadata_for_message(nw_connection_group_t group, nw_content_context_t context, nw_protocol_definition_t definition)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = group;
  v6 = context;
  v7 = definition;
  v8 = v7;
  if (!v5)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_connection_group_copy_protocol_metadata_for_message";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null group", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v25, &type, &v61))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v47, "%{public}s called with null group", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v61 != 1)
    {
      v26 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v58, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v52 = type;
    v53 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v53)
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v52, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v53)
    {
      *buf = 136446466;
      v64 = "nw_connection_group_copy_protocol_metadata_for_message";
      v65 = 2082;
      v66 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v52, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_connection_group_copy_protocol_metadata_for_message";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v25, &type, &v61))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v49, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v61 != 1)
    {
      v26 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v59, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v54 = type;
    v55 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v55)
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v54, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v55)
    {
      *buf = 136446466;
      v64 = "nw_connection_group_copy_protocol_metadata_for_message";
      v65 = 2082;
      v66 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v54, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!v7)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_connection_group_copy_protocol_metadata_for_message";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v25, &type, &v61))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v51, "%{public}s called with null definition", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v61 != 1)
    {
      v26 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v60, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v56 = type;
    v57 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v57)
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v56, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v57)
    {
      *buf = 136446466;
      v64 = "nw_connection_group_copy_protocol_metadata_for_message";
      v65 = 2082;
      v66 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v56, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  isa = v5[8].isa;
  if (!isa)
  {
    goto LABEL_16;
  }

  v10 = isa;
  v11 = *(v10 + 2);

  if (v11 == 1)
  {
    goto LABEL_35;
  }

  v12 = v5[8].isa;
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = *(v13 + 2);

  if (v14 == 2)
  {
    goto LABEL_10;
  }

  v15 = v5[8].isa;
  if (!v15)
  {
LABEL_16:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446210;
    v64 = "nw_connection_group_copy_protocol_metadata_for_message";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s Group descriptor is not set", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v25, &type, &v61))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Group descriptor is not set", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v61 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v29 = type;
    v30 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        v64 = "nw_connection_group_copy_protocol_metadata_for_message";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v30)
    {
      *buf = 136446466;
      v64 = "nw_connection_group_copy_protocol_metadata_for_message";
      v65 = 2082;
      v66 = backtrace_string;
      _os_log_impl(&dword_181A37000, v26, v29, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v16 = v15;
  v17 = *(v16 + 2);

  if (v17 != 4)
  {
    if (v5[8].isa)
    {
      v21 = __nwlog_obj();
      v22 = nw_group_descriptor_get_type(v5[8].isa);
      if (v22 > 4)
      {
        v23 = "unknown";
      }

      else
      {
        v23 = off_1E6A2CCD0[v22];
      }

      *buf = 136446466;
      v64 = "nw_connection_group_copy_protocol_metadata_for_message";
      v65 = 2080;
      v66 = v23;
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Unsupported group descriptor type: %s", buf, 22);

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v25, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v26, type))
          {
            v34 = nw_group_descriptor_get_type(v5[8].isa);
            if (v34 > 4)
            {
              v35 = "unknown";
            }

            else
            {
              v35 = off_1E6A2CCD0[v34];
            }

            *buf = 136446466;
            v64 = "nw_connection_group_copy_protocol_metadata_for_message";
            v65 = 2080;
            v66 = v35;
            _os_log_impl(&dword_181A37000, v26, v33, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
          }

LABEL_32:

          goto LABEL_33;
        }

        if (v61 != 1)
        {
          v26 = __nwlog_obj();
          v41 = type;
          if (os_log_type_enabled(v26, type))
          {
            v42 = nw_group_descriptor_get_type(v5[8].isa);
            if (v42 > 4)
            {
              v43 = "unknown";
            }

            else
            {
              v43 = off_1E6A2CCD0[v42];
            }

            *buf = 136446466;
            v64 = "nw_connection_group_copy_protocol_metadata_for_message";
            v65 = 2080;
            v66 = v43;
            _os_log_impl(&dword_181A37000, v26, v41, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_32;
        }

        v36 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v26, type);
        if (!v36)
        {
          if (v38)
          {
            v44 = nw_group_descriptor_get_type(v5[8].isa);
            if (v44 > 4)
            {
              v45 = "unknown";
            }

            else
            {
              v45 = off_1E6A2CCD0[v44];
            }

            *buf = 136446466;
            v64 = "nw_connection_group_copy_protocol_metadata_for_message";
            v65 = 2080;
            v66 = v45;
            _os_log_impl(&dword_181A37000, v26, v37, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
          }

          goto LABEL_32;
        }

        if (v38)
        {
          v39 = nw_group_descriptor_get_type(v5[8].isa);
          if (v39 > 4)
          {
            v40 = "unknown";
          }

          else
          {
            v40 = off_1E6A2CCD0[v39];
          }

          *buf = 136446722;
          v64 = "nw_connection_group_copy_protocol_metadata_for_message";
          v65 = 2080;
          v66 = v40;
          v67 = 2082;
          v68 = v36;
          _os_log_impl(&dword_181A37000, v26, v37, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v36);
      }

LABEL_33:
      if (v25)
      {
LABEL_34:
        free(v25);
      }

LABEL_35:
      v20 = 0;
      goto LABEL_36;
    }

    goto LABEL_16;
  }

LABEL_10:
  v18 = nw_connection_group_copy_connection_for_message(v5, v6);
  v19 = v18;
  if (v18)
  {
    v20 = nw_connection_copy_protocol_metadata(v18, v8);
  }

  else
  {
    v20 = 0;
  }

LABEL_36:

  return v20;
}

nw_endpoint_t nw_connection_group_copy_local_endpoint_for_message(nw_connection_group_t group, nw_content_context_t context)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = context;
  v5 = v4;
  if (!v3)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_connection_group_copy_local_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null group", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v44, "%{public}s called with null group", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v53 != 1)
    {
      v23 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v51, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v47 = type;
    v48 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v48)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v48)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_local_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_connection_group_copy_local_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v46, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v53 != 1)
    {
      v23 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v52, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v49 = type;
    v50 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v50)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v49, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v50)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_local_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v49, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_27:

    free(backtrace_string);
    if (!v22)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  isa = v3[8].isa;
  if (!isa)
  {
LABEL_18:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v56 = "nw_connection_group_copy_local_endpoint_for_message";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Group descriptor is not set", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v22, &type, &v53))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Group descriptor is not set", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v53 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v26 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v56 = "nw_connection_group_copy_local_endpoint_for_message";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
      }

      goto LABEL_34;
    }

    if (v27)
    {
      *buf = 136446466;
      v56 = "nw_connection_group_copy_local_endpoint_for_message";
      v57 = 2082;
      v58 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v7 = isa;
  v8 = *(v7 + 2);

  if (v8 != 1)
  {
    v12 = v3[8].isa;
    if (v12)
    {
      v13 = v12;
      v14 = *(v13 + 2);

      if (v14 == 2)
      {
        goto LABEL_12;
      }

      v15 = v3[8].isa;
      if (v15)
      {
        v16 = v15;
        v17 = *(v16 + 2);

        if (v17 == 4)
        {
LABEL_12:
          v10 = nw_connection_group_copy_connection_for_message(v3, v5);
          v11 = v10;
          if (v10)
          {
LABEL_13:
            v9 = nw_connection_copy_connected_local_endpoint(v10);

            goto LABEL_38;
          }

LABEL_14:
          v9 = 0;

          goto LABEL_38;
        }

        if (v3[8].isa)
        {
          v18 = __nwlog_obj();
          v19 = nw_group_descriptor_get_type(v3[8].isa);
          if (v19 > 4)
          {
            v20 = "unknown";
          }

          else
          {
            v20 = off_1E6A2CCD0[v19];
          }

          *buf = 136446466;
          v56 = "nw_connection_group_copy_local_endpoint_for_message";
          v57 = 2080;
          v58 = v20;
          v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Unsupported group descriptor type: %s", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v53 = 0;
          if (__nwlog_fault(v22, &type, &v53))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v23 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v23, type))
              {
                v31 = nw_group_descriptor_get_type(v3[8].isa);
                if (v31 > 4)
                {
                  v32 = "unknown";
                }

                else
                {
                  v32 = off_1E6A2CCD0[v31];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_local_endpoint_for_message";
                v57 = 2080;
                v58 = v32;
                _os_log_impl(&dword_181A37000, v23, v30, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
              }

LABEL_34:

              goto LABEL_35;
            }

            if (v53 != 1)
            {
              v23 = __nwlog_obj();
              v38 = type;
              if (os_log_type_enabled(v23, type))
              {
                v39 = nw_group_descriptor_get_type(v3[8].isa);
                if (v39 > 4)
                {
                  v40 = "unknown";
                }

                else
                {
                  v40 = off_1E6A2CCD0[v39];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_local_endpoint_for_message";
                v57 = 2080;
                v58 = v40;
                _os_log_impl(&dword_181A37000, v23, v38, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
              }

              goto LABEL_34;
            }

            v33 = __nw_create_backtrace_string();
            v23 = __nwlog_obj();
            v34 = type;
            v35 = os_log_type_enabled(v23, type);
            if (!v33)
            {
              if (v35)
              {
                v41 = nw_group_descriptor_get_type(v3[8].isa);
                if (v41 > 4)
                {
                  v42 = "unknown";
                }

                else
                {
                  v42 = off_1E6A2CCD0[v41];
                }

                *buf = 136446466;
                v56 = "nw_connection_group_copy_local_endpoint_for_message";
                v57 = 2080;
                v58 = v42;
                _os_log_impl(&dword_181A37000, v23, v34, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
              }

              goto LABEL_34;
            }

            if (v35)
            {
              v36 = nw_group_descriptor_get_type(v3[8].isa);
              if (v36 > 4)
              {
                v37 = "unknown";
              }

              else
              {
                v37 = off_1E6A2CCD0[v36];
              }

              *buf = 136446722;
              v56 = "nw_connection_group_copy_local_endpoint_for_message";
              v57 = 2080;
              v58 = v37;
              v59 = 2082;
              v60 = v33;
              _os_log_impl(&dword_181A37000, v23, v34, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v33);
          }

LABEL_35:
          if (!v22)
          {
LABEL_37:
            v9 = 0;
            goto LABEL_38;
          }

LABEL_36:
          free(v22);
          goto LABEL_37;
        }
      }
    }

    goto LABEL_18;
  }

  v9 = nw_content_context_copy_local_endpoint(v5);
  if (!v9)
  {
    v10 = nw_connection_group_copy_connection_for_message(v3, v5);
    v11 = v10;
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_38:

  return v9;
}

nw_path_t nw_connection_group_copy_path_for_message(nw_connection_group_t group, nw_content_context_t context)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = group;
  v4 = context;
  v5 = v4;
  if (!v3)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v77 = "nw_connection_group_copy_path_for_message";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null group", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v35, type, &v75))
    {
      goto LABEL_42;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v57, "%{public}s called with null group", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v75 != 1)
    {
      v36 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v64, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v60 = type[0];
    v61 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v61)
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v60, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v61)
    {
      *buf = 136446466;
      v77 = "nw_connection_group_copy_path_for_message";
      v78 = 2082;
      v79 = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v60, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (!v4)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v77 = "nw_connection_group_copy_path_for_message";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null context", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v35, type, &v75))
    {
      goto LABEL_42;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v59 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v59, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v75 != 1)
    {
      v36 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v65, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v62 = type[0];
    v63 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v63)
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v62, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v63)
    {
      *buf = 136446466;
      v77 = "nw_connection_group_copy_path_for_message";
      v78 = 2082;
      v79 = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v62, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_34:

    free(backtrace_string);
    if (!v35)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  isa = v3[8].isa;
  if (!isa)
  {
    goto LABEL_25;
  }

  v7 = isa;
  v8 = *(v7 + 2);

  if (v8 == 1)
  {
    v9 = nw_connection_group_copy_connection_for_message(v3, v5);
    v10 = v9;
    if (v9)
    {
      v11 = nw_connection_copy_current_path(v9);
LABEL_48:

      goto LABEL_49;
    }

    *type = 0;
    v70 = type;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__9201;
    v73 = __Block_byref_object_dispose__9202;
    v74 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_group_copy_path_for_message_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v68 = type;
    v67 = v3;
    v20 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[22].isa + 1);
    v20[2](v20);
    os_unfair_lock_unlock(&v3[22].isa + 1);

    v21 = nw_content_context_copy_local_endpoint(v5);
    v22 = nw_content_context_copy_remote_endpoint(v5);
    v23 = nw_content_context_copy_interface(v5);
    v24 = v23;
    v25 = *(v70 + 5);
    if (v25 && v21 && v22 && v23)
    {
      v26 = nw_content_context_copy_interface(v5);
      nw_parameters_require_interface(v25, v26);

      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v22, *(v70 + 5));
      if (evaluator_for_endpoint)
      {
        v28 = evaluator_for_endpoint;
        v29 = evaluator_for_endpoint;
        os_unfair_lock_lock(v28 + 24);
        v11 = v29[6].isa;
        os_unfair_lock_unlock(v28 + 24);

LABEL_47:
        _Block_object_dispose(type, 8);

        goto LABEL_48;
      }

      v29 = 0;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(v70 + 5);
        *buf = 136447234;
        v77 = "nw_connection_group_copy_path_for_message";
        v78 = 2112;
        v79 = v30;
        v80 = 2112;
        v81 = v21;
        v82 = 2112;
        v83 = v22;
        v84 = 2112;
        v85 = v24;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s Failed to set up parameters %@ for local %@, remote %@, interface %@", buf, 0x34u);
      }
    }

    v11 = 0;
    goto LABEL_47;
  }

  v12 = v3[8].isa;
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v12;
  v14 = *(v13 + 2);

  if (v14 == 2)
  {
    goto LABEL_11;
  }

  v15 = v3[8].isa;
  if (!v15)
  {
LABEL_25:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    *buf = 136446210;
    v77 = "nw_connection_group_copy_path_for_message";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s Group descriptor is not set", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v35, type, &v75))
    {
      goto LABEL_42;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Group descriptor is not set", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v75 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v41 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v41, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    v39 = type[0];
    v40 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v77 = "nw_connection_group_copy_path_for_message";
        _os_log_impl(&dword_181A37000, v36, v39, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v40)
    {
      *buf = 136446466;
      v77 = "nw_connection_group_copy_path_for_message";
      v78 = 2082;
      v79 = backtrace_string;
      _os_log_impl(&dword_181A37000, v36, v39, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v16 = v15;
  v17 = *(v16 + 2);

  if (v17 != 4)
  {
    if (v3[8].isa)
    {
      v31 = __nwlog_obj();
      v32 = nw_group_descriptor_get_type(v3[8].isa);
      if (v32 > 4)
      {
        v33 = "unknown";
      }

      else
      {
        v33 = off_1E6A2CCD0[v32];
      }

      *buf = 136446466;
      v77 = "nw_connection_group_copy_path_for_message";
      v78 = 2080;
      v79 = v33;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s Unsupported group descriptor type: %s", buf, 22);

      type[0] = OS_LOG_TYPE_ERROR;
      v75 = 0;
      if (__nwlog_fault(v35, type, &v75))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v43 = type[0];
          if (os_log_type_enabled(v36, type[0]))
          {
            v44 = nw_group_descriptor_get_type(v3[8].isa);
            if (v44 > 4)
            {
              v45 = "unknown";
            }

            else
            {
              v45 = off_1E6A2CCD0[v44];
            }

            *buf = 136446466;
            v77 = "nw_connection_group_copy_path_for_message";
            v78 = 2080;
            v79 = v45;
            _os_log_impl(&dword_181A37000, v36, v43, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
          }

LABEL_41:

          goto LABEL_42;
        }

        if (v75 != 1)
        {
          v36 = __nwlog_obj();
          v51 = type[0];
          if (os_log_type_enabled(v36, type[0]))
          {
            v52 = nw_group_descriptor_get_type(v3[8].isa);
            if (v52 > 4)
            {
              v53 = "unknown";
            }

            else
            {
              v53 = off_1E6A2CCD0[v52];
            }

            *buf = 136446466;
            v77 = "nw_connection_group_copy_path_for_message";
            v78 = 2080;
            v79 = v53;
            _os_log_impl(&dword_181A37000, v36, v51, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_41;
        }

        v46 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v47 = type[0];
        v48 = os_log_type_enabled(v36, type[0]);
        if (!v46)
        {
          if (v48)
          {
            v54 = nw_group_descriptor_get_type(v3[8].isa);
            if (v54 > 4)
            {
              v55 = "unknown";
            }

            else
            {
              v55 = off_1E6A2CCD0[v54];
            }

            *buf = 136446466;
            v77 = "nw_connection_group_copy_path_for_message";
            v78 = 2080;
            v79 = v55;
            _os_log_impl(&dword_181A37000, v36, v47, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
          }

          goto LABEL_41;
        }

        if (v48)
        {
          v49 = nw_group_descriptor_get_type(v3[8].isa);
          if (v49 > 4)
          {
            v50 = "unknown";
          }

          else
          {
            v50 = off_1E6A2CCD0[v49];
          }

          *buf = 136446722;
          v77 = "nw_connection_group_copy_path_for_message";
          v78 = 2080;
          v79 = v50;
          v80 = 2082;
          v81 = v46;
          _os_log_impl(&dword_181A37000, v36, v47, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v46);
      }

LABEL_42:
      if (!v35)
      {
LABEL_44:
        v11 = 0;
        goto LABEL_49;
      }

LABEL_43:
      free(v35);
      goto LABEL_44;
    }

    goto LABEL_25;
  }

LABEL_11:
  v18 = nw_connection_group_copy_connection_for_message(v3, v5);
  v19 = v18;
  if (v18)
  {
    v11 = nw_connection_copy_current_path(v18);
  }

  else
  {
    v11 = 0;
  }

LABEL_49:

  return v11;
}

void sub_1823DFA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

void __nw_connection_group_copy_path_for_message_block_invoke(uint64_t a1)
{
  v2 = _nw_parameters_copy();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t nw::share(uint64_t this, nw_protocol **a2)
{
  if (a2 && ((v2 = a2[5], v3 = a2, v2 == &nw_protocol_ref_counted_handle) || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a2[8]) != 0))
  {
    callbacks = v3[1].callbacks;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }

    *this = a2;
    *(this + 8) |= 1u;
  }

  else
  {
    *this = a2;
    *(this + 8) &= ~1u;
  }

  return this;
}

uint64_t nw::share(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 && ((v3 = *(v2 + 40), v4 = *a2, v3 == &nw_protocol_ref_counted_handle) || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v2 + 64)) != 0))
  {
    v5 = *(v4 + 88);
    if (v5)
    {
      *(v4 + 88) = v5 + 1;
    }

    *result = v2;
    *(result + 8) |= 1u;
  }

  else
  {
    *result = v2;
    *(result + 8) &= ~1u;
    *a2 = 0;
  }

  return result;
}

uint64_t nw_protocol_add_input_handler_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = a2;
      result = 0;
      if (a2)
      {
        v5 = *v3;
        if (v5)
        {
          v6 = *(v2 + 40);
          v7 = v2;
          if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v2 + 64)) != 0)
          {
            v9 = *(v7 + 88);
            v8 = 0;
            if (v9)
            {
              *(v7 + 88) = v9 + 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v10 = *(a2 + 40);
          v11 = a2;
          if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a2 + 64)) != 0)
          {
            v12 = *(v11 + 88);
            if (v12)
            {
              *(v11 + 88) = v12 + 1;
            }

            result = v5(v2, a2);
            v13 = *(v4 + 40);
            if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
            {
              v14 = *(v4 + 88);
              if (v14)
              {
                v15 = v14 - 1;
                *(v4 + 88) = v15;
                if (!v15)
                {
                  v16 = result;
                  v17 = *(v4 + 64);
                  if (v17)
                  {
                    *(v4 + 64) = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (*(v4 + 72))
                  {
                    v18 = *(v4 + 64);
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v4);
                  result = v16;
                }
              }
            }
          }

          else
          {
            result = v5(v2, a2);
          }

          if ((v8 & 1) == 0)
          {
            v19 = *(v2 + 40);
            if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v20 = *(v2 + 88);
              if (v20)
              {
                v21 = v20 - 1;
                *(v2 + 88) = v21;
                if (!v21)
                {
                  v22 = result;
                  v23 = *(v2 + 64);
                  if (v23)
                  {
                    *(v2 + 64) = 0;
                    v23[2](v23);
                    _Block_release(v23);
                  }

                  if (*(v2 + 72))
                  {
                    v24 = *(v2 + 64);
                    if (v24)
                    {
                      _Block_release(v24);
                    }
                  }

                  free(v2);
                  return v22;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_add_input_handler_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *v2 != 0;
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

uint64_t nw_protocol_replace_input_handler_quiet(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v5 = a3;
      result = 0;
      if (a3)
      {
        v6 = a2;
        if (a2)
        {
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = *(v3 + 40);
            v9 = v3;
            if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v3 + 64)) != 0)
            {
              v11 = *(v9 + 88);
              v10 = 0;
              if (v11)
              {
                *(v9 + 88) = v11 + 1;
              }
            }

            else
            {
              v10 = 1;
            }

            v12 = *(a2 + 40);
            v13 = a2;
            if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(a2 + 64)) != 0)
            {
              v15 = *(v13 + 88);
              v14 = 0;
              if (v15)
              {
                *(v13 + 88) = v15 + 1;
              }
            }

            else
            {
              v14 = 1;
            }

            v16 = *(a3 + 40);
            v17 = a3;
            if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *(a3 + 64)) != 0)
            {
              v18 = *(v17 + 88);
              if (v18)
              {
                *(v17 + 88) = v18 + 1;
              }

              result = v7(v3, a2, a3);
              v19 = *(v5 + 40);
              if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
              {
                v20 = *(v5 + 88);
                if (v20)
                {
                  v21 = v20 - 1;
                  *(v5 + 88) = v21;
                  if (!v21)
                  {
                    v22 = result;
                    v23 = *(v5 + 64);
                    if (v23)
                    {
                      *(v5 + 64) = 0;
                      v23[2](v23);
                      _Block_release(v23);
                    }

                    if (*(v5 + 72))
                    {
                      v24 = *(v5 + 64);
                      if (v24)
                      {
                        _Block_release(v24);
                      }
                    }

                    free(v5);
                    result = v22;
                  }
                }
              }
            }

            else
            {
              result = v7(v3, a2, a3);
            }

            if ((v14 & 1) == 0)
            {
              v25 = *(v6 + 40);
              if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
              {
                v26 = *(v6 + 88);
                if (v26)
                {
                  v27 = v26 - 1;
                  *(v6 + 88) = v27;
                  if (!v27)
                  {
                    v28 = result;
                    v29 = *(v6 + 64);
                    if (v29)
                    {
                      *(v6 + 64) = 0;
                      v29[2](v29);
                      _Block_release(v29);
                    }

                    if (*(v6 + 72))
                    {
                      v30 = *(v6 + 64);
                      if (v30)
                      {
                        _Block_release(v30);
                      }
                    }

                    free(v6);
                    result = v28;
                  }
                }
              }
            }

            if ((v10 & 1) == 0)
            {
              v31 = *(v3 + 40);
              if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
              {
                v32 = *(v3 + 88);
                if (v32)
                {
                  v33 = v32 - 1;
                  *(v3 + 88) = v33;
                  if (!v33)
                  {
                    v34 = result;
                    v35 = *(v3 + 64);
                    if (v35)
                    {
                      *(v3 + 64) = 0;
                      v35[2](v35);
                      _Block_release(v35);
                    }

                    if (*(v3 + 72))
                    {
                      v36 = *(v3 + 64);
                      if (v36)
                      {
                        _Block_release(v36);
                      }
                    }

                    free(v3);
                    return v34;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_replace_input_handler_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 16) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_remove_input_handler_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = a2;
      result = 0;
      if (a2)
      {
        v5 = *(v3 + 8);
        if (v5)
        {
          v6 = *(v2 + 40);
          v7 = v2;
          if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v2 + 64)) != 0)
          {
            v9 = *(v7 + 88);
            v8 = 0;
            if (v9)
            {
              *(v7 + 88) = v9 + 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v10 = *(a2 + 40);
          v11 = a2;
          if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a2 + 64)) != 0)
          {
            v12 = *(v11 + 88);
            if (v12)
            {
              *(v11 + 88) = v12 + 1;
            }

            result = v5(v2, a2);
            v13 = *(v4 + 40);
            if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
            {
              v14 = *(v4 + 88);
              if (v14)
              {
                v15 = v14 - 1;
                *(v4 + 88) = v15;
                if (!v15)
                {
                  v16 = result;
                  v17 = *(v4 + 64);
                  if (v17)
                  {
                    *(v4 + 64) = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (*(v4 + 72))
                  {
                    v18 = *(v4 + 64);
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v4);
                  result = v16;
                }
              }
            }
          }

          else
          {
            result = v5(v2, a2);
          }

          if ((v8 & 1) == 0)
          {
            v19 = *(v2 + 40);
            if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v20 = *(v2 + 88);
              if (v20)
              {
                v21 = v20 - 1;
                *(v2 + 88) = v21;
                if (!v21)
                {
                  v22 = result;
                  v23 = *(v2 + 64);
                  if (v23)
                  {
                    *(v2 + 64) = 0;
                    v23[2](v23);
                    _Block_release(v23);
                  }

                  if (*(v2 + 72))
                  {
                    v24 = *(v2 + 64);
                    if (v24)
                    {
                      _Block_release(v24);
                    }
                  }

                  free(v2);
                  return v22;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_remove_input_handler_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 8) != 0;
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

uint64_t nw_protocol_add_listen_handler_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v3 + 232);
        if (v4)
        {
          v5 = *(v2 + 40);
          v6 = v2;
          if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v2 + 64)) != 0)
          {
            v7 = *(v6 + 88);
            if (v7)
            {
              *(v6 + 88) = v7 + 1;
            }

            result = v4(v2);
            v8 = *(v2 + 40);
            if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v9 = *(v2 + 88);
              if (v9)
              {
                v10 = v9 - 1;
                *(v2 + 88) = v10;
                if (!v10)
                {
                  v11 = result;
                  v12 = *(v2 + 64);
                  if (v12)
                  {
                    *(v2 + 64) = 0;
                    v12[2](v12);
                    _Block_release(v12);
                  }

                  if (*(v2 + 72))
                  {
                    v13 = *(v2 + 64);
                    if (v13)
                    {
                      _Block_release(v13);
                    }
                  }

                  free(v2);
                  return v11;
                }
              }
            }
          }

          else
          {

            return v4(v2);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_add_listen_handler_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 232) != 0;
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

uint64_t nw_protocol_remove_listen_handler(void *a1, uint64_t a2)
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
        v46 = "__nw_protocol_remove_listen_handler";
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null listen_protocol", buf, 12);
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
          v46 = "__nw_protocol_remove_listen_handler";
          v20 = "%{public}s called with null listen_protocol";
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
          v46 = "__nw_protocol_remove_listen_handler";
          v20 = "%{public}s called with null listen_protocol, backtrace limit exceeded";
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
            v46 = "__nw_protocol_remove_listen_handler";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null listen_protocol, dumping backtrace:%{public}s", buf, 0x16u);
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
          v46 = "__nw_protocol_remove_listen_handler";
          v20 = "%{public}s called with null listen_protocol, no backtrace";
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
      v7 = *(v6 + 240);
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
    v46 = "__nw_protocol_remove_listen_handler";
    if (!v22)
    {
      v22 = "invalid";
    }

    v47 = 2082;
    v48 = v22;
    v49 = 2048;
    v50 = v2;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s protocol %{public}s (%p) has invalid remove_listen_handler callback", buf, 32);
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
        v46 = "__nw_protocol_remove_listen_handler";
        v47 = 2082;
        v48 = v25;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid remove_listen_handler callback";
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
            v46 = "__nw_protocol_remove_listen_handler";
            v47 = 2082;
            v48 = v33;
            v49 = 2048;
            v50 = v2;
            v51 = 2082;
            v52 = v31;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s protocol %{public}s (%p) has invalid remove_listen_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
        v46 = "__nw_protocol_remove_listen_handler";
        v47 = 2082;
        v48 = v39;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid remove_listen_handler callback, no backtrace";
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
        v46 = "__nw_protocol_remove_listen_handler";
        v47 = 2082;
        v48 = v38;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid remove_listen_handler callback, backtrace limit exceeded";
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
  v46 = "__nw_protocol_remove_listen_handler";
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
        v46 = "__nw_protocol_remove_listen_handler";
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
          v46 = "__nw_protocol_remove_listen_handler";
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
        v46 = "__nw_protocol_remove_listen_handler";
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
        v46 = "__nw_protocol_remove_listen_handler";
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

uint64_t nw_protocol_remove_listen_handler_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v3 + 240);
        if (v4)
        {
          v5 = *(v2 + 40);
          v6 = v2;
          if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v2 + 64)) != 0)
          {
            v7 = *(v6 + 88);
            if (v7)
            {
              *(v6 + 88) = v7 + 1;
            }

            result = v4(v2);
            v8 = *(v2 + 40);
            if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v9 = *(v2 + 88);
              if (v9)
              {
                v10 = v9 - 1;
                *(v2 + 88) = v10;
                if (!v10)
                {
                  v11 = result;
                  v12 = *(v2 + 64);
                  if (v12)
                  {
                    *(v2 + 64) = 0;
                    v12[2](v12);
                    _Block_release(v12);
                  }

                  if (*(v2 + 72))
                  {
                    v13 = *(v2 + 64);
                    if (v13)
                    {
                      _Block_release(v13);
                    }
                  }

                  free(v2);
                  return v11;
                }
              }
            }
          }

          else
          {

            return v4(v2);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_remove_listen_handler_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 240) != 0;
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

uint64_t nw_protocol_get_output_frames_quiet(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    if (v7)
    {
      result = 0;
      if (a6)
      {
        v8 = a2;
        if (a2)
        {
          v9 = *(v7 + 88);
          if (v9)
          {
            v10 = *(v6 + 40);
            v11 = v6;
            if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(v6 + 64)) != 0)
            {
              v13 = *(v11 + 88);
              v12 = 0;
              if (v13)
              {
                *(v11 + 88) = v13 + 1;
              }
            }

            else
            {
              v12 = 1;
            }

            v14 = *(a2 + 40);
            v15 = a2;
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(a2 + 64)) != 0)
            {
              v16 = *(v15 + 88);
              if (v16)
              {
                *(v15 + 88) = v16 + 1;
              }

              result = v9(v6, a2, a3, a4, a5);
              v17 = *(v8 + 40);
              if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v8 + 64)) != 0)
              {
                v18 = *(v8 + 88);
                if (v18)
                {
                  v19 = v18 - 1;
                  *(v8 + 88) = v19;
                  if (!v19)
                  {
                    v20 = result;
                    v21 = *(v8 + 64);
                    if (v21)
                    {
                      *(v8 + 64) = 0;
                      v21[2](v21);
                      _Block_release(v21);
                    }

                    if (*(v8 + 72))
                    {
                      v22 = *(v8 + 64);
                      if (v22)
                      {
                        _Block_release(v22);
                      }
                    }

                    free(v8);
                    result = v20;
                  }
                }
              }
            }

            else
            {
              result = (v9)(v6, a2);
            }

            if ((v12 & 1) == 0)
            {
              v23 = *(v6 + 40);
              if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
              {
                v24 = *(v6 + 88);
                if (v24)
                {
                  v25 = v24 - 1;
                  *(v6 + 88) = v25;
                  if (!v25)
                  {
                    v26 = result;
                    v27 = *(v6 + 64);
                    if (v27)
                    {
                      *(v6 + 64) = 0;
                      v27[2](v27);
                      _Block_release(v27);
                    }

                    if (*(v6 + 72))
                    {
                      v28 = *(v6 + 64);
                      if (v28)
                      {
                        _Block_release(v28);
                      }
                    }

                    free(v6);
                    return v26;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_finalize_output_frames_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v3 + 96);
        if (v4)
        {
          v5 = *(v2 + 40);
          v6 = v2;
          if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v2 + 64)) != 0)
          {
            v7 = *(v6 + 88);
            if (v7)
            {
              *(v6 + 88) = v7 + 1;
            }

            result = v4(v2);
            v8 = *(v2 + 40);
            if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v9 = *(v2 + 88);
              if (v9)
              {
                v10 = v9 - 1;
                *(v2 + 88) = v10;
                if (!v10)
                {
                  v11 = result;
                  v12 = *(v2 + 64);
                  if (v12)
                  {
                    *(v2 + 64) = 0;
                    v12[2](v12);
                    _Block_release(v12);
                  }

                  if (*(v2 + 72))
                  {
                    v13 = *(v2 + 64);
                    if (v13)
                    {
                      _Block_release(v13);
                    }
                  }

                  free(v2);
                  return v11;
                }
              }
            }
          }

          else
          {

            return v4(v2);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_finalize_output_frames_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 96) != 0;
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

void *nw_protocol_get_parameters_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 112)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *nw_protocol_get_path_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 120)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_get_path_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 120) != 0;
  }

  return result;
}

void *nw_protocol_get_remote_endpoint_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 136)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_get_remote_endpoint_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 136) != 0;
  }

  return result;
}

void *nw_protocol_get_local_endpoint_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 128)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_get_local_endpoint_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 128) != 0;
  }

  return result;
}

uint64_t nw_protocol_get_output_local_endpoint(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 200);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    v15 = __nwlog_obj();
    v16 = v1[2];
    *buf = 136446722;
    v37 = "__nw_protocol_get_output_local_endpoint";
    if (!v16)
    {
      v16 = "invalid";
    }

    v38 = 2082;
    v39 = v16;
    v40 = 2048;
    v41 = v1;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v17, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_60;
        }

        v20 = v1[2];
        if (!v20)
        {
          v20 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v38 = 2082;
        v39 = v20;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x20u);
        goto LABEL_60;
      }

      if (v34 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_60;
        }

        v32 = v1[2];
        if (!v32)
        {
          v32 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v38 = 2082;
        v39 = v32;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v28 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_60;
        }

        v33 = v1[2];
        if (!v33)
        {
          v33 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v38 = 2082;
        v39 = v33;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
        goto LABEL_59;
      }

      if (v28)
      {
        v29 = v1[2];
        if (!v29)
        {
          v29 = "invalid";
        }

        *buf = 136446978;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v38 = 2082;
        v39 = v29;
        v40 = 2048;
        v41 = v1;
        v42 = 2082;
        v43 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v17)
    {
      free(v17);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v37 = "__nw_protocol_get_output_local_endpoint";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v23, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v26 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v31 = os_log_type_enabled(v24, type);
      if (v30)
      {
        if (v31)
        {
          *buf = 136446466;
          v37 = "__nw_protocol_get_output_local_endpoint";
          v38 = 2082;
          v39 = v30;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_67;
      }

      if (v31)
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v26 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_local_endpoint";
        v26 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

void *nw_protocol_get_output_local_endpoint_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 200)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_get_output_local_endpoint_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 200) != 0;
  }

  return result;
}

uint64_t nw_protocol_get_output_interface(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 208);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    v15 = __nwlog_obj();
    v16 = v1[2];
    *buf = 136446722;
    v37 = "__nw_protocol_get_output_interface";
    if (!v16)
    {
      v16 = "invalid";
    }

    v38 = 2082;
    v39 = v16;
    v40 = 2048;
    v41 = v1;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_interface callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v17, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_60;
        }

        v20 = v1[2];
        if (!v20)
        {
          v20 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_interface";
        v38 = 2082;
        v39 = v20;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_interface callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x20u);
        goto LABEL_60;
      }

      if (v34 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_60;
        }

        v32 = v1[2];
        if (!v32)
        {
          v32 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_interface";
        v38 = 2082;
        v39 = v32;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_interface callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v28 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
          goto LABEL_60;
        }

        v33 = v1[2];
        if (!v33)
        {
          v33 = "invalid";
        }

        *buf = 136446722;
        v37 = "__nw_protocol_get_output_interface";
        v38 = 2082;
        v39 = v33;
        v40 = 2048;
        v41 = v1;
        v21 = "%{public}s protocol %{public}s (%p) has invalid get_output_interface callback, no backtrace";
        goto LABEL_59;
      }

      if (v28)
      {
        v29 = v1[2];
        if (!v29)
        {
          v29 = "invalid";
        }

        *buf = 136446978;
        v37 = "__nw_protocol_get_output_interface";
        v38 = 2082;
        v39 = v29;
        v40 = 2048;
        v41 = v1;
        v42 = 2082;
        v43 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s (%p) has invalid get_output_interface callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v17)
    {
      free(v17);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v37 = "__nw_protocol_get_output_interface";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v23, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_interface";
        v26 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v31 = os_log_type_enabled(v24, type);
      if (v30)
      {
        if (v31)
        {
          *buf = 136446466;
          v37 = "__nw_protocol_get_output_interface";
          v38 = 2082;
          v39 = v30;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_67;
      }

      if (v31)
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_interface";
        v26 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v37 = "__nw_protocol_get_output_interface";
        v26 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

void *nw_protocol_get_output_interface_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 208)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_get_output_interface_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 208) != 0;
  }

  return result;
}

uint64_t nw_protocol_connect_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 24) != 0;
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

uint64_t nw_protocol_disconnect_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 32) != 0;
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

void nw_protocol_disconnected_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 48);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

void nw_protocol_input_available_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 64);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t nw_protocol_output_available_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 72) != 0;
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

uint64_t nw_protocol_input_finished_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 184) != 0;
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

void nw_protocol_output_finished(char *a1, uint64_t a2)
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
        v51 = "__nw_protocol_output_finished";
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
          v51 = "__nw_protocol_output_finished";
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
          v51 = "__nw_protocol_output_finished";
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
          v51 = "__nw_protocol_output_finished";
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
          v51 = "__nw_protocol_output_finished";
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

    v17 = *(v10 + 192);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_output_finished";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid output_finished callback", buf, 32);
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
      v51 = "__nw_protocol_output_finished";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid output_finished callback";
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
          v51 = "__nw_protocol_output_finished";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid output_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v51 = "__nw_protocol_output_finished";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid output_finished callback, no backtrace";
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
      v51 = "__nw_protocol_output_finished";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid output_finished callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_output_finished";
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
      v51 = "__nw_protocol_output_finished";
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
          v51 = "__nw_protocol_output_finished";
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
      v51 = "__nw_protocol_output_finished";
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
      v51 = "__nw_protocol_output_finished";
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

void nw_protocol_output_finished_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 192);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t nw_protocol_output_finished_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 192) != 0;
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

void nw_protocol_input_flush(char *a1, uint64_t a2)
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
        v51 = "__nw_protocol_input_flush";
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
          v51 = "__nw_protocol_input_flush";
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
          v51 = "__nw_protocol_input_flush";
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
          v51 = "__nw_protocol_input_flush";
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
          v51 = "__nw_protocol_input_flush";
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

    v17 = *(v10 + 264);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_input_flush";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid input_flush callback", buf, 32);
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
      v51 = "__nw_protocol_input_flush";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_flush callback";
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
          v51 = "__nw_protocol_input_flush";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid input_flush callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v51 = "__nw_protocol_input_flush";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_flush callback, no backtrace";
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
      v51 = "__nw_protocol_input_flush";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_flush callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_input_flush";
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
      v51 = "__nw_protocol_input_flush";
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
          v51 = "__nw_protocol_input_flush";
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
      v51 = "__nw_protocol_input_flush";
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
      v51 = "__nw_protocol_input_flush";
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

void nw_protocol_input_flush_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 264);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t nw_protocol_input_flush_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 264) != 0;
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

void nw_protocol_error_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 56);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

uint64_t nw_protocol_error_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 56) != 0;
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

uint64_t nw_protocol_reset(void *a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
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
LABEL_12:
          v12 = __nwlog_obj();
          *buf = 136446210;
          v56 = "__nw_protocol_reset";
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null other_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v53 = 0;
          if (__nwlog_fault(v13, &type, &v53))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446210;
                v56 = "__nw_protocol_reset";
                v16 = "%{public}s called with null other_protocol";
LABEL_103:
                _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
              }
            }

            else if (v53 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v50 = os_log_type_enabled(v14, type);
              if (backtrace_string)
              {
                if (v50)
                {
                  *buf = 136446466;
                  v56 = "__nw_protocol_reset";
                  v57 = 2082;
                  v58 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_104;
              }

              if (v50)
              {
                *buf = 136446210;
                v56 = "__nw_protocol_reset";
                v16 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_103;
              }
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446210;
                v56 = "__nw_protocol_reset";
                v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_103;
              }
            }
          }

LABEL_104:
          if (v13)
          {
            free(v13);
          }

          result = 0;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v17 = *(v8 + 88);
      if (v17)
      {
        v9 = 0;
        *(v8 + 88) = v17 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    v18 = *(v10 + 256);
    if (v18)
    {
      result = v18(a1, a2);
      if (v9)
      {
LABEL_36:
        if ((v6 & 1) == 0)
        {
          v26 = v3[5];
          if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v27 = v3[11];
            if (v27)
            {
              v28 = v27 - 1;
              v3[11] = v28;
              if (!v28)
              {
                v29 = result;
                v30 = v3[8];
                if (v30)
                {
                  v3[8] = 0;
                  v30[2](v30);
                  _Block_release(v30);
                }

                if (v3[9])
                {
                  v31 = v3[8];
                  if (v31)
                  {
                    _Block_release(v31);
                  }
                }

                free(v3);
                return v29;
              }
            }
          }
        }

        return result;
      }

LABEL_25:
      v20 = *(v2 + 40);
      if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
      {
        v21 = *(v2 + 88);
        if (v21)
        {
          v22 = v21 - 1;
          *(v2 + 88) = v22;
          if (!v22)
          {
            v23 = result;
            v24 = *(v2 + 64);
            if (v24)
            {
              *(v2 + 64) = 0;
              v24[2](v24);
              _Block_release(v24);
            }

            if (*(v2 + 72))
            {
              v25 = *(v2 + 64);
              if (v25)
              {
                _Block_release(v25);
              }
            }

            free(v2);
            result = v23;
          }
        }
      }

      goto LABEL_36;
    }

LABEL_49:
    v32 = __nwlog_obj();
    v33 = v3[2];
    *buf = 136446722;
    v56 = "__nw_protocol_reset";
    if (!v33)
    {
      v33 = "invalid";
    }

    v57 = 2082;
    v58 = v33;
    v59 = 2048;
    v60 = v3;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s protocol %{public}s (%p) has invalid reset callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v34, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_91;
        }

        v37 = v3[2];
        if (!v37)
        {
          v37 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_reset";
        v57 = 2082;
        v58 = v37;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid reset callback";
LABEL_90:
        _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x20u);
        goto LABEL_91;
      }

      if (v53 != 1)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_91;
        }

        v51 = v3[2];
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_reset";
        v57 = 2082;
        v58 = v51;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid reset callback, backtrace limit exceeded";
        goto LABEL_90;
      }

      v44 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type;
      v45 = os_log_type_enabled(v35, type);
      if (!v44)
      {
        if (!v45)
        {
          goto LABEL_91;
        }

        v52 = v3[2];
        if (!v52)
        {
          v52 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_reset";
        v57 = 2082;
        v58 = v52;
        v59 = 2048;
        v60 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid reset callback, no backtrace";
        goto LABEL_90;
      }

      if (v45)
      {
        v46 = v3[2];
        if (!v46)
        {
          v46 = "invalid";
        }

        *buf = 136446978;
        v56 = "__nw_protocol_reset";
        v57 = 2082;
        v58 = v46;
        v59 = 2048;
        v60 = v3;
        v61 = 2082;
        v62 = v44;
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s protocol %{public}s (%p) has invalid reset callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v44);
    }

LABEL_91:
    if (v34)
    {
      free(v34);
    }

    result = 0;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v39 = __nwlog_obj();
  *buf = 136446210;
  v56 = "__nw_protocol_reset";
  v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v40, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v56 = "__nw_protocol_reset";
        v43 = "%{public}s called with null protocol";
LABEL_97:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      }
    }

    else if (v53 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v48 = os_log_type_enabled(v41, type);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_reset";
          v57 = 2082;
          v58 = v47;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_98;
      }

      if (v48)
      {
        *buf = 136446210;
        v56 = "__nw_protocol_reset";
        v43 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_97;
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v56 = "__nw_protocol_reset";
        v43 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_97;
      }
    }
  }

LABEL_98:
  if (v40)
  {
    free(v40);
  }

  return 0;
}

uint64_t nw_protocol_reset_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = a2;
      result = 0;
      if (a2)
      {
        v5 = *(v3 + 256);
        if (v5)
        {
          v6 = *(v2 + 40);
          v7 = v2;
          if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v2 + 64)) != 0)
          {
            v9 = *(v7 + 88);
            v8 = 0;
            if (v9)
            {
              *(v7 + 88) = v9 + 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v10 = *(a2 + 40);
          v11 = a2;
          if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a2 + 64)) != 0)
          {
            v12 = *(v11 + 88);
            if (v12)
            {
              *(v11 + 88) = v12 + 1;
            }

            result = v5(v2, a2);
            v13 = *(v4 + 40);
            if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
            {
              v14 = *(v4 + 88);
              if (v14)
              {
                v15 = v14 - 1;
                *(v4 + 88) = v15;
                if (!v15)
                {
                  v16 = result;
                  v17 = *(v4 + 64);
                  if (v17)
                  {
                    *(v4 + 64) = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (*(v4 + 72))
                  {
                    v18 = *(v4 + 64);
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v4);
                  result = v16;
                }
              }
            }
          }

          else
          {
            result = v5(v2, a2);
          }

          if ((v8 & 1) == 0)
          {
            v19 = *(v2 + 40);
            if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v20 = *(v2 + 88);
              if (v20)
              {
                v21 = v20 - 1;
                *(v2 + 88) = v21;
                if (!v21)
                {
                  v22 = result;
                  v23 = *(v2 + 64);
                  if (v23)
                  {
                    *(v2 + 64) = 0;
                    v23[2](v23);
                    _Block_release(v23);
                  }

                  if (*(v2 + 72))
                  {
                    v24 = *(v2 + 64);
                    if (v24)
                    {
                      _Block_release(v24);
                    }
                  }

                  free(v2);
                  return v22;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_reset_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 256) != 0;
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

void nw_protocol_get_message_properties_quiet(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v3 = a1;
  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  v5 = a2;
  if (!a2)
  {
    return;
  }

  v6 = *(v4 + 248);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  v8 = a1;
  if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = a1[8]) != 0)
  {
    v10 = v8[11];
    v9 = 0;
    if (v10)
    {
      v8[11] = v10 + 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = *(a2 + 40);
  v12 = a2;
  if (v11 != &nw_protocol_ref_counted_handle && (v11 != &nw_protocol_ref_counted_additional_handle || (v12 = *(a2 + 64)) == 0))
  {
    v6(a1, a2);
    if (v9)
    {
      return;
    }

    goto LABEL_25;
  }

  v13 = *(v12 + 88);
  if (v13)
  {
    *(v12 + 88) = v13 + 1;
  }

  v6(a1, a2);
  v14 = *(v5 + 40);
  if (v14 != &nw_protocol_ref_counted_handle && (v14 != &nw_protocol_ref_counted_additional_handle || (v5 = *(v5 + 64)) == 0) || (v15 = *(v5 + 88)) == 0 || (v16 = v15 - 1, (*(v5 + 88) = v16) != 0))
  {
    if (v9)
    {
      return;
    }

    goto LABEL_25;
  }

  v22 = *(v5 + 64);
  if (v22)
  {
    *(v5 + 64) = 0;
    v22[2](v22);
    _Block_release(v22);
  }

  if (*(v5 + 72))
  {
    v23 = *(v5 + 64);
    if (v23)
    {
      _Block_release(v23);
    }
  }

  free(v5);
  if ((v9 & 1) == 0)
  {
LABEL_25:
    v17 = v3[5];
    if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
    {
      v18 = v3[11];
      if (v18)
      {
        v19 = v18 - 1;
        v3[11] = v19;
        if (!v19)
        {
          v20 = v3[8];
          if (v20)
          {
            v3[8] = 0;
            v20[2](v20);
            _Block_release(v20);
          }

          if (v3[9])
          {
            v21 = v3[8];
            if (v21)
            {
              _Block_release(v21);
            }
          }

          free(v3);
        }
      }
    }
  }
}

uint64_t nw_protocol_get_message_properties_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 248) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *nw_protocol_supports_external_data_quiet(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 && (v3 = *(v2 + 176)) != 0)
    {
      v4 = result[5];
      v5 = result;
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = result[8]) != 0)
      {
        v6 = v5[11];
        if (v6)
        {
          v5[11] = v6 + 1;
        }

        result = (v3)(result);
        v7 = v1[5];
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
        {
          v8 = v1[11];
          if (v8)
          {
            v9 = v8 - 1;
            v1[11] = v9;
            if (!v9)
            {
              v10 = result;
              v11 = v1[8];
              if (v11)
              {
                v1[8] = 0;
                v11[2](v11);
                _Block_release(v11);
              }

              if (v1[9])
              {
                v12 = v1[8];
                if (v12)
                {
                  _Block_release(v12);
                }
              }

              free(v1);
              return v10;
            }
          }
        }
      }

      else
      {

        return v3();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_waiting_for_output_quiet(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = a2;
      result = 0;
      if (a2)
      {
        v5 = *(v3 + 216);
        if (v5)
        {
          v6 = *(v2 + 40);
          v7 = v2;
          if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v2 + 64)) != 0)
          {
            v9 = *(v7 + 88);
            v8 = 0;
            if (v9)
            {
              *(v7 + 88) = v9 + 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v10 = *(a2 + 40);
          v11 = a2;
          if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a2 + 64)) != 0)
          {
            v12 = *(v11 + 88);
            if (v12)
            {
              *(v11 + 88) = v12 + 1;
            }

            result = v5(v2, a2);
            v13 = *(v4 + 40);
            if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
            {
              v14 = *(v4 + 88);
              if (v14)
              {
                v15 = v14 - 1;
                *(v4 + 88) = v15;
                if (!v15)
                {
                  v16 = result;
                  v17 = *(v4 + 64);
                  if (v17)
                  {
                    *(v4 + 64) = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (*(v4 + 72))
                  {
                    v18 = *(v4 + 64);
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v4);
                  result = v16;
                }
              }
            }
          }

          else
          {
            result = v5(v2, a2);
          }

          if ((v8 & 1) == 0)
          {
            v19 = *(v2 + 40);
            if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
            {
              v20 = *(v2 + 88);
              if (v20)
              {
                v21 = v20 - 1;
                *(v2 + 88) = v21;
                if (!v21)
                {
                  v22 = result;
                  v23 = *(v2 + 64);
                  if (v23)
                  {
                    *(v2 + 64) = 0;
                    v23[2](v23);
                    _Block_release(v23);
                  }

                  if (*(v2 + 72))
                  {
                    v24 = *(v2 + 64);
                    if (v24)
                    {
                      _Block_release(v24);
                    }
                  }

                  free(v2);
                  return v22;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_unregister_notification(void *a1, uint64_t a2, int a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v26 = v6[11];
      if (v26)
      {
        v7 = 0;
        v6[11] = v26 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
LABEL_38:
          v27 = __nwlog_obj();
          *buf = 136446210;
          v65 = "__nw_protocol_unregister_notification";
          v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null other_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (__nwlog_fault(v28, &type, &v62))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v29 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v29, type))
              {
                *buf = 136446210;
                v65 = "__nw_protocol_unregister_notification";
                v31 = "%{public}s called with null other_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
              }
            }

            else if (v62 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v29 = __nwlog_obj();
              v30 = type;
              v54 = os_log_type_enabled(v29, type);
              if (backtrace_string)
              {
                if (v54)
                {
                  *buf = 136446466;
                  v65 = "__nw_protocol_unregister_notification";
                  v66 = 2082;
                  v67 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v54)
              {
                *buf = 136446210;
                v65 = "__nw_protocol_unregister_notification";
                v31 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v29 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v29, type))
              {
                *buf = 136446210;
                v65 = "__nw_protocol_unregister_notification";
                v31 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v28)
          {
            free(v28);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v32 = *(v9 + 88);
      if (v32)
      {
        v10 = 0;
        *(v9 + 88) = v32 + 1;
        if (!a3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_45:
        v33 = __nwlog_obj();
        *buf = 136446210;
        v65 = "__nw_protocol_unregister_notification";
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null type", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v34, &type, &v62))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v35 = __nwlog_obj();
          v36 = type;
          if (!os_log_type_enabled(v35, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_unregister_notification";
          v37 = "%{public}s called with null type";
          goto LABEL_117;
        }

        if (v62 != 1)
        {
          v35 = __nwlog_obj();
          v36 = type;
          if (!os_log_type_enabled(v35, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_unregister_notification";
          v37 = "%{public}s called with null type, backtrace limit exceeded";
          goto LABEL_117;
        }

        v55 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type;
        v56 = os_log_type_enabled(v35, type);
        if (v55)
        {
          if (v56)
          {
            *buf = 136446466;
            v65 = "__nw_protocol_unregister_notification";
            v66 = 2082;
            v67 = v55;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
          if (!v34)
          {
LABEL_121:
            result = 0;
            if (v10)
            {
LABEL_22:
              if ((v7 & 1) == 0)
              {
                v20 = v4[5];
                if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v4 = v4[8]) != 0)
                {
                  v21 = v4[11];
                  if (v21)
                  {
                    v22 = v21 - 1;
                    v4[11] = v22;
                    if (!v22)
                    {
                      v23 = result;
                      v24 = v4[8];
                      if (v24)
                      {
                        v4[8] = 0;
                        v24[2](v24);
                        _Block_release(v24);
                      }

                      if (v4[9])
                      {
                        v25 = v4[8];
                        if (v25)
                        {
                          _Block_release(v25);
                        }
                      }

                      free(v4);
                      return v23;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v14 = *(v3 + 40);
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v15 = *(v3 + 88);
              if (v15)
              {
                v16 = v15 - 1;
                *(v3 + 88) = v16;
                if (!v16)
                {
                  v17 = result;
                  v18 = *(v3 + 64);
                  if (v18)
                  {
                    *(v3 + 64) = 0;
                    v18[2](v18);
                    _Block_release(v18);
                  }

                  if (*(v3 + 72))
                  {
                    v19 = *(v3 + 64);
                    if (v19)
                    {
                      _Block_release(v19);
                    }
                  }

                  free(v3);
                  result = v17;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v34);
          goto LABEL_121;
        }

        if (v56)
        {
          *buf = 136446210;
          v65 = "__nw_protocol_unregister_notification";
          v37 = "%{public}s called with null type, no backtrace";
LABEL_117:
          v59 = v35;
          v60 = v36;
          v61 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 152);
      if (v12)
      {
        result = v12(a1, a2);
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    v38 = __nwlog_obj();
    v39 = v4[2];
    *buf = 136446722;
    v65 = "__nw_protocol_unregister_notification";
    if (!v39)
    {
      v39 = "invalid";
    }

    v66 = 2082;
    v67 = v39;
    v68 = 2048;
    v69 = v4;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s protocol %{public}s (%p) has invalid unregister_notification callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v34, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v42 = v4[2];
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_unregister_notification";
        v66 = 2082;
        v67 = v42;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid unregister_notification callback";
      }

      else if (v62 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v49 = os_log_type_enabled(v40, type);
        if (v48)
        {
          if (v49)
          {
            v50 = v4[2];
            if (!v50)
            {
              v50 = "invalid";
            }

            *buf = 136446978;
            v65 = "__nw_protocol_unregister_notification";
            v66 = 2082;
            v67 = v50;
            v68 = 2048;
            v69 = v4;
            v70 = 2082;
            v71 = v48;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid unregister_notification callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v48);
          goto LABEL_119;
        }

        if (!v49)
        {
          goto LABEL_119;
        }

        v58 = v4[2];
        if (!v58)
        {
          v58 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_unregister_notification";
        v66 = 2082;
        v67 = v58;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid unregister_notification callback, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v57 = v4[2];
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_unregister_notification";
        v66 = 2082;
        v67 = v57;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid unregister_notification callback, backtrace limit exceeded";
      }

      v59 = v40;
      v60 = v41;
      v61 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v59, v60, v37, buf, v61);
    }

LABEL_119:
    if (!v34)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v65 = "__nw_protocol_unregister_notification";
  v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v44, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v65 = "__nw_protocol_unregister_notification";
        v47 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v52 = os_log_type_enabled(v45, type);
      if (v51)
      {
        if (v52)
        {
          *buf = 136446466;
          v65 = "__nw_protocol_unregister_notification";
          v66 = 2082;
          v67 = v51;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
        goto LABEL_106;
      }

      if (v52)
      {
        *buf = 136446210;
        v65 = "__nw_protocol_unregister_notification";
        v47 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v65 = "__nw_protocol_unregister_notification";
        v47 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v44)
  {
    free(v44);
  }

  return 0;
}