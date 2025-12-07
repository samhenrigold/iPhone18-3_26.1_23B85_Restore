_BYTE *nw_read_request_list_report(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    do
    {
      if ((v3[22] & 1) == 0)
      {
        if ((v3[22] & 0xA) != 0 || (v5 = v3[9], v3[11] >= v5) && (v5 || v3[10] || v3[17] && !v3[10]))
        {
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          nw_read_request_report(v3, 0);
        }
      }

      v4 = v3[1];

      v3 = v4;
    }

    while (v4);
    do
    {
      if ((v2[176] & 1) == 0)
      {
        break;
      }

      v6 = nw_read_request_list_remove_head(v2);

      v2 = v6;
    }

    while (v6);
  }

  return v2;
}

BOOL nw_flow_process_input_frames(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_protocol *a3, nw_frame_array_s *a4, int a5, char a6, int a7)
{
  v293 = *MEMORY[0x1E69E9840];
  v237 = a1;
  v256 = a2;
  handle = a3->handle;
  v240 = a4;
  tqh_first = a4->tqh_first;
  v262 = handle;
  if (!a4->tqh_first)
  {
    if ((*(handle + 166) & 0x10) == 0)
    {
      goto LABEL_359;
    }

    v29 = *(handle + 33);
    if (!v29)
    {
      v180 = *(handle + 32);
      if (v180 && nw_dictionary_get_count(v180))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v281 = __Block_byref_object_copy__17198;
        *v282 = __Block_byref_object_dispose__17199;
        *&v282[8] = 0;
        memset(out, 0, sizeof(out));
        v181 = *(handle + 32);
        v277[0] = MEMORY[0x1E69E9820];
        v277[1] = 3221225472;
        v277[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke;
        v277[3] = &unk_1E6A34C68;
        v277[4] = buf;
        v277[5] = out;
        nw_dictionary_apply(v181, v277);
        nw_dictionary_set_value(*(handle + 32), out, 0);

        if (nw_content_context_get_is_final(*(*&buf[8] + 40)))
        {
          *(handle + 166) |= 0x80u;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {

        *(handle + 166) |= 0x80u;
      }

      goto LABEL_314;
    }

    v30 = handle;
    v31 = v29;
    v32 = *(v30 + 33);
    *(v30 + 33) = 0;

    v33 = v31;
    v34 = v33;
    if (v33 == &__block_literal_global_44658 || v33 == &__block_literal_global_10_44685)
    {

      goto LABEL_38;
    }

    if (v33 == &__block_literal_global_6_44667 || v33 == &__block_literal_global_8_44676)
    {
    }

    else
    {
      v37 = v33[118];

      if ((v37 & 1) == 0)
      {
LABEL_38:

        handle = v262;
LABEL_314:
        request_list_report = nw_read_request_list_report(*(handle + 27));
        v188 = *(handle + 27);
        *(handle + 27) = request_list_report;
        goto LABEL_358;
      }
    }

    *(v262 + 166) |= 0x80u;
    goto LABEL_38;
  }

  is_inline = nw_context_is_inline(*(handle + 23));
  v11 = handle;
  v12 = a4->tqh_first;
  v13 = v12;
  v276 = 0;
  v14 = v11[27];
  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (*(v12 + 102) & 1) != 0)
  {
LABEL_19:
    LODWORD(v17) = 0;
    alloc = 0;
    goto LABEL_20;
  }

  alloc = 0;
  LODWORD(v17) = 0;
  if (!*(v12 + 13) && (a5 & 1) == 0)
  {
    v18 = v14;
    v19 = v18[17];

    if (v19 != 3)
    {
      *buf = 0;
      nw_frame_array_get_frame_count(v240, 1, buf);
      v20 = *buf;
      next_max_size = nw_read_request_get_next_max_size(*(v262 + 27));
      if (next_max_size)
      {
        if (v20 >= next_max_size)
        {
          v17 = next_max_size;
        }

        else
        {
          v17 = v20;
        }

        if ((is_inline & 1) != 0 || (buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(*(v262 + 23), v17)) == 0 || (v23 = buffer_manager_with_context, sized_typed = nw_mem_buffer_allocate_sized_typed(v17, 0x100004077774924uLL, buffer_manager_with_context), (v276 = sized_typed) == 0) || (v25 = sized_typed, v26 = nw_queue_copy_current_workloop(), destructor[0] = MEMORY[0x1E69E9820], destructor[1] = 3221225472, destructor[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_2, destructor[3] = &__block_descriptor_48_e5_v8__0l, destructor[4] = v23, destructor[5] = v276, alloc = dispatch_data_create(v25, v17, v26, destructor), v26, !alloc))
        {
          alloc = dispatch_data_create_alloc();
        }

        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v27 = *(v262 + 27);
  if (v27)
  {
    v28 = v13 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    data1 = 0;
    goto LABEL_340;
  }

  v247 = v17;
  data1 = 0;
  v259 = 0;
  v231 = *MEMORY[0x1E69E9648];
  v38 = v13;
  while (1)
  {
    v39 = *(v38 + 32);
    v245 = (v38 + 32);
    if (!v39 && !*(v38 + 40))
    {
      v39 = 0;
    }

    v40 = v262;
    logging_disabled = v39;
    v254 = logging_disabled;
    if (!*(v38 + 112) || (*(v38 + 204) & 0x100) != 0 && g_channel_check_validity && (logging_disabled = g_channel_check_validity(v38, *(v38 + 88)), !logging_disabled))
    {
      v45 = 0;
      buffer = 0;
    }

    else
    {
      v44 = *(v38 + 52);
      v43 = *(v38 + 56);
      v45 = v44 ? v44 - (v43 + *(v38 + 60)) : 0;
      buffer = (*(v38 + 112) + v43);
    }

    memset(uu, 0, sizeof(uu));
    memset(out, 0, sizeof(out));
    v46 = *(v38 + 204);
    v47 = *(v38 + 64);
    v257 = v45;
    if (v47)
    {
      v251 = (*(v47 + 66) >> 6) & 1;
      if (*(v47 + 48))
      {
        *uu = *(v47 + 16);
        goto LABEL_58;
      }
    }

    else
    {
      v251 = 0;
    }

    if ((v46 & 0x80000000) == 0)
    {
      v263 = 0;
      v48 = *(v262 + 27);
      if (!v48)
      {
        break;
      }

      goto LABEL_87;
    }

LABEL_58:
    if (gLogDatapath)
    {
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v237);
      if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v264 = gconnectionLogObj;
        if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(v237);
          v141 = nw_endpoint_handler_dry_run_string(v237);
          v142 = nw_endpoint_handler_copy_endpoint(v237);
          logging_description = nw_endpoint_get_logging_description(v142);
          v144 = nw_endpoint_handler_state_string(v237);
          v145 = nw_endpoint_handler_mode_string(v237);
          v146 = nw_endpoint_handler_copy_current_path(v237);
          v147 = v146;
          *buf = 136448770;
          v148 = ", complete";
          if (!v251)
          {
            v148 = "";
          }

          *&buf[4] = "nw_flow_process_input_frames";
          v149 = ", wake_packet";
          if (v46 >= 0)
          {
            v149 = "";
          }

          *&buf[12] = 2082;
          *&buf[14] = id_string;
          *&buf[22] = 2082;
          v281 = v141;
          *v282 = 2082;
          *&v282[2] = logging_description;
          *&v282[10] = 2082;
          *&v282[12] = v144;
          v283 = 2082;
          v284 = v145;
          v285 = 2114;
          v286 = v146;
          v287 = 1042;
          *v288 = 16;
          *&v288[4] = 2098;
          *&v288[6] = uu;
          *&v288[14] = 2080;
          *&v288[16] = v148;
          *&v288[24] = 2080;
          *&v288[26] = v149;
          _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Found frame with context %{public,uuid_t}.16P%s%s", buf, 0x6Cu);
        }

        v40 = v262;
      }
    }

    if ((a6 & 1) != 0 || v256->multiplexed_message_definition)
    {
      v49 = *(v40 + 33);
      if (v49)
      {
        goto LABEL_62;
      }

      v51 = nw_content_context_create(*(*(v40 + 4) + 16));
      nw_content_context_set_is_final(v51, 1);
      objc_storeStrong(v40 + 33, v51);
    }

    else
    {
      if (!*(v40 + 32))
      {
        v62 = nw_dictionary_create(logging_disabled, v42);
        v63 = *(v40 + 32);
        *(v40 + 32) = v62;

        v40 = v262;
      }

      uuid_unparse_upper(uu, out);
      v49 = nw_dictionary_copy_value(*(v40 + 32), out);
      if (v49)
      {
LABEL_62:
        v50 = v49;
        v51 = v50;
        goto LABEL_65;
      }

      v51 = nw_content_context_create(*(*(v40 + 4) + 16));
      nw_dictionary_set_value(*(v40 + 32), out, v51);
    }

    v50 = 0;
LABEL_65:

    v271[0] = MEMORY[0x1E69E9820];
    v271[1] = 3221225472;
    v271[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_79;
    v271[3] = &unk_1E6A2DBB8;
    v274 = v262;
    v272 = v256;
    v263 = v51;
    v273 = v263;
    nw_frame_foreach_protocol_metadata(v38, a5, v271);
    if (v46 >= 0)
    {
      goto LABEL_86;
    }

    v52 = v263;
    v53 = v52;
    if (v52)
    {
      if (v52 != &__block_literal_global_10_44685 && v52 != &__block_literal_global_8_44676 && v52 != &__block_literal_global_6_44667 && v52 != &__block_literal_global_44658)
      {
        BYTE6(v52[14].isa) |= 0x80u;
      }

      goto LABEL_72;
    }

    v158 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_content_context_set_is_wake_packet";
    LODWORD(v223) = 12;
    v159 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v158, 16, "%{public}s called with null context", buf, v223);

    type = OS_LOG_TYPE_ERROR;
    v278 = 0;
    if (__nwlog_fault(v159, &type, &v278))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v160 = __nwlog_obj();
        v161 = type;
        if (os_log_type_enabled(v160, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v160, v161, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v278 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v160 = __nwlog_obj();
        v170 = type;
        v171 = os_log_type_enabled(v160, type);
        if (backtrace_string)
        {
          if (v171)
          {
            *buf = 136446466;
            *&buf[4] = "nw_content_context_set_is_wake_packet";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v160, v170, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_293;
        }

        if (v171)
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v160, v170, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v160 = __nwlog_obj();
        v172 = type;
        if (os_log_type_enabled(v160, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v160, v172, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_293:
    if (v159)
    {
      free(v159);
    }

LABEL_72:

    minimize_logging = nw_endpoint_handler_get_minimize_logging(v237);
    v55 = nw_endpoint_handler_get_logging_disabled(v237);
    if (!minimize_logging)
    {
      if (v55)
      {
        goto LABEL_86;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v56 = gconnectionLogObj;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = nw_endpoint_handler_get_id_string(v237);
        v58 = nw_endpoint_handler_dry_run_string(v237);
        v59 = nw_endpoint_handler_copy_endpoint(v237);
        v60 = v59;
        if (v59)
        {
          v61 = _nw_endpoint_get_logging_description(v59);
        }

        else
        {
          v61 = "<NULL>";
        }

        v64 = nw_endpoint_handler_state_string(v237);
        v65 = nw_endpoint_handler_mode_string(v237);
        v66 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136447746;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v57;
        *&buf[22] = 2082;
        v281 = v58;
        *v282 = 2082;
        *&v282[2] = v61;
        *&v282[10] = 2082;
        *&v282[12] = v64;
        v283 = 2082;
        v284 = v65;
        v285 = 2114;
        v286 = v66;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] content_context is wake packet", buf, 0x48u);
      }

      goto LABEL_85;
    }

    if ((v55 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v56 = gconnectionLogObj;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v162 = nw_endpoint_handler_get_id_string(v237);
        v163 = nw_endpoint_handler_dry_run_string(v237);
        v164 = nw_endpoint_handler_copy_endpoint(v237);
        v165 = nw_endpoint_get_logging_description(v164);
        v166 = nw_endpoint_handler_state_string(v237);
        v167 = nw_endpoint_handler_mode_string(v237);
        v168 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136447746;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v162;
        *&buf[22] = 2082;
        v281 = v163;
        *v282 = 2082;
        *&v282[2] = v165;
        *&v282[10] = 2082;
        *&v282[12] = v166;
        v283 = 2082;
        v284 = v167;
        v285 = 2114;
        v286 = v168;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] content_context is wake packet", buf, 0x48u);
      }

LABEL_85:
    }

LABEL_86:

    v40 = v262;
    v45 = v257;
    v48 = *(v262 + 27);
    if (!v48)
    {
      break;
    }

LABEL_87:
    if (v45)
    {
      break;
    }

    if (!alloc || !v254 || v259 >= v247)
    {
      if (alloc)
      {
        v118 = data1;
LABEL_204:
        if (dispatch_data_get_size(alloc))
        {
          v120 = *(v262 + 40);
          if (v120 && (*(v256 + 36) & 1) != 0)
          {
            *(v262 + 40) = 0;

            last_error = v256->last_error;
            v256->last_error = 0;

            *(v256 + 36) &= ~1u;
          }

          v119 = alloc;
        }

        else
        {

          v119 = 0;
        }
      }

      else
      {
        v118 = 0;
        v119 = 0;
        alloc = data1;
        if (data1)
        {
          goto LABEL_204;
        }
      }

      v122 = v251;
      if (!v263)
      {
        v122 = 0;
      }

      if (v122 == 1)
      {
        v123 = v263;
        if (v123 == &__block_literal_global_44658 || v123 == &__block_literal_global_10_44685)
        {
        }

        else if (v123 == &__block_literal_global_6_44667 || v123 == &__block_literal_global_8_44676)
        {

LABEL_218:
          *(v262 + 166) |= 0x80u;
        }

        else
        {
          v124 = (BYTE6(v123[14].isa) & 1) == 0;

          if (!v124)
          {
            goto LABEL_218;
          }
        }
      }

      v67 = 0;
      alloc = 0;
      data1 = v118;
LABEL_220:
      v40 = v262;
      v45 = v257;
LABEL_221:
      if (v67 < v45)
      {
        goto LABEL_295;
      }

      goto LABEL_222;
    }

    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v237) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v150 = gconnectionLogObj;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
      {
        v151 = nw_endpoint_handler_get_id_string(v237);
        v152 = nw_endpoint_handler_dry_run_string(v237);
        v153 = nw_endpoint_handler_copy_endpoint(v237);
        v154 = nw_endpoint_get_logging_description(v153);
        v155 = nw_endpoint_handler_state_string(v237);
        v156 = nw_endpoint_handler_mode_string(v237);
        v157 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136449026;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v151;
        *&buf[22] = 2082;
        v281 = v152;
        *v282 = 2082;
        *&v282[2] = v154;
        *&v282[10] = 2082;
        *&v282[12] = v155;
        v283 = 2082;
        v284 = v156;
        v285 = 2114;
        v286 = v157;
        v287 = 2048;
        *v288 = v38;
        *&v288[8] = 2112;
        *&v288[10] = alloc;
        *&v288[18] = 2048;
        *&v288[20] = v254;
        *&v288[28] = 1024;
        *&v288[30] = v259;
        v289 = 1024;
        v290 = v247;
        _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping 0 length frame %p, aggregated_data %@, next_frame %p, aggregrated_amount_read %u, aggregated_data_length %u", buf, 0x72u);
      }

      v67 = 0;
      goto LABEL_220;
    }

LABEL_222:
    if (v263 && v251)
    {
      v125 = *(v40 + 33);
      if (v125 == v263)
      {
        *(v40 + 33) = 0;
      }

      else
      {
        v126 = *(v40 + 32);
        if (v126)
        {
          nw_dictionary_set_value(v126, out, 0);
        }
      }
    }

    v127 = *(v38 + 32);
    v128 = *(v38 + 40);
    v129 = (v127 + 40);
    if (!v127)
    {
      v129 = v240 + 1;
    }

    *v129 = v128;
    *v128 = v127;
    *v245 = 0;
    *(v38 + 40) = 0;
    nw_frame_finalize(v38);
    v13 = v254;

    v27 = *(v262 + 27);
    if (v27)
    {
      v38 = v13;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_340;
  }

  v67 = 0;
  if (!v48 || !v45)
  {
    goto LABEL_221;
  }

  v67 = 0;
  v68 = a5;
  if (!v254)
  {
    v68 = 1;
  }

  v238 = v68;
  v70 = v263 == &__block_literal_global_44658 || v263 == &__block_literal_global_10_44685;
  v243 = v70;
  v72 = v263 == &__block_literal_global_6_44667 || v263 == &__block_literal_global_8_44676;
  v241 = v72;
  v73 = v45;
  while (2)
  {
    v74 = nw_read_request_get_next_max_size(v48);
    v75 = v74;
    if (!v74)
    {
      goto LABEL_221;
    }

    v76 = v45 - v67;
    if (v45 - v67 >= v74)
    {
      v77 = v74;
    }

    else
    {
      v77 = v76;
    }

    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v237) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v106 = gconnectionLogObj;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        log = v106;
        v227 = nw_endpoint_handler_get_id_string(v237);
        v225 = nw_endpoint_handler_dry_run_string(v237);
        v234 = alloc;
        v107 = nw_endpoint_handler_copy_endpoint(v237);
        v108 = nw_endpoint_get_logging_description(v107);
        v224 = nw_endpoint_handler_state_string(v237);
        v109 = nw_endpoint_handler_mode_string(v237);
        v110 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136448770;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v227;
        *&buf[22] = 2082;
        v281 = v225;
        *v282 = 2082;
        *&v282[2] = v108;
        *&v282[10] = 2082;
        *&v282[12] = v224;
        v283 = 2082;
        v284 = v109;
        v285 = 2114;
        v286 = v110;
        v287 = 1024;
        *v288 = v77;
        *&v288[4] = 1024;
        *&v288[6] = v257;
        *&v288[10] = 1024;
        *&v288[12] = v75;
        *&v288[16] = 1024;
        *&v288[18] = v67;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reading %u bytes out of a %u byte frame (max %u, %u so far)", buf, 0x60u);

        alloc = v234;
        v106 = log;
      }

      v40 = v262;
    }

    if (!alloc)
    {
      if (nw_frame_buffer_used_malloc(v38) && nw_frame_get_buffer(v38, 0) == buffer && !v67 && v77 == v257)
      {
        v79 = dispatch_data_create(buffer, v73, 0, v231);
        v80 = v79;
        if (data1 && v79)
        {
          v81 = data1;
          concat = dispatch_data_create_concat(data1, v79);
        }

        else
        {
          concat = v79;
          v81 = data1;
        }

        nw_frame_will_free_buffer_externally(v38);
LABEL_152:
        v78 = v73;
        data1 = concat;
LABEL_153:
        v40 = v262;
        goto LABEL_154;
      }

      if (nw_frame_buffer_used_manager(v38) && nw_frame_get_buffer(v38, 0) == buffer && !v67 && v77 == v257 && !((nw_frame_get_finalizer_context(v38) == 0) | is_inline & 1))
      {
        manager = nw_frame_buffer_get_manager(v38);
        nw_frame_will_free_buffer_externally(v38);
        v94 = nw_queue_copy_current_workloop();
        v270[0] = MEMORY[0x1E69E9820];
        v270[1] = 3221225472;
        v270[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_81;
        v270[3] = &__block_descriptor_48_e5_v8__0l;
        v270[4] = manager;
        v270[5] = buffer;
        v95 = dispatch_data_create(buffer, v73, v94, v270);

        if (data1 && v95)
        {
          v96 = data1;
          concat = dispatch_data_create_concat(data1, v95);
        }

        else
        {
          concat = v95;
          v96 = data1;
        }

        goto LABEL_152;
      }

      if (v67 || v77 != v257)
      {
        v84 = &buffer[v67];
        *buf = 0;
        if (data1)
        {
          v85 = dispatch_data_create_alloc();
          memcpy(*buf, v84, v77);
          v86 = dispatch_data_create_concat(data1, v85);

          v78 = v77;
          data1 = v86;
        }

        else
        {
          data1 = dispatch_data_create_alloc();
          memcpy(*buf, v84, v77);
          v78 = v77;
        }

        goto LABEL_153;
      }

      if (is_inline)
      {
        *buf = 0;
        v83 = v73;
      }

      else
      {
        v87 = nw_frame_get_buffer_manager_with_context(*(v40 + 23), v257);
        v83 = v73;
        v88 = nw_mem_buffer_allocate_sized_typed(v73, 0x100004077774924uLL, v87);
        *buf = v88;
        if (v88)
        {
          v89 = v88;
          v90 = nw_queue_copy_current_workloop();
          v269[0] = MEMORY[0x1E69E9820];
          v269[1] = 3221225472;
          v269[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_2_82;
          v269[3] = &__block_descriptor_48_e5_v8__0l;
          v269[4] = v87;
          v269[5] = *buf;
          v91 = dispatch_data_create(v89, v73, v90, v269);

          v83 = v73;
LABEL_140:
          memcpy(*buf, buffer, v83);
          if (data1)
          {
            v92 = dispatch_data_create_concat(data1, v91);

            alloc = 0;
            data1 = v92;
          }

          else
          {
            data1 = v91;
            alloc = 0;
          }

          v78 = v73;
          goto LABEL_153;
        }
      }

      v91 = dispatch_data_create_alloc();
      goto LABEL_140;
    }

    if (v247 < v259 || v77 > v247 - v259)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v130 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_flow_process_input_frames";
      *&buf[12] = 1024;
      *&buf[14] = v77;
      *&buf[18] = 1024;
      *&buf[20] = v247;
      LOWORD(v281) = 1024;
      *(&v281 + 2) = v259;
      LODWORD(v223) = 30;
      v131 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s Trying to write beyond buffer: %u > %u - %u", buf, v223);

      type = OS_LOG_TYPE_ERROR;
      v278 = 0;
      if (!__nwlog_fault(v131, &type, &v278))
      {
        goto LABEL_252;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v132 = gLogObj;
        v133 = type;
        if (os_log_type_enabled(v132, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v77;
          *&buf[18] = 1024;
          *&buf[20] = v247;
          LOWORD(v281) = 1024;
          *(&v281 + 2) = v259;
          _os_log_impl(&dword_181A37000, v132, v133, "%{public}s Trying to write beyond buffer: %u > %u - %u", buf, 0x1Eu);
        }

        goto LABEL_251;
      }

      if (v278 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v132 = gLogObj;
        v138 = type;
        if (os_log_type_enabled(v132, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v77;
          *&buf[18] = 1024;
          *&buf[20] = v247;
          LOWORD(v281) = 1024;
          *(&v281 + 2) = v259;
          _os_log_impl(&dword_181A37000, v132, v138, "%{public}s Trying to write beyond buffer: %u > %u - %u, backtrace limit exceeded", buf, 0x1Eu);
        }

LABEL_251:

LABEL_252:
        if (!v131)
        {
          goto LABEL_220;
        }

LABEL_253:
        free(v131);
        goto LABEL_220;
      }

      v134 = __nw_create_backtrace_string();
      if (!v134)
      {
        v132 = __nwlog_obj();
        v139 = type;
        if (os_log_type_enabled(v132, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v77;
          *&buf[18] = 1024;
          *&buf[20] = v247;
          LOWORD(v281) = 1024;
          *(&v281 + 2) = v259;
          _os_log_impl(&dword_181A37000, v132, v139, "%{public}s Trying to write beyond buffer: %u > %u - %u, no backtrace", buf, 0x1Eu);
        }

        goto LABEL_251;
      }

      v135 = v134;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v136 = gLogObj;
      v137 = type;
      if (os_log_type_enabled(v136, type))
      {
        *buf = 136447234;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 1024;
        *&buf[14] = v77;
        *&buf[18] = 1024;
        *&buf[20] = v247;
        LOWORD(v281) = 1024;
        *(&v281 + 2) = v259;
        HIWORD(v281) = 2082;
        *v282 = v135;
        _os_log_impl(&dword_181A37000, v136, v137, "%{public}s Trying to write beyond buffer: %u > %u - %u, dumping backtrace:%{public}s", buf, 0x28u);
      }

      free(v135);
      if (v131)
      {
        goto LABEL_253;
      }

      goto LABEL_220;
    }

    memcpy(&v276[v259], &buffer[v67], v77);
    v78 = v77;
LABEL_154:
    v256->received_application_byte_count += v78;
    if ((*(v256 + 34) & 0x20) == 0)
    {
      nw_context_count_input_bytes(*(v40 + 23), v78);
    }

    v67 += v77;
    v259 += v77;
    if (alloc)
    {
      v45 = v257;
      if (v254 && v259 < v247)
      {
        goto LABEL_221;
      }

LABEL_163:
      if (v67 >= v45)
      {
        v98 = v251;
      }

      else
      {
        v98 = 0;
      }

      if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v237) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v111 = gconnectionLogObj;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          loga = v111;
          v228 = nw_endpoint_handler_get_id_string(v237);
          v112 = nw_endpoint_handler_dry_run_string(v237);
          v113 = alloc;
          v114 = nw_endpoint_handler_copy_endpoint(v237);
          v115 = nw_endpoint_get_logging_description(v114);
          v226 = nw_endpoint_handler_state_string(v237);
          v116 = nw_endpoint_handler_mode_string(v237);
          v117 = nw_endpoint_handler_copy_current_path(v237);
          *buf = 136448770;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v228;
          *&buf[22] = 2082;
          v281 = v112;
          *v282 = 2082;
          *&v282[2] = v115;
          *&v282[10] = 2082;
          *&v282[12] = v226;
          v283 = 2082;
          v284 = v116;
          v285 = 2114;
          v286 = v117;
          v287 = 1024;
          *v288 = v98;
          *&v288[4] = 1024;
          *&v288[6] = v251;
          *&v288[10] = 1024;
          *&v288[12] = v67;
          *&v288[16] = 1024;
          *&v288[18] = v257;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] mark_complete: %u, context_complete: %u, amount_read: %u, frame_length: %u", buf, 0x60u);

          alloc = v113;
          v111 = loga;
        }

        v40 = v262;
      }

      v99 = *(v40 + 40);
      if (v99 && (*(v256 + 36) & 1) != 0)
      {
        *(v40 + 40) = 0;

        v100 = v256->last_error;
        v256->last_error = 0;

        *(v256 + 36) &= ~1u;
        v40 = v262;
      }

      if (alloc)
      {
        request_receive = nw_read_request_receive(*(v40 + 27), alloc, v263, v98, *(v40 + 40));
        v102 = alloc;
        goto LABEL_172;
      }

      if (data1)
      {
        request_receive = nw_read_request_receive(*(v40 + 27), data1, v263, v98, *(v40 + 40));
        v102 = data1;
        data1 = 0;
LABEL_172:
      }

      else
      {
        data1 = 0;
      }

      if (v263)
      {
        v103 = v98;
      }

      else
      {
        v103 = 0;
      }

      if (v103 == 1)
      {
        v104 = v263;
        if (v243)
        {
        }

        else if (v241)
        {

LABEL_182:
          *(v262 + 166) |= 0x80u;
        }

        else
        {
          v105 = (BYTE6(v263[14].isa) & 1) == 0;

          if (!v105)
          {
            goto LABEL_182;
          }
        }
      }

      alloc = 0;
      v40 = v262;
      v48 = *(v262 + 27);
      v45 = v257;
      if (!v48 || v67 >= v257)
      {
        goto LABEL_221;
      }

      continue;
    }

    break;
  }

  v97 = v238;
  if (v76 >= v75)
  {
    v97 = 1;
  }

  v45 = v257;
  if (v97 == 1)
  {
    goto LABEL_163;
  }

  alloc = 0;
  if (v67 >= v257)
  {
    goto LABEL_222;
  }

LABEL_295:
  v173 = nw_endpoint_handler_get_logging_disabled(v237);
  if (v263)
  {
    if ((v173 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v175 = gconnectionLogObj;
      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
      {
        v176 = nw_endpoint_handler_get_id_string(v237);
        v177 = nw_endpoint_handler_dry_run_string(v237);
        v178 = nw_endpoint_handler_copy_endpoint(v237);
        v179 = v178;
        if (v178)
        {
          v260 = _nw_endpoint_get_logging_description(v178);
        }

        else
        {
          v260 = "<NULL>";
        }

        v189 = nw_endpoint_handler_state_string(v237);
        v190 = nw_endpoint_handler_mode_string(v237);
        v191 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136448514;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v176;
        *&buf[22] = 2082;
        v281 = v177;
        *v282 = 2082;
        *&v282[2] = v260;
        *&v282[10] = 2082;
        *&v282[12] = v189;
        v283 = 2082;
        v284 = v190;
        v285 = 2114;
        v286 = v191;
        v287 = 1024;
        *v288 = v67;
        *&v288[4] = 1024;
        *&v288[6] = v257;
        *&v288[10] = 2082;
        *&v288[12] = out;
        _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not read entire frame (requests only took %u, had %u), saving for context %{public}s", buf, 0x5Eu);
      }
    }

    nw_frame_claim(v38, v174, v67, 0);
    if (a7)
    {
      do
      {
        v193 = (v38 + 32);
        v192 = *(v38 + 32);
        if (!v192 && !*(v38 + 40))
        {
          v192 = 0;
        }

        v194 = v192;

        if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v237) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v258 = gconnectionLogObj;
          if (os_log_type_enabled(v258, OS_LOG_TYPE_DEBUG))
          {
            v252 = nw_endpoint_handler_get_id_string(v237);
            buffera = nw_endpoint_handler_dry_run_string(v237);
            v248 = nw_endpoint_handler_copy_endpoint(v237);
            v246 = nw_endpoint_get_logging_description(v248);
            v244 = nw_endpoint_handler_state_string(v237);
            v242 = nw_endpoint_handler_mode_string(v237);
            v255 = nw_endpoint_handler_copy_current_path(v237);
            v199 = nw_frame_unclaimed_length(v38);
            *buf = 136448514;
            *&buf[4] = "nw_flow_process_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v252;
            *&buf[22] = 2082;
            v281 = buffera;
            *v282 = 2082;
            *&v282[2] = v246;
            *&v282[10] = 2082;
            *&v282[12] = v244;
            v283 = 2082;
            v284 = v242;
            v285 = 2114;
            v286 = v255;
            v287 = 2048;
            *v288 = v38;
            *&v288[8] = 1024;
            *&v288[10] = v199;
            *&v288[14] = 2082;
            *&v288[16] = out;
            _os_log_impl(&dword_181A37000, v258, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Saving frame %p of length %u for context %{public}s", buf, 0x62u);
          }
        }

        v195 = *(v38 + 32);
        v196 = *(v38 + 40);
        v197 = (v195 + 40);
        if (!v195)
        {
          v197 = v240 + 1;
        }

        *v197 = v196;
        *v196 = v195;
        *v193 = 0;
        *(v38 + 40) = 0;
        v198 = *(v262 + 35);
        *(v38 + 40) = v198;
        *v198 = v38;
        *(v262 + 35) = v193;
        v254 = v194;

        v38 = v254;
      }

      while (v254);
      v254 = 0;
    }
  }

  else
  {
    if ((v173 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v182 = gconnectionLogObj;
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        v183 = nw_endpoint_handler_get_id_string(v237);
        v184 = nw_endpoint_handler_dry_run_string(v237);
        v185 = nw_endpoint_handler_copy_endpoint(v237);
        v186 = v185;
        if (v185)
        {
          v261 = _nw_endpoint_get_logging_description(v185);
        }

        else
        {
          v261 = "<NULL>";
        }

        v200 = nw_endpoint_handler_state_string(v237);
        v201 = nw_endpoint_handler_mode_string(v237);
        v202 = nw_endpoint_handler_copy_current_path(v237);
        *buf = 136448258;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v183;
        *&buf[22] = 2082;
        v281 = v184;
        *v282 = 2082;
        *&v282[2] = v261;
        *&v282[10] = 2082;
        *&v282[12] = v200;
        v283 = 2082;
        v284 = v201;
        v285 = 2114;
        v286 = v202;
        v287 = 1024;
        *v288 = v67;
        *&v288[4] = 1024;
        *&v288[6] = v257;
        _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not read entire frame (requests only took %u, had %u)", buf, 0x54u);
      }
    }

    v203 = *(v38 + 32);
    v204 = *(v38 + 40);
    v205 = (v203 + 40);
    if (!v203)
    {
      v205 = v240 + 1;
    }

    *v205 = v204;
    *v204 = v203;
    *v245 = 0;
    *(v38 + 40) = 0;
    nw_frame_finalize(v38);
  }

  v27 = *(v262 + 27);
  v13 = v38;
LABEL_340:
  v206 = nw_read_request_list_report(v27);
  v207 = *(v262 + 27);
  *(v262 + 27) = v206;

  if (a7 && *v240)
  {
    *out = 0;
    *&out[8] = out;
    *&out[16] = 0x2020000000;
    *&out[24] = 0;
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v266 = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_83;
    v267 = &unk_1E6A2DBE0;
    v268 = out;
    do
    {
      v208 = *v240;
      if (!*v240)
      {
        break;
      }

      v209 = *(v208 + 32);
      v210 = *(v208 + 40);
      v211 = (v209 + 40);
      if (!v209)
      {
        v211 = v240 + 1;
      }

      *v211 = v210;
      *v210 = v209;
      *(v208 + 32) = 0;
      *(v208 + 40) = 0;
    }

    while (((v266)(v265) & 1) != 0);
    if ((nw_endpoint_handler_get_logging_disabled(v237) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v212 = gconnectionLogObj;
      if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
      {
        v213 = nw_endpoint_handler_get_id_string(v237);
        v214 = nw_endpoint_handler_dry_run_string(v237);
        v215 = nw_endpoint_handler_copy_endpoint(v237);
        v216 = v215;
        if (v215)
        {
          v217 = _nw_endpoint_get_logging_description(v215);
        }

        else
        {
          v217 = "<NULL>";
        }

        v218 = nw_endpoint_handler_state_string(v237);
        v219 = nw_endpoint_handler_mode_string(v237);
        v220 = nw_endpoint_handler_copy_current_path(v237);
        v221 = *(*&out[8] + 24);
        *buf = 136448002;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v213;
        *&buf[22] = 2082;
        v281 = v214;
        *v282 = 2082;
        *&v282[2] = v217;
        *&v282[10] = 2082;
        *&v282[12] = v218;
        v283 = 2082;
        v284 = v219;
        v285 = 2114;
        v286 = v220;
        v287 = 1024;
        *v288 = v221;
        _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to use %u frames, marking as failed", buf, 0x4Eu);
      }
    }

    _Block_object_dispose(out, 8);
  }

  v188 = data1;
LABEL_358:

LABEL_359:
  return tqh_first != 0;
}

NSObject *nw_read_request_receive(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v127 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  obj = a3;
  v10 = a3;
  v91 = a5;
  v11 = a5;
  v12 = v11;
  if (v8)
  {
    v13 = 1;
    v90 = v11;
    while (1)
    {
      v14 = v8;
      v15 = v14;
      if ((v14[22] & 1) == 0)
      {
        break;
      }

LABEL_161:
      v8 = v15[1];

      if (!v8)
      {
        goto LABEL_165;
      }
    }

    v17 = v14 + 17;
    v16 = v14[17];
    if (v16 != v10 && ((v16 == 0) & v13) == 0)
    {
LABEL_144:
      if (!v10 || *v17 == v10)
      {
        v83 = *(v15 + 17);
        v84 = v83 != 4 && v9 == 0;
        if (v84 && (a4 & 1) != 0 || v83 == 4 && (v15[10] <= v15[11] || a4))
        {
          *(v15 + 176) |= 2u;
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }
        }
      }

      v13 |= v9 != 0;
      goto LABEL_161;
    }

    objc_storeStrong(v14 + 17, obj);
    if (v12)
    {
      objc_storeStrong(v15 + 19, v91);
    }

    if (!v9 || (size = dispatch_data_get_size(v9)) == 0)
    {
LABEL_143:
      v13 = 0;
      goto LABEL_144;
    }

    v20 = *(v15 + 17);
    if (v20 - 1 >= 2)
    {
      if (v20 == 3)
      {
        if (v15[11] < v15[10])
        {
          v77 = v15[20];
          if (v77)
          {
            _nw_array_append(v77, v9);
          }

          v78 = v15[21];
          if (v78 && v10)
          {
            _nw_array_append(v78, v10);
          }

          v15[11] = v15[11] + 1;

          v79 = v15[17];
          v15[17] = 0;

          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled != 1)
          {
            subrange = 0;
            goto LABEL_139;
          }

          if (!kdebug_is_enabled())
          {
            goto LABEL_126;
          }

          v9 = 0;
          kdebug_trace();
        }
      }

      else if (v20 == 4)
      {
        v109 = 0;
        v110 = &v109;
        v111 = 0x3032000000;
        v112 = __Block_byref_object_copy__55438;
        v113 = __Block_byref_object_dispose__55439;
        v21 = v9;
        v114 = v21;
        v23 = v15[10];
        v22 = v15[11];
        v24 = v23 >= v22;
        v25 = v23 - v22;
        if (v25 == 0 || !v24)
        {
LABEL_125:

          _Block_object_dispose(&v109, 8);
LABEL_126:
          v9 = 0;
          goto LABEL_137;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = &v116;
        v116 = 0;
        v117 = &v116;
        v118 = 0x2020000000;
        LOBYTE(v119) = 0;
        v93 = MEMORY[0x1E69E9820];
        while (1)
        {
          v102 = 0;
          v103 = &v102;
          v104 = 0x2020000000;
          v105 = 0;
          *(v27 + 24) = 0;
          v28 = *(v110 + 40);
          v29 = dispatch_data_get_size(v28);
          v30 = v29;
          applier[0] = v93;
          if (v26 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v26;
          }

          applier[1] = 3221225472;
          applier[2] = __nw_read_request_receive_block_invoke;
          applier[3] = &unk_1E6A35860;
          v101 = v31;
          v32 = v15;
          v96 = v32;
          v97 = &v109;
          v98 = &v102;
          v99 = &v116;
          v100 = v30;
          dispatch_data_apply(v28, applier);
          v33 = v15[11] + *(v103 + 6);
          v15[11] = v33;
          if (!v33 || (v15[22] & 4) != 0)
          {
            goto LABEL_64;
          }

          v34 = v32;
          v35 = v15[7];
          if (!v35)
          {
            v58 = __nwlog_obj();
            *buf = 136446210;
            v124 = "nw_read_request_start_file_updates";
            LODWORD(v87) = 12;
            v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null request->connection", buf, v87);

            LOBYTE(location) = 16;
            type = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v59, &location, &type))
            {
              if (location == 17)
              {
                v60 = __nwlog_obj();
                v61 = location;
                if (os_log_type_enabled(v60, location))
                {
                  *buf = 136446210;
                  v124 = "nw_read_request_start_file_updates";
                  _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null request->connection", buf, 0xCu);
                }

                goto LABEL_87;
              }

              if (type == OS_LOG_TYPE_INFO)
              {
                backtrace_string = __nw_create_backtrace_string();
                v63 = __nwlog_obj();
                v64 = location;
                loga = v63;
                v65 = os_log_type_enabled(v63, location);
                if (backtrace_string)
                {
                  if (v65)
                  {
                    *buf = 136446466;
                    v124 = "nw_read_request_start_file_updates";
                    v125 = 2082;
                    *v126 = backtrace_string;
                    _os_log_impl(&dword_181A37000, loga, v64, "%{public}s called with null request->connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  v12 = v90;
                  free(backtrace_string);
                }

                else
                {
                  if (v65)
                  {
                    *buf = 136446210;
                    v124 = "nw_read_request_start_file_updates";
                    _os_log_impl(&dword_181A37000, loga, v64, "%{public}s called with null request->connection, no backtrace", buf, 0xCu);
                  }

                  v12 = v90;
                }
              }

              else
              {
                v60 = __nwlog_obj();
                v66 = location;
                if (os_log_type_enabled(v60, location))
                {
                  *buf = 136446210;
                  v124 = "nw_read_request_start_file_updates";
                  _os_log_impl(&dword_181A37000, v60, v66, "%{public}s called with null request->connection, backtrace limit exceeded", buf, 0xCu);
                }

LABEL_87:

                v12 = v90;
              }
            }

            if (v59)
            {
              free(v59);
            }

            goto LABEL_63;
          }

          *(v15 + 176) |= 4u;
          v36 = v35[2];
          if (v36 && !_nw_parameters_get_logging_disabled(v36))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v37 = gconnectionLogObj;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = *(v15[7] + 112);
              v39 = v15[12];
              *buf = 136446722;
              v124 = "nw_read_request_start_file_updates";
              v125 = 1024;
              *v126 = v38;
              *&v126[4] = 2112;
              *&v126[6] = v39;
              _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Activating progress updates on read request on %@", buf, 0x1Cu);
            }
          }

          v40 = v15[13];
          if (v40)
          {
            nw_queue_cancel_source(v40);
            v15[13] = 0;
          }

          objc_initWeak(&location, v34);
          v41 = *(v15[7] + 3);
          *v120 = MEMORY[0x1E69E9820];
          *&v120[8] = 3221225472;
          *&v120[16] = ___ZL34nw_read_request_start_file_updatesP26NWConcrete_nw_read_request_block_invoke;
          v121 = &unk_1E6A3A6C8;
          objc_copyWeak(v122, &location);
          source = nw_queue_context_create_source(v41, 2, 3, 0, v120, 0);
          v15[13] = source;
          if (source)
          {
            v43 = dispatch_time(0x8000000000000000, 1000000);
            v44 = 1000000 * *(v15 + 28);
            if (*source)
            {
              dispatch_source_set_timer(*source, v43, v44, 0x3E8uLL);
            }

            else
            {
              source[4] = v43;
              source[5] = v44;
              if (*(source + 48) == 1 && *(source + 49) == 1)
              {
                nw_queue_source_run_timer(source);
              }
            }

            nw_queue_activate_source(v15[13]);
            goto LABEL_62;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          *buf = 136446210;
          v124 = "nw_read_request_start_file_updates";
          LODWORD(v87) = 12;
          v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed", buf, v87);

          type = OS_LOG_TYPE_ERROR;
          v106 = 0;
          if (__nwlog_fault(v46, &type, &v106))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v47 = gLogObj;
              v48 = type;
              if (os_log_type_enabled(v47, type))
              {
                *buf = 136446210;
                v124 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v47, v48, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed", buf, 0xCu);
              }
            }

            else if (v106 == 1)
            {
              v49 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v47 = gLogObj;
              HIDWORD(v87) = type;
              v50 = os_log_type_enabled(v47, type);
              log = v49;
              if (v49)
              {
                if (v50)
                {
                  *buf = 136446466;
                  v124 = "nw_read_request_start_file_updates";
                  v125 = 2082;
                  *v126 = v49;
                  _os_log_impl(&dword_181A37000, v47, BYTE4(v87), "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                v12 = v90;
                free(log);
                if (!v46)
                {
                  goto LABEL_62;
                }

LABEL_61:
                free(v46);
                goto LABEL_62;
              }

              if (v50)
              {
                *buf = 136446210;
                v124 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v47, BYTE4(v87), "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v47 = gLogObj;
              v51 = type;
              if (os_log_type_enabled(v47, type))
              {
                *buf = 136446210;
                v124 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v47, v51, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

            v12 = v90;
          }

          if (v46)
          {
            goto LABEL_61;
          }

LABEL_62:
          objc_destroyWeak(v122);
          objc_destroyWeak(&location);
LABEL_63:

LABEL_64:
          if (*(v117 + 24) == 1)
          {
            if (*(v110 + 40))
            {
              v52 = *(v15[7] + 2);
              if (v52)
              {
                if (!_nw_parameters_get_logging_disabled(v52))
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v53 = gconnectionLogObj;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    v54 = *(v15[7] + 112);
                    *v120 = 136446466;
                    *&v120[4] = "nw_read_request_receive";
                    *&v120[12] = 1024;
                    *&v120[14] = v54;
                    _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Retrying write to file descriptor, partial write without eof", v120, 0x12u);
                  }
                }
              }
            }
          }

          v56 = v15[10];
          v55 = v15[11];
          v24 = v56 >= v55;
          v57 = v56 - v55;
          if (v24)
          {
            v26 = v57;
          }

          else
          {
            v26 = 0;
          }

          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          _Block_object_dispose(&v102, 8);
          v27 = v117;
          if ((v117[3] & 1) == 0)
          {
            _Block_object_dispose(&v116, 8);
            goto LABEL_125;
          }
        }
      }

LABEL_137:
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
        goto LABEL_140;
      }

      subrange = v9;
LABEL_139:
      v9 = subrange;
LABEL_140:
      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      goto LABEL_143;
    }

    v68 = v15[10];
    v67 = v15[11];
    v24 = v68 >= v67;
    v70 = v68 - v67;
    v69 = v70 != 0 && v24;
    if (!v24)
    {
      v70 = 0;
    }

    if (!v69)
    {
      goto LABEL_137;
    }

    if (v70 >= size)
    {
      v71 = size;
    }

    else
    {
      v71 = v70;
    }

    if (v20 != 1)
    {
      v80 = v15[15] + v67;
      *v120 = 0;
      *&v120[8] = v120;
      *&v120[16] = 0x2000000000;
      v121 = 0;
      v116 = 0;
      v117 = &v116;
      v118 = 0x2000000000;
      v119 = v80;
      v109 = MEMORY[0x1E69E9820];
      v110 = 0x40000000;
      v111 = __nw_dispatch_data_copyout_block_invoke;
      v112 = &unk_1E6A34348;
      v114 = &v116;
      v115 = v71;
      v113 = v120;
      v81 = size;
      dispatch_data_apply(v9, &v109);
      v71 = *(*&v120[8] + 24);
      _Block_object_dispose(&v116, 8);
      _Block_object_dispose(v120, 8);
      if (v81 == v71)
      {
        subrange = 0;
        v71 = v81;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v9, v71, v81 - v71);
      }

      goto LABEL_131;
    }

    if (size <= v70)
    {
      subrange = 0;
      v75 = v15[16];
      if (!v75)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v72 = size;
      v73 = dispatch_data_create_subrange(v9, 0, v71);
      subrange = dispatch_data_create_subrange(v9, v71, v72 - v71);

      v9 = v73;
      v75 = v15[16];
      if (!v75)
      {
LABEL_111:
        concat = v9;
LABEL_129:
        v82 = v15[16];
        v15[16] = concat;

LABEL_131:
        v15[11] = v15[11] + v71;
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
        }

        if (_nw_signposts_enabled != 1)
        {
          goto LABEL_139;
        }

        if (kdebug_is_enabled())
        {
          kdebug_trace();
        }

        v9 = subrange;
        goto LABEL_137;
      }
    }

    concat = dispatch_data_create_concat(v75, v9);
    goto LABEL_129;
  }

LABEL_165:
  v85 = v9;

  return v85;
}

void nw_flow_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      nw_flow_service_reads(v5, v7, handle, 0);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v9 = "unknown-mode";
        }

        else
        {
          v9 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v21 = "nw_flow_input_available";
        v22 = 2082;
        v23 = v9;
        v24 = 2082;
        v25 = "flow";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_flow_input_available";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_flow_input_available";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v11)
  {
    free(v11);
  }

LABEL_10:
}

const char **nw_frame_get_buffer_manager_with_context(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_frame_get_buffer_manager_with_context";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null context", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v13 = "nw_frame_get_buffer_manager_with_context";
      v7 = "%{public}s called with null context";
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
          v13 = "nw_frame_get_buffer_manager_with_context";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v9)
      {
LABEL_45:
        if (v4)
        {
          free(v4);
        }

        return 0;
      }

      *buf = 136446210;
      v13 = "nw_frame_get_buffer_manager_with_context";
      v7 = "%{public}s called with null context, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v13 = "nw_frame_get_buffer_manager_with_context";
      v7 = "%{public}s called with null context, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_45;
  }

  if (dword_1EA83C248 >= a2)
  {

    return nw_context_2k_buffer_manager(a1);
  }

  else if (dword_1EA83C290 >= a2)
  {

    return nw_context_8k_buffer_manager(a1);
  }

  else if (dword_1EA83C2D8 >= a2)
  {

    return nw_context_16k_buffer_manager(a1);
  }

  else if (dword_1EA83C320 >= a2)
  {

    return nw_context_64k_buffer_manager(a1);
  }

  else if (dword_1EA83C368 >= a2)
  {

    return nw_context_128k_buffer_manager(a1);
  }

  else if (dword_1EA83C3B0 >= a2)
  {

    return nw_context_512k_buffer_manager(a1);
  }

  else
  {
    if (dword_1EA83C3F8 < a2)
    {
      return 0;
    }

    return nw_context_1024k_buffer_manager(a1);
  }
}

const char **nw_context_2k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 188);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe, dword_1EA83C248, word_1EA83C24C);
      *(*(v3 + 4) + 188) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_2k_buffer_manager";
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
        v17 = "nw_context_2k_buffer_manager";
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
          v17 = "nw_context_2k_buffer_manager";
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
        v17 = "nw_context_2k_buffer_manager";
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
        v17 = "nw_context_2k_buffer_manager";
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

void *nw_mem_buffer_allocate(size_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_mem_buffer_allocate";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null buffer_manager", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v25 = "nw_mem_buffer_allocate";
      v15 = "%{public}s called with null buffer_manager";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v25 = "nw_mem_buffer_allocate";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (!v20)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v25 = "nw_mem_buffer_allocate";
      v15 = "%{public}s called with null buffer_manager, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v25 = "nw_mem_buffer_allocate";
      v15 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_37;
  }

  if (use_malloc_memory == 1)
  {
    v2 = a1[7];
    if (!v2)
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
      v25 = "nw_mem_buffer_allocate";
      v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s strict_malloc called with size 0", buf, 12);
      result = __nwlog_should_abort(v18);
      if (result)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      free(v18);
      v2 = 0;
    }

    v3 = malloc_type_malloc(v2, 0xF881E1B1uLL);
    if (v3)
    {
      v9 = v3;
      v10 = malloc_size(v3);
      nw_mem_track_allocation(v10);
      return v9;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    *buf = 136446210;
    v25 = "nw_mem_buffer_allocate";
    LODWORD(v21) = 12;
    v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s strict allocator failed", buf, v21);
    result = __nwlog_should_abort(v6);
    if (!result)
    {
LABEL_9:
      free(v6);
      return 0;
    }

    goto LABEL_39;
  }

  if (!a1[11])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "nw_mem_buffer_allocate";
      v26 = 2082;
      v27 = a1 + 12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  g_transaction_touched = 1;
  nw_mem_cache_update_set_timer();
  v8 = a1[11];

  return nw_mem_cache_alloc(v8);
}

void nw_flow_passthrough_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        input_available = callbacks->input_available;
        if (input_available)
        {

          input_available();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_flow_passthrough_input_available";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol";
LABEL_21:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_flow_passthrough_input_available";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_21;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_read_request_get_next_max_size(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0xFFFFFFFFLL;
  while (1)
  {
    v4 = v2;
    v5 = v4;
    if (v4[176])
    {
      goto LABEL_4;
    }

    v6 = *(v4 + 17);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        if (*(v4 + 10) > *(v4 + 11))
        {
          goto LABEL_16;
        }

        goto LABEL_4;
      }

      if (v6 != 4)
      {
        goto LABEL_4;
      }
    }

    v7 = *(v4 + 10);
    v8 = *(v4 + 11);
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      break;
    }

    if (*(v4 + 72) == 0)
    {
      v3 = 0;
      goto LABEL_16;
    }

LABEL_4:
    v2 = *(v4 + 1);

    if (!v2)
    {
      return 0;
    }
  }

  if (v9)
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

LABEL_16:

  return v3;
}

BOOL nw_read_request_is_metadata_only(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (v1[9])
    {
      v2 = 0;
    }

    else
    {
      v2 = v1[10] == 0;
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_read_request_is_metadata_only";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null request", buf, 12);

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
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null request", buf, 0xCu);
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
          v15 = "nw_read_request_is_metadata_only";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_queue_copy_current_workloop()
{
  v6 = *MEMORY[0x1E69E9840];
  result = dispatch_workloop_copy_current();
  if (!result)
  {
    v1 = __nwlog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    v4 = 136446210;
    v5 = "nw_queue_copy_current_workloop";
    v3 = _os_log_send_and_compose_impl(v2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s Cannot async_current, no current queue", &v4, 12);

    result = __nwlog_should_abort(v3);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

void nw_read_request_report(void *a1, void *a2)
{
  v171 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3[44])
  {
    goto LABEL_146;
  }

  *(v3 + 176) |= 1u;
  v5 = v3[17];
  if (v5 <= 1)
  {
    if (!v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_read_request_report";
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Invalid request", buf, 0xCu);
      }

      goto LABEL_43;
    }

    if (v5 != 1)
    {
LABEL_44:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = v3[17];
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Unknown request type %d", buf, 0x12u);
      }

LABEL_43:

LABEL_146:
      return;
    }

    v16 = *(v3 + 16);
    v17 = *(v3 + 16);
    *(v3 + 16) = 0;

    if (!*(v3 + 7))
    {
      (*(*(v3 + 3) + 16))();
LABEL_128:

      goto LABEL_146;
    }

    v18 = *(v3 + 19);
    if (!v18)
    {
LABEL_127:
      v104 = *(v3 + 17);
      v105 = *(v3 + 176);
      v106 = *(v3 + 19);
      v107 = _Block_copy(*(v3 + 3));
      v108 = *(v3 + 7);
      v109 = v3[16];
      v160[0] = MEMORY[0x1E69E9820];
      v160[1] = 3221225472;
      v160[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
      v160[3] = &unk_1E6A35888;
      v164 = v107;
      v161 = v16;
      v162 = v104;
      v165 = (v105 & 2) != 0;
      v163 = v106;
      v110 = v106;
      v111 = v104;
      v112 = v107;
      nw_connection_async_client_if_needed_with_override(v108, v4, v109, v160);

      goto LABEL_128;
    }

    v19 = v18;
    v20 = v19[2];

    if (v20 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v21 = *(*(v3 + 7) + 16);
      if (!v21 || _nw_parameters_get_logging_disabled(v21))
      {
        goto LABEL_127;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_126;
      }

      v23 = *(*(v3 + 7) + 448);
      *buf = 136446466;
      *&buf[4] = "nw_read_request_report";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      v24 = "%{public}s [C%u] Receive cancelled";
      v25 = v22;
      v26 = OS_LOG_TYPE_INFO;
      v27 = 18;
    }

    else
    {
      v101 = *(*(v3 + 7) + 16);
      if (!v101 || _nw_parameters_get_logging_disabled(v101))
      {
        goto LABEL_127;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_126;
      }

      v102 = *(*(v3 + 7) + 448);
      v103 = *(v3 + 19);
      *buf = 136446722;
      *&buf[4] = "nw_read_request_report";
      *&buf[12] = 1024;
      *&buf[14] = v102;
      *&buf[18] = 2114;
      *&buf[20] = v103;
      v24 = "%{public}s [C%u] Receive failed with error %{public}@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 28;
    }

    _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
LABEL_126:

    goto LABEL_127;
  }

  if (v5 == 2)
  {
    if (!*(v3 + 7))
    {
      v44 = *(v3 + 6);
      v45 = *(v3 + 11);
      v46 = *(v3 + 19);
      if (v46)
      {
        error_code = nw_error_get_error_code(v46);
      }

      else
      {
        error_code = 0;
      }

      (*(v44 + 16))(v44, v45, error_code);
      goto LABEL_146;
    }

    v28 = *(v3 + 19);
    if (!v28)
    {
      goto LABEL_102;
    }

    v29 = v28;
    v30 = v29[2];

    if (v30 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v31 = *(*(v3 + 7) + 16);
      if (v31 && !_nw_parameters_get_logging_disabled(v31))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_99;
        }

        v33 = *(*(v3 + 7) + 448);
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v33;
        v34 = "%{public}s [C%u] Receive cancelled";
        v35 = v32;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 18;
LABEL_98:
        _os_log_impl(&dword_181A37000, v35, v36, v34, buf, v37);
LABEL_99:
      }
    }

    else
    {
      v76 = *(*(v3 + 7) + 16);
      if (v76 && !_nw_parameters_get_logging_disabled(v76))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v77 = *(*(v3 + 7) + 448);
        v78 = *(v3 + 19);
        *buf = 136446722;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v77;
        *&buf[18] = 2114;
        *&buf[20] = v78;
        v34 = "%{public}s [C%u] Receive failed with error %{public}@";
        v35 = v32;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 28;
        goto LABEL_98;
      }
    }

    v79 = *(v3 + 19);
    if (v79)
    {
      v80 = v79;
      v81 = v80[3];

LABEL_103:
      v82 = *(v3 + 11);
      v83 = _Block_copy(*(v3 + 6));
      v84 = *(v3 + 7);
      v85 = v3[16];
      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 3221225472;
      v139[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_107;
      v139[3] = &unk_1E6A35900;
      v140 = v83;
      v141 = v82;
      v142 = v81;
      v86 = v83;
      nw_connection_async_client_if_needed_with_override(v84, v4, v85, v139);

      goto LABEL_146;
    }

LABEL_102:
    v81 = 0;
    goto LABEL_103;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      if (!*(v3 + 7))
      {
        (*(*(v3 + 4) + 16))();
LABEL_116:
        v99 = *(v3 + 13);
        if (v99)
        {
          nw_queue_cancel_source(v99);
          *(v3 + 13) = 0;
        }

        v100 = *(v3 + 4);
        *(v3 + 4) = 0;

        goto LABEL_146;
      }

      v6 = *(v3 + 19);
      if (!v6)
      {
LABEL_112:
        if ((v3[44] & 2) == 0 && !*(v3 + 19))
        {
          *(v3 + 176) |= 2u;
        }

        v90 = *(v3 + 17);
        v91 = *(v3 + 176);
        v92 = *(v3 + 19);
        v93 = _Block_copy(*(v3 + 4));
        v94 = *(v3 + 7);
        v95 = v3[16];
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_108;
        v133[3] = &unk_1E6A35888;
        v137 = v93;
        v134 = v3;
        v135 = v90;
        v138 = (v91 & 2) != 0;
        v136 = v92;
        v96 = v92;
        v97 = v90;
        v98 = v93;
        nw_connection_async_client_if_needed_with_override(v94, v4, v95, v133);

        goto LABEL_116;
      }

      v7 = v6;
      v8 = v7[2];

      if (v8 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
      {
        v9 = *(*(v3 + 7) + 16);
        if (!v9 || _nw_parameters_get_logging_disabled(v9))
        {
          goto LABEL_112;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_111;
        }

        v11 = *(*(v3 + 7) + 448);
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        v12 = "%{public}s [C%u] Receive cancelled";
        v13 = v10;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 18;
      }

      else
      {
        v87 = *(*(v3 + 7) + 16);
        if (!v87 || _nw_parameters_get_logging_disabled(v87))
        {
          goto LABEL_112;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_111;
        }

        v88 = *(*(v3 + 7) + 448);
        v89 = *(v3 + 19);
        *buf = 136446722;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v88;
        *&buf[18] = 2114;
        *&buf[20] = v89;
        v12 = "%{public}s [C%u] Receive failed with error %{public}@";
        v13 = v10;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 28;
      }

      _os_log_impl(&dword_181A37000, v13, v14, v12, buf, v15);
LABEL_111:

      goto LABEL_112;
    }

    goto LABEL_44;
  }

  v38 = *(v3 + 20);
  if (v38)
  {
    count = _nw_array_get_count(v38);
    v40 = *(v3 + 21);
    if (v40)
    {
LABEL_40:
      v41 = _nw_array_get_count(v40);
      goto LABEL_51;
    }
  }

  else
  {
    count = 0;
    v40 = *(v3 + 21);
    if (v40)
    {
      goto LABEL_40;
    }
  }

  v41 = 0;
LABEL_51:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  if (!count)
  {
    goto LABEL_69;
  }

  if (count >> 61)
  {
    v126 = __nwlog_obj();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    *v166 = 136446210;
    v167 = "nw_read_request_report";
    v128 = _os_log_send_and_compose_impl(v127, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s strict_calloc count * size would overflow", v166, 12);

    if (__nwlog_should_abort(v128))
    {
      goto LABEL_157;
    }

    free(v128);
  }

  v48 = malloc_type_calloc(count, 8uLL, 0x97E06420uLL);
  if (!v48)
  {
    v49 = __nwlog_obj();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    *v166 = 136446722;
    v167 = "nw_read_request_report";
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v168 = 2048;
    *v169 = count;
    *&v169[8] = 2048;
    *&v169[10] = 8;
    LODWORD(v132) = 32;
    v52 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s strict_calloc(%zu, %zu) failed", v166, v132);

    if (__nwlog_should_abort(v52))
    {
      goto LABEL_157;
    }

    free(v52);
    v48 = 0;
  }

  *(*&buf[8] + 24) = v48;
  if (count >> 61)
  {
    v129 = __nwlog_obj();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    *v166 = 136446210;
    v167 = "nw_read_request_report";
    LODWORD(v132) = 12;
    v131 = _os_log_send_and_compose_impl(v130, 0, 0, 0, &dword_181A37000, v129, 16, "%{public}s strict_calloc count * size would overflow", v166, v132);

    if (__nwlog_should_abort(v131))
    {
      goto LABEL_157;
    }

    free(v131);
  }

  v53 = malloc_type_calloc(count, 8uLL, 0x95752FFuLL);
  if (v53)
  {
LABEL_66:
    v157[3] = v53;
    v58 = *(v3 + 20);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_104;
    aBlock[3] = &unk_1E6A358B0;
    v154 = v41;
    v155 = count;
    v152 = buf;
    v153 = &v156;
    v59 = v3;
    v151 = v59;
    if (v58)
    {
      _nw_array_apply(v58, aBlock);
      v59 = v151;
    }

LABEL_69:
    if (!*(v3 + 7))
    {
      (*(*(v3 + 5) + 16))();
      v70 = *(*&buf[8] + 24);
      if (v70 || v157[3])
      {
        if (count)
        {
          for (i = 0; i != count; ++i)
          {
            v72 = *(*&buf[8] + 24);
            if (v72)
            {
              v73 = *(v72 + 8 * i);
              if (v73)
              {
                *(v72 + 8 * i) = 0;
              }
            }

            v74 = v157[3];
            if (v74)
            {
              v75 = *(v74 + 8 * i);
              if (v75)
              {
                *(v74 + 8 * i) = 0;
              }
            }
          }

          v70 = *(*&buf[8] + 24);
        }

        if (v70)
        {
          free(v70);
          *(*&buf[8] + 24) = 0;
        }

        v123 = v157[3];
        if (v123)
        {
          free(v123);
          v157[3] = 0;
        }
      }

      goto LABEL_143;
    }

    v60 = *(v3 + 19);
    if (!v60)
    {
LABEL_137:
      v116 = *(v3 + 19);
      v117 = v3[22];
      v118 = _Block_copy(*(v3 + 5));
      v119 = *(v3 + 7);
      v120 = v3[16];
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_106;
      v143[3] = &unk_1E6A358D8;
      v146 = buf;
      v147 = &v156;
      v149 = v117;
      v144 = v116;
      v145 = v118;
      v148 = count;
      v121 = v116;
      v122 = v118;
      nw_connection_async_client_if_needed_with_override(v119, v4, v120, v143);

LABEL_143:
      v124 = *(v3 + 20);
      *(v3 + 20) = 0;

      v125 = *(v3 + 21);
      *(v3 + 21) = 0;

      _Block_object_dispose(&v156, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_146;
    }

    v61 = v60;
    v62 = v61[2] == 1;

    if (v62 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v63 = *(*(v3 + 7) + 16);
      if (!v63 || _nw_parameters_get_logging_disabled(v63))
      {
        goto LABEL_137;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v64 = gconnectionLogObj;
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        goto LABEL_136;
      }

      v65 = *(*(v3 + 7) + 448);
      *v166 = 136446466;
      v167 = "nw_read_request_report";
      v168 = 1024;
      *v169 = v65;
      v66 = "%{public}s [C%u] Receive cancelled";
      v67 = v64;
      v68 = OS_LOG_TYPE_INFO;
      v69 = 18;
    }

    else
    {
      v113 = *(*(v3 + 7) + 16);
      if (!v113 || _nw_parameters_get_logging_disabled(v113))
      {
        goto LABEL_137;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v64 = gconnectionLogObj;
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      v114 = *(*(v3 + 7) + 448);
      v115 = *(v3 + 19);
      *v166 = 136446722;
      v167 = "nw_read_request_report";
      v168 = 1024;
      *v169 = v114;
      *&v169[4] = 2114;
      *&v169[6] = v115;
      v66 = "%{public}s [C%u] Receive failed with error %{public}@";
      v67 = v64;
      v68 = OS_LOG_TYPE_ERROR;
      v69 = 28;
    }

    _os_log_impl(&dword_181A37000, v67, v68, v66, v166, v69);
LABEL_136:

    goto LABEL_137;
  }

  v54 = __nwlog_obj();
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
  *v166 = 136446722;
  v167 = "nw_read_request_report";
  if (v55)
  {
    v56 = 3;
  }

  else
  {
    v56 = 2;
  }

  v168 = 2048;
  *v169 = count;
  *&v169[8] = 2048;
  *&v169[10] = 8;
  LODWORD(v132) = 32;
  v57 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s strict_calloc(%zu, %zu) failed", v166, v132);

  if (!__nwlog_should_abort(v57))
  {
    free(v57);
    v53 = 0;
    goto LABEL_66;
  }

LABEL_157:
  __break(1u);
}

void sub_181AF812C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v47 - 128), 8);

  _Unwind_Resume(a1);
}

void *nw_read_request_list_remove_head(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_read_request_list_remove_head";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null head", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null head", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_read_request_list_remove_head";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null head, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null head, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null head, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v8)
    {
      free(v8);
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = v1[1];
  v4 = v2[1];
  v2[1] = 0;

  if (!v3)
  {
LABEL_5:
    v2[2] = 0;
LABEL_6:

    return v3;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v3[2] = v5;
    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  *buf = 136446210;
  v21 = "nw_read_request_list_remove_head";
  v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s head->tail == nil", buf, 12);

  result = __nwlog_should_abort(v13);
  if (!result)
  {
    free(v13);
    v5 = v2[2];
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_181AF85E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_read_request;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void nw_connection_add_read_request_on_queue(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  nw_context_assert_queue(*(v5 + 3));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZL39nw_connection_add_read_request_on_queueP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObjectb_block_invoke;
  v9[3] = &unk_1E6A3D738;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  os_unfair_lock_lock(v5 + 34);
  ___ZL39nw_connection_add_read_request_on_queueP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObjectb_block_invoke(v9);
  os_unfair_lock_unlock(v5 + 34);
  if (v13[3])
  {
    v8 = 89;
LABEL_8:
    nw_read_request_fail(v6, v8);
    goto LABEL_9;
  }

  if (!nw_endpoint_handler_add_read_request(v7[18], v6))
  {
    v8 = 57;
    goto LABEL_8;
  }

  if (a3 && (*(v7 + 109) & 0x40) != 0)
  {
    nw_endpoint_handler_service_reads(v7[18]);
  }

LABEL_9:

  _Block_object_dispose(&v12, 8);
}

uint64_t nw_endpoint_handler_add_read_request(void *a1, void *a2)
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      v8 = v7;
      if ((*(v7 + 35) & 2) == 0)
      {
        if (*(v7 + 96))
        {
          if (*(v7 + 108))
          {
            v9 = v4;
            v10 = v9;
            if (v9)
            {
              v11 = v9[18];

              if (v11)
              {
                if (v11 == &__block_literal_global_10_44685)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  LOBYTE(v111) = 0;
                  *type = 0;
                  v106 = type;
                  v107 = 0x2020000000;
                  v108 = 0;
                  v46 = *(v8 + 108);
                  v99[0] = MEMORY[0x1E69E9820];
                  v99[1] = 3221225472;
                  v99[2] = __nw_endpoint_handler_add_read_request_block_invoke;
                  v99[3] = &unk_1E6A2DB48;
                  v100 = v5;
                  v47 = v10;
                  v101 = v47;
                  v103 = buf;
                  v104 = type;
                  v48 = v8;
                  v102 = v48;
                  nw_hash_table_apply(v46, v99);
                  if (*(*&buf[8] + 24) == 1)
                  {
                    LOBYTE(request) = v106[24];
                  }

                  else
                  {
                    request_list_append = nw_read_request_list_append(v48[89], v47);
                    v60 = v48[89];
                    v48[89] = request_list_append;

                    LOBYTE(request) = 1;
                  }

                  _Block_object_dispose(type, 8);
                  _Block_object_dispose(buf, 8);
                  v11 = &__block_literal_global_10_44685;
                  goto LABEL_116;
                }

                node = nw_hash_table_get_node(*(v8 + 108), v11, 0);
                if (node)
                {
                  goto LABEL_10;
                }

                repliable_metadata = nw_content_context_copy_first_repliable_metadata(v11);
                if (repliable_metadata)
                {
                  v58 = nw_hash_table_get_node(*(v8 + 108), repliable_metadata, 1);

                  if (v58)
                  {
                    node = v58;
LABEL_10:
                    v13 = node[2];
                    request = nw_flow_add_read_request(v5, v13, v10);
                    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      logb = gconnectionLogObj;
                      if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v5);
                        v89 = nw_endpoint_handler_dry_run_string(v5);
                        v95 = nw_endpoint_handler_copy_endpoint(v5);
                        *buf = 136448514;
                        *&buf[4] = "nw_endpoint_handler_add_read_request";
                        *&buf[12] = 2082;
                        *&buf[14] = id_string;
                        *&buf[22] = 2082;
                        v111 = v89;
                        v112 = 2082;
                        logging_description = nw_endpoint_get_logging_description(v95);
                        v114 = 2082;
                        v115 = nw_endpoint_handler_state_string(v5);
                        v116 = 2082;
                        v117 = nw_endpoint_handler_mode_string(v5);
                        v118 = 2114;
                        v87 = nw_endpoint_handler_copy_current_path(v5);
                        v119 = v87;
                        v120 = 2112;
                        v121 = v10;
                        v122 = 2048;
                        v123 = v13;
                        v124 = 1024;
                        v125 = request;
                        _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added read request %@ to flow protocol %p: %u", buf, 0x62u);
                      }
                    }

                    nw_flow_service_reads(v5, v8, v13, 0);
                    goto LABEL_116;
                  }
                }

                nw_read_request_fail(v10, 2);
                goto LABEL_115;
              }

LABEL_161:
              LOBYTE(request) = nw_flow_add_read_request(v5, v8 + 376, v10);
              v11 = 0;
              goto LABEL_116;
            }

            v80 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_read_request_copy_repliable_context";
            v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null request", buf, 12);

            type[0] = OS_LOG_TYPE_ERROR;
            v109 = 0;
            if (__nwlog_fault(v81, type, &v109))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v82 = __nwlog_obj();
                v83 = type[0];
                if (os_log_type_enabled(v82, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null request", buf, 0xCu);
                }
              }

              else if (v109 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v82 = __nwlog_obj();
                v85 = type[0];
                v86 = os_log_type_enabled(v82, type[0]);
                if (backtrace_string)
                {
                  if (v86)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_read_request_copy_repliable_context";
                    *&buf[12] = 2082;
                    *&buf[14] = backtrace_string;
                    _os_log_impl(&dword_181A37000, v82, v85, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_159;
                }

                if (v86)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v85, "%{public}s called with null request, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v82 = __nwlog_obj();
                v88 = type[0];
                if (os_log_type_enabled(v82, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v88, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_159:
            if (v81)
            {
              free(v81);
            }

            goto LABEL_161;
          }

          v37 = v5;
          v38 = *(v37 + 284);

          if ((v38 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v11 = gconnectionLogObj;
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_115;
            }

            v39 = v37;

            v40 = v39;
            v41 = *(v37 + 284);

            if (v41)
            {
              v42 = "dry-run ";
            }

            else
            {
              v42 = "";
            }

            v43 = nw_endpoint_handler_copy_endpoint(v40);
            v44 = v43;
            if (v43)
            {
              v94 = _nw_endpoint_get_logging_description(v43);
            }

            else
            {
              v94 = "<NULL>";
            }

            loga = v42;
            id_str = v39->id_str;

            v61 = v40;
            v62 = v61;
            v63 = v61[30];
            if (v63 > 5)
            {
              v64 = "unknown-state";
            }

            else
            {
              v64 = off_1E6A31048[v63];
            }

            v65 = v62;
            v66 = v65;
            v67 = v5->mode;
            if (v67 > 2)
            {
              switch(v67)
              {
                case 3:
                  v68 = "proxy";
                  goto LABEL_114;
                case 4:
                  v68 = "fallback";
                  goto LABEL_114;
                case 5:
                  v68 = "transform";
                  goto LABEL_114;
              }
            }

            else
            {
              switch(v67)
              {
                case 0:
                  v68 = "path";
                  goto LABEL_114;
                case 1:
                  v68 = "resolver";
                  goto LABEL_114;
                case 2:
                  v68 = nw_endpoint_flow_mode_string(v65[33]);
LABEL_114:

                  v71 = v66;
                  os_unfair_lock_lock(v71 + 28);
                  v72 = v71[8];
                  os_unfair_lock_unlock(v71 + 28);

                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_handler_add_read_request";
                  *&buf[12] = 2082;
                  *&buf[14] = id_str;
                  *&buf[22] = 2082;
                  v111 = loga;
                  v112 = 2082;
                  logging_description = v94;
                  v114 = 2082;
                  v115 = v64;
                  v116 = 2082;
                  v117 = v68;
                  v118 = 2114;
                  v119 = v72;
                  _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot receive after flow table is released", buf, 0x48u);

                  goto LABEL_115;
              }
            }

            v68 = "unknown-mode";
            goto LABEL_114;
          }

LABEL_133:
          LOBYTE(request) = 0;
          goto LABEL_117;
        }

        v22 = nw_flow_add_read_request(v5, v7 + 376, v4);
LABEL_31:
        LOBYTE(request) = v22;
LABEL_117:

        goto LABEL_118;
      }

      v21 = *(v7 + 117);
      if (v21)
      {
        v22 = nw_endpoint_handler_add_read_request(v21, v4);
        goto LABEL_31;
      }

      v29 = v5;
      v30 = *(v29 + 284);

      if ((v30 & 0x40) != 0)
      {
        goto LABEL_133;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v31 = v29;

      v32 = v31;
      v33 = *(v29 + 284);

      if (v33)
      {
        v34 = "dry-run ";
      }

      else
      {
        v34 = "";
      }

      v35 = nw_endpoint_handler_copy_endpoint(v32);
      v36 = v35;
      if (v35)
      {
        v93 = _nw_endpoint_get_logging_description(v35);
      }

      else
      {
        v93 = "<NULL>";
      }

      log = v34;
      v90 = v31->id_str;

      v49 = v32;
      v50 = v49;
      v51 = v49[30];
      if (v51 > 5)
      {
        v52 = "unknown-state";
      }

      else
      {
        v52 = off_1E6A31048[v51];
      }

      v53 = v50;
      v54 = v53;
      v55 = v5->mode;
      if (v55 > 2)
      {
        switch(v55)
        {
          case 3:
            v56 = "proxy";
            goto LABEL_108;
          case 4:
            v56 = "fallback";
            goto LABEL_108;
          case 5:
            v56 = "transform";
            goto LABEL_108;
        }
      }

      else
      {
        switch(v55)
        {
          case 0:
            v56 = "path";
            goto LABEL_108;
          case 1:
            v56 = "resolver";
            goto LABEL_108;
          case 2:
            v56 = nw_endpoint_flow_mode_string(v53[33]);
LABEL_108:

            v69 = v54;
            os_unfair_lock_lock(v69 + 28);
            v70 = v69[8];
            os_unfair_lock_unlock(v69 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v90;
            *&buf[22] = 2082;
            v111 = log;
            v112 = 2082;
            logging_description = v93;
            v114 = 2082;
            v115 = v52;
            v116 = 2082;
            v117 = v56;
            v118 = 2114;
            v119 = v70;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot receive, no connected handler", buf, 0x48u);

LABEL_115:
            LOBYTE(request) = 0;
LABEL_116:

            goto LABEL_117;
        }
      }

      v56 = "unknown-mode";
      goto LABEL_108;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (mode > 5)
    {
      v16 = "unknown-mode";
    }

    else
    {
      v16 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_handler_add_read_request";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    *&buf[22] = 2082;
    v111 = "flow";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type[0] = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (__nwlog_fault(v17, type, &v109))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          if (mode > 5)
          {
            v20 = "unknown-mode";
          }

          else
          {
            v20 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v109 == 1)
      {
        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type[0];
        v25 = os_log_type_enabled(v18, type[0]);
        if (v23)
        {
          if (v25)
          {
            if (mode > 5)
            {
              v26 = "unknown-mode";
            }

            else
            {
              v26 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v26;
            *&buf[22] = 2082;
            v111 = "flow";
            v112 = 2082;
            logging_description = v23;
            _os_log_impl(&dword_181A37000, v18, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v23);
          if (!v17)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v25)
        {
          if (mode > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v27 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          if (mode > 5)
          {
            v28 = "unknown-mode";
          }

          else
          {
            v28 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v28;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_83:
    }
  }

  else
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_add_read_request";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null handler", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (__nwlog_fault(v17, type, &v109))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v75 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v75, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v109 == 1)
      {
        v76 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v77 = type[0];
        v78 = os_log_type_enabled(v18, type[0]);
        if (v76)
        {
          if (v78)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v76;
            _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v76);
          if (!v17)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v78)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v79 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v79, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_83;
    }
  }

  if (v17)
  {
LABEL_85:
    free(v17);
  }

LABEL_86:
  LOBYTE(request) = 0;
LABEL_118:

  return request & 1;
}

uint64_t nw_flow_add_read_request(void *a1, uint64_t a2, void *a3)
{
  v272 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v255 = "nw_flow_add_read_request";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v252 = 0;
    if (!__nwlog_fault(v21, &type, &v252))
    {
      goto LABEL_149;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v106 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v255 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v106, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_148;
    }

    if (v252 != 1)
    {
      v22 = __nwlog_obj();
      v112 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v255 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v112, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_148;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v110 = type;
    v111 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v111)
      {
        *buf = 136446210;
        v255 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v110, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_148;
    }

    if (v111)
    {
      *buf = 136446466;
      v255 = "nw_flow_add_read_request";
      v256 = 2082;
      v257 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v110, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_186;
  }

  v5 = a1;
  mode = v5->mode;

  if (mode == 2)
  {
    if (a3)
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_17387);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v246 = a3;
      v251 = nw_endpoint_handler_copy_flow(v5);
      if ((*(v251 + 34) & 8) != 0)
      {
        v7 = v5;
        v8 = *(v7 + 284);

        if ((v8 & 0x20) == 0)
        {
          v9 = v7;
          v10 = *(v7 + 284);

          if ((v10 & 0x40) != 0)
          {
            goto LABEL_69;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_68;
          }

          v12 = v9;

          v13 = v12;
          v14 = *(v7 + 284);

          if (v14)
          {
            v15 = "dry-run ";
          }

          else
          {
            v15 = "";
          }

          log = v11;
          v16 = nw_endpoint_handler_copy_endpoint(v13);
          v17 = v16;
          if (v16)
          {
            logging_description = _nw_endpoint_get_logging_description(v16);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v234 = a2;

          v32 = v13;
          v33 = v32;
          v34 = v32[30];
          if (v34 > 5)
          {
            v35 = "unknown-state";
          }

          else
          {
            v35 = off_1E6A31048[v34];
          }

          v36 = v33;
          v37 = v36;
          v38 = v5->mode;
          v39 = logging_description;
          if (v38 > 2)
          {
            switch(v38)
            {
              case 3:
                v40 = v15;
                v41 = "proxy";
                goto LABEL_67;
              case 4:
                v40 = v15;
                v41 = "fallback";
                goto LABEL_67;
              case 5:
                v40 = v15;
                v41 = "transform";
                goto LABEL_67;
            }
          }

          else
          {
            switch(v38)
            {
              case 0:
                v40 = v15;
                v41 = "path";
                goto LABEL_67;
              case 1:
                v40 = v15;
                v41 = "resolver";
                goto LABEL_67;
              case 2:
                v40 = v15;
                v41 = nw_endpoint_flow_mode_string(v36[33]);
LABEL_67:

                v42 = v37;
                os_unfair_lock_lock(v42 + 28);
                v43 = v42[8];
                os_unfair_lock_unlock(v42 + 28);

                v44 = v43;
                *buf = 136448258;
                v255 = "nw_flow_add_read_request";
                v256 = 2082;
                v257 = v12 + 184;
                v258 = 2082;
                v259 = v40;
                v260 = 2082;
                v261 = v39;
                v262 = 2082;
                v263 = v35;
                v264 = 2082;
                v265 = v41;
                v266 = 2114;
                v267 = v44;
                v268 = 2048;
                next_max_size = nw_read_request_get_next_max_size(v246);
                v270 = 2048;
                maximum_datagram_count = nw_read_request_get_maximum_datagram_count(v246);
                v11 = log;
                _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Read request submitted: %zu bytes, %zu datagrams", buf, 0x5Cu);

                a2 = v234;
LABEL_68:

                goto LABEL_69;
            }
          }

          v40 = v15;
          v41 = "unknown-mode";
          goto LABEL_67;
        }

        if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v7);
            v113 = nw_endpoint_handler_dry_run_string(v7);
            v235 = nw_endpoint_handler_copy_endpoint(v7);
            v114 = nw_endpoint_get_logging_description(v235);
            v115 = nw_endpoint_handler_state_string(v7);
            v116 = nw_endpoint_handler_mode_string(v7);
            v117 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v255 = "nw_flow_add_read_request";
            v256 = 2082;
            v257 = id_string;
            v258 = 2082;
            v259 = v113;
            v260 = 2082;
            v261 = v114;
            v262 = 2082;
            v263 = v115;
            v264 = 2082;
            v265 = v116;
            v266 = 2114;
            v267 = v117;
            v268 = 2048;
            next_max_size = nw_read_request_get_next_max_size(v246);
            v270 = 2048;
            maximum_datagram_count = nw_read_request_get_maximum_datagram_count(v246);
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Read request submitted: %zu bytes, %zu datagrams", buf, 0x5Cu);
          }

          goto LABEL_68;
        }
      }

LABEL_69:
      if (nw_flow_has_final_read(a2))
      {
        if (a2)
        {
          v45 = *(a2 + 312);
          if (v45 && !_nw_array_is_empty(v45))
          {
            v46 = *(a2 + 312);
            if (v46)
            {
              v47 = _nw_array_get_object_at_index(v46, 0);
              v46 = *(a2 + 312);
              v48 = v47;
            }

            else
            {
              v48 = 0;
            }

            if (v48)
            {
              if ((nw_flow_has_final_read(a2) & 1) == 0)
              {
                v64 = *(v48 + 16);
                if (v64 && v64 != &__block_literal_global_6_44667 && v64 != &__block_literal_global_44658 && v64 != &__block_literal_global_8_44676 && v64 != &__block_literal_global_10_44685)
                {
                  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v215 = gconnectionLogObj;
                    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
                    {
                      logd = nw_endpoint_handler_get_id_string(v5);
                      v238 = nw_endpoint_handler_dry_run_string(v5);
                      v216 = nw_endpoint_handler_copy_endpoint(v5);
                      v232 = nw_endpoint_get_logging_description(v216);
                      v217 = nw_endpoint_handler_state_string(v5);
                      v218 = nw_endpoint_handler_mode_string(v5);
                      v219 = nw_endpoint_handler_copy_current_path(v5);
                      v220 = *(v48 + 16);
                      *buf = 136448002;
                      v255 = "nw_flow_add_read_request";
                      v256 = 2082;
                      v257 = logd;
                      v258 = 2082;
                      v259 = v238;
                      v260 = 2082;
                      v261 = v232;
                      v262 = 2082;
                      v263 = v217;
                      v264 = 2082;
                      v265 = v218;
                      v266 = 2114;
                      v267 = v219;
                      v268 = 2048;
                      next_max_size = v220;
                      _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting final on non-static context %p", buf, 0x52u);
                    }
                  }

                  nw_content_context_set_is_final(*(v48 + 16), 1);
                }

                if ((*(v48 + 25) & 1) == 0 && *(v48 + 24) == 1 && !*(v48 + 32))
                {
                  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v221 = gconnectionLogObj;
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
                    {
                      loge = nw_endpoint_handler_get_id_string(v5);
                      v239 = nw_endpoint_handler_dry_run_string(v5);
                      v222 = nw_endpoint_handler_copy_endpoint(v5);
                      v233 = nw_endpoint_get_logging_description(v222);
                      v223 = nw_endpoint_handler_state_string(v5);
                      v224 = nw_endpoint_handler_mode_string(v5);
                      v225 = nw_endpoint_handler_copy_current_path(v5);
                      *buf = 136447746;
                      v255 = "nw_flow_add_read_request";
                      v256 = 2082;
                      v257 = loge;
                      v258 = 2082;
                      v259 = v239;
                      v260 = 2082;
                      v261 = v233;
                      v262 = 2082;
                      v263 = v223;
                      v264 = 2082;
                      v265 = v224;
                      v266 = 2114;
                      v267 = v225;
                      _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting is_complete on last final read", buf, 0x48u);
                    }
                  }

                  *(v48 + 25) = 1;
                }
              }

              v65 = *(v48 + 8);
              if (v65)
              {
                size = dispatch_data_get_size(v65);
              }

              else
              {
                size = 0;
              }

              v86 = *(v48 + 16);
              if (!v86)
              {
                v86 = &__block_literal_global_6_44667;
              }

              v87 = v86;
              request_receive = nw_read_request_receive(v246, *(v48 + 8), v87, *(v48 + 25), *(v48 + 32));
              if (size)
              {
                *(v251 + 134) += size;
                if ((*(v251 + 34) & 0x20) == 0)
                {
                  nw_context_count_input_bytes(*(a2 + 184), size);
                }
              }

              if (request_receive)
              {
                if (gLogDatapath && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v130 = gconnectionLogObj;
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
                  {
                    logb = nw_endpoint_handler_get_id_string(v5);
                    v236 = nw_endpoint_handler_dry_run_string(v5);
                    v131 = nw_endpoint_handler_copy_endpoint(v5);
                    v228 = nw_endpoint_get_logging_description(v131);
                    v132 = nw_endpoint_handler_state_string(v5);
                    v133 = nw_endpoint_handler_mode_string(v5);
                    v134 = nw_endpoint_handler_copy_current_path(v5);
                    v135 = dispatch_data_get_size(request_receive);
                    *buf = 136448258;
                    v255 = "nw_flow_add_read_request";
                    v256 = 2082;
                    v257 = logb;
                    v258 = 2082;
                    v259 = v236;
                    v260 = 2082;
                    v261 = v228;
                    v262 = 2082;
                    v263 = v132;
                    v264 = 2082;
                    v265 = v133;
                    v266 = 2114;
                    v267 = v134;
                    v268 = 2048;
                    next_max_size = size - v135;
                    v270 = 2048;
                    maximum_datagram_count = size;
                    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Consumed %zu/%zu final bytes", buf, 0x5Cu);
                  }
                }

                v89 = *(v48 + 16);
                v90 = *(v48 + 24);
                v91 = *(v48 + 25);
                v92 = *(v48 + 32);
                v93 = request_receive;
                v94 = v89;
                v95 = v92;
                if (!*(a2 + 312))
                {
                  v96 = _nw_array_create();
                  v97 = *(a2 + 312);
                  *(a2 + 312) = v96;
                }

                v98 = nw_flow_final_read_create(v93, v94, v90, v91, v95);
                v99 = *(a2 + 312);
                if (v99 && v98)
                {
                  _nw_array_prepend(v99, v98);
                }
              }

              else
              {
                if (gLogDatapath && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v210 = gconnectionLogObj;
                  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
                  {
                    logc = nw_endpoint_handler_get_id_string(v5);
                    v237 = nw_endpoint_handler_dry_run_string(v5);
                    v211 = nw_endpoint_handler_copy_endpoint(v5);
                    v231 = nw_endpoint_get_logging_description(v211);
                    v212 = nw_endpoint_handler_state_string(v5);
                    v213 = nw_endpoint_handler_mode_string(v5);
                    v214 = nw_endpoint_handler_copy_current_path(v5);
                    *buf = 136448002;
                    v255 = "nw_flow_add_read_request";
                    v256 = 2082;
                    v257 = logc;
                    v258 = 2082;
                    v259 = v237;
                    v260 = 2082;
                    v261 = v231;
                    v262 = 2082;
                    v263 = v212;
                    v264 = 2082;
                    v265 = v213;
                    v266 = 2114;
                    v267 = v214;
                    v268 = 2048;
                    next_max_size = size;
                    _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Consumed all %zu final bytes", buf, 0x52u);
                  }
                }

                *(a2 + 332) |= 0x80u;
              }

              request_list_report = nw_read_request_list_report(v246);
              v101 = request_list_report;
              if (request_list_report)
              {
                nw_read_request_fail(request_list_report, 57);
              }

              goto LABEL_145;
            }
          }

LABEL_220:
          v136 = v5;
          v137 = (*(v136 + 284) & 0x40) == 0;

          if (v137)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v247 = gconnectionLogObj;
            v138 = v136;

            v139 = v138;
            v140 = (*(v136 + 284) & 1) == 0;

            if (v140)
            {
              v141 = "";
            }

            else
            {
              v141 = "dry-run ";
            }

            v142 = nw_endpoint_handler_copy_endpoint(v139);
            v143 = v142;
            if (v142)
            {
              v144 = _nw_endpoint_get_logging_description(v142);
            }

            else
            {
              v144 = "<NULL>";
            }

            v145 = v139;
            v146 = v145[30];
            if (v146 > 5)
            {
              v147 = "unknown-state";
            }

            else
            {
              v147 = off_1E6A31048[v146];
            }

            loga = v145;

            v148 = loga;
            v149 = v148;
            v150 = v5->mode;
            if (v150 > 2)
            {
              if (v150 == 3)
              {
                v151 = "proxy";
                goto LABEL_246;
              }

              if (v150 != 4)
              {
                if (v150 == 5)
                {
                  v151 = "transform";
                  goto LABEL_246;
                }

                goto LABEL_243;
              }

              v151 = "fallback";
            }

            else
            {
              if (!v150)
              {
                v151 = "path";
                goto LABEL_246;
              }

              if (v150 != 1)
              {
                if (v150 == 2)
                {
                  v151 = nw_endpoint_flow_mode_string(*(v148 + 33));
                  goto LABEL_246;
                }

LABEL_243:
                v151 = "unknown-mode";
                goto LABEL_246;
              }

              v151 = "resolver";
            }

LABEL_246:

            v152 = v149;
            os_unfair_lock_lock(v152 + 28);
            v153 = *(v152 + 8);
            os_unfair_lock_unlock(v152 + 28);

            id_str = v138->id_str;
            *buf = 136447746;
            v255 = "nw_flow_add_read_request";
            v256 = 2082;
            v257 = id_str;
            v258 = 2082;
            v259 = v141;
            v260 = 2082;
            v261 = v144;
            v262 = 2082;
            v263 = v147;
            v264 = 2082;
            v265 = v151;
            v266 = 2114;
            v267 = v153;
            LODWORD(v226) = 72;
            v155 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v247, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read", buf, v226);

            type = OS_LOG_TYPE_ERROR;
            v252 = 0;
            if (!__nwlog_fault(v155, &type, &v252))
            {
              goto LABEL_316;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v156 = gconnectionLogObj;
              v157 = type;
              if (!os_log_type_enabled(v156, type))
              {
                goto LABEL_315;
              }

              v158 = v152;

              v159 = v158;
              v160 = (*(v136 + 284) & 1) == 0;

              if (v160)
              {
                v161 = "";
              }

              else
              {
                v161 = "dry-run ";
              }

              v162 = nw_endpoint_handler_copy_endpoint(v159);
              v163 = v162;
              v248 = v161;
              if (v162)
              {
                v229 = _nw_endpoint_get_logging_description(v162);
              }

              else
              {
                v229 = "<NULL>";
              }

              v189 = v159;
              v190 = v189;
              v191 = loga[30];
              if (v191 > 5)
              {
                v192 = "unknown-state";
              }

              else
              {
                v192 = off_1E6A31048[v191];
              }

              v193 = v190;
              v194 = v193;
              v195 = v5->mode;
              if (v195 > 2)
              {
                switch(v195)
                {
                  case 3:
                    v196 = "proxy";
                    goto LABEL_307;
                  case 4:
                    v196 = "fallback";
                    goto LABEL_307;
                  case 5:
                    v196 = "transform";
                    goto LABEL_307;
                }
              }

              else
              {
                switch(v195)
                {
                  case 0:
                    v196 = "path";
                    goto LABEL_307;
                  case 1:
                    v196 = "resolver";
                    goto LABEL_307;
                  case 2:
                    v196 = nw_endpoint_flow_mode_string(v193[33]);
LABEL_307:

                    v205 = v194;
                    os_unfair_lock_lock(v152 + 28);
                    v206 = *(v152 + 8);
                    os_unfair_lock_unlock(v152 + 28);

                    *buf = 136447746;
                    v255 = "nw_flow_add_read_request";
                    v256 = 2082;
                    v257 = id_str;
                    v258 = 2082;
                    v259 = v248;
                    v260 = 2082;
                    v261 = v229;
                    v262 = 2082;
                    v263 = v192;
                    v264 = 2082;
                    v265 = v196;
                    v266 = 2114;
                    v267 = v206;
                    _os_log_impl(&dword_181A37000, v156, v157, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read", buf, 0x48u);

                    goto LABEL_315;
                }
              }

              v196 = "unknown-mode";
              goto LABEL_307;
            }

            if (v252 == 1)
            {
              v164 = __nw_create_backtrace_string();
              if (v164)
              {
                v165 = v164;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v166 = gconnectionLogObj;
                v167 = type;
                if (os_log_type_enabled(v166, type))
                {
                  v168 = nw_endpoint_handler_get_id_string(v152);
                  v169 = nw_endpoint_handler_dry_run_string(v152);
                  v249 = nw_endpoint_handler_copy_endpoint(v152);
                  v170 = nw_endpoint_get_logging_description(v249);
                  v171 = nw_endpoint_handler_state_string(v152);
                  v172 = nw_endpoint_handler_mode_string(v152);
                  v173 = nw_endpoint_handler_copy_current_path(v152);
                  *buf = 136448002;
                  v255 = "nw_flow_add_read_request";
                  v256 = 2082;
                  v257 = v168;
                  v258 = 2082;
                  v259 = v169;
                  v260 = 2082;
                  v261 = v170;
                  v262 = 2082;
                  v263 = v171;
                  v264 = 2082;
                  v265 = v172;
                  v266 = 2114;
                  v267 = v173;
                  v268 = 2082;
                  next_max_size = v165;
                  _os_log_impl(&dword_181A37000, v166, v167, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, dumping backtrace:%{public}s", buf, 0x52u);
                }

                free(v165);
                goto LABEL_316;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v156 = gconnectionLogObj;
              v181 = type;
              if (os_log_type_enabled(v156, type))
              {
                v182 = nw_endpoint_handler_get_id_string(v152);
                v183 = nw_endpoint_handler_dry_run_string(v152);
                v184 = nw_endpoint_handler_copy_endpoint(v152);
                v185 = nw_endpoint_get_logging_description(v184);
                v186 = nw_endpoint_handler_state_string(v152);
                v187 = nw_endpoint_handler_mode_string(v152);
                v188 = nw_endpoint_handler_copy_current_path(v152);
                *buf = 136447746;
                v255 = "nw_flow_add_read_request";
                v256 = 2082;
                v257 = v182;
                v258 = 2082;
                v259 = v183;
                v260 = 2082;
                v261 = v185;
                v262 = 2082;
                v263 = v186;
                v264 = 2082;
                v265 = v187;
                v266 = 2114;
                v267 = v188;
                _os_log_impl(&dword_181A37000, v156, v181, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, no backtrace", buf, 0x48u);
              }

              goto LABEL_315;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v156 = gconnectionLogObj;
            v174 = type;
            if (!os_log_type_enabled(v156, type))
            {
LABEL_315:

LABEL_316:
              if (v155)
              {
                free(v155);
              }

              goto LABEL_318;
            }

            v175 = v152;

            v176 = v175;
            v177 = (*(v136 + 284) & 1) == 0;

            if (v177)
            {
              v178 = "";
            }

            else
            {
              v178 = "dry-run ";
            }

            v179 = nw_endpoint_handler_copy_endpoint(v176);
            v180 = v179;
            v250 = v178;
            if (v179)
            {
              v230 = _nw_endpoint_get_logging_description(v179);
            }

            else
            {
              v230 = "<NULL>";
            }

            v197 = v176;
            v198 = v197;
            v199 = loga[30];
            if (v199 > 5)
            {
              v200 = "unknown-state";
            }

            else
            {
              v200 = off_1E6A31048[v199];
            }

            v201 = v198;
            v202 = v201;
            v203 = v5->mode;
            if (v203 > 2)
            {
              switch(v203)
              {
                case 3:
                  v204 = "proxy";
                  goto LABEL_314;
                case 4:
                  v204 = "fallback";
                  goto LABEL_314;
                case 5:
                  v204 = "transform";
                  goto LABEL_314;
              }
            }

            else
            {
              switch(v203)
              {
                case 0:
                  v204 = "path";
                  goto LABEL_314;
                case 1:
                  v204 = "resolver";
                  goto LABEL_314;
                case 2:
                  v204 = nw_endpoint_flow_mode_string(v201[33]);
LABEL_314:

                  v207 = v202;
                  os_unfair_lock_lock(v152 + 28);
                  v208 = *(v152 + 8);
                  os_unfair_lock_unlock(v152 + 28);

                  *buf = 136447746;
                  v255 = "nw_flow_add_read_request";
                  v256 = 2082;
                  v257 = id_str;
                  v258 = 2082;
                  v259 = v250;
                  v260 = 2082;
                  v261 = v230;
                  v262 = 2082;
                  v263 = v200;
                  v264 = 2082;
                  v265 = v204;
                  v266 = 2114;
                  v267 = v208;
                  _os_log_impl(&dword_181A37000, v156, v174, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, backtrace limit exceeded", buf, 0x48u);

                  goto LABEL_315;
              }
            }

            v204 = "unknown-mode";
            goto LABEL_314;
          }

LABEL_318:
          v102 = 0;
          goto LABEL_319;
        }

        v120 = __nwlog_obj();
        *buf = 136446210;
        v255 = "nw_flow_remove_next_final_read";
        v121 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v120, 16, "%{public}s called with null flow_protocol", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v252 = 0;
        if (__nwlog_fault(v121, &type, &v252))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v122 = __nwlog_obj();
            v123 = type;
            if (os_log_type_enabled(v122, type))
            {
              *buf = 136446210;
              v255 = "nw_flow_remove_next_final_read";
              _os_log_impl(&dword_181A37000, v122, v123, "%{public}s called with null flow_protocol", buf, 0xCu);
            }
          }

          else
          {
            if (v252 == 1)
            {
              v125 = __nw_create_backtrace_string();
              v126 = __nwlog_obj();
              v127 = type;
              v128 = os_log_type_enabled(v126, type);
              if (v125)
              {
                if (v128)
                {
                  *buf = 136446466;
                  v255 = "nw_flow_remove_next_final_read";
                  v256 = 2082;
                  v257 = v125;
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v125);
              }

              else
              {
                if (v128)
                {
                  *buf = 136446210;
                  v255 = "nw_flow_remove_next_final_read";
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_218;
            }

            v122 = __nwlog_obj();
            v129 = type;
            if (os_log_type_enabled(v122, type))
            {
              *buf = 136446210;
              v255 = "nw_flow_remove_next_final_read";
              _os_log_impl(&dword_181A37000, v122, v129, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_218:
        if (v121)
        {
          free(v121);
        }

        goto LABEL_220;
      }

      v49 = v5;
      v50 = (v49->state & 0xFFFFFFFE) == 4;

      if (!v50)
      {
        if ((*(a2 + 332) & 0x80) == 0)
        {
          request_list_append = nw_read_request_list_append(*(a2 + 216), v246);
          v62 = *(a2 + 216);
          *(a2 + 216) = request_list_append;

LABEL_145:
          v102 = 1;
LABEL_319:

          return v102;
        }

        v63 = *(a2 + 320);
        if (v63)
        {
          nw_read_request_report_error_with_override(v246, 0, v63);
        }

        else
        {
          v67 = v49;
          v68 = (*(v67 + 284) & 0x40) == 0;

          if (v68)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v69 = gconnectionLogObj;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v70 = nw_endpoint_handler_get_id_string(v67);
              v71 = nw_endpoint_handler_dry_run_string(v67);
              v72 = nw_endpoint_handler_copy_endpoint(v67);
              v73 = nw_endpoint_get_logging_description(v72);
              v74 = nw_endpoint_handler_state_string(v67);
              v75 = nw_endpoint_handler_mode_string(v67);
              v76 = nw_endpoint_handler_copy_current_path(v67);
              *buf = 136447746;
              v255 = "nw_flow_add_read_request";
              v256 = 2082;
              v257 = v70;
              v258 = 2082;
              v259 = v71;
              v260 = 2082;
              v261 = v73;
              v262 = 2082;
              v263 = v74;
              v264 = 2082;
              v265 = v75;
              v266 = 2114;
              v267 = v76;
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already delivered final read, cannot accept read requests", buf, 0x48u);
            }
          }

          v77 = [[NWConcrete_nw_error alloc] initWithDomain:96 code:?];
          nw_read_request_report_error_with_override(v246, 0, v77);
        }

        goto LABEL_318;
      }

      v51 = v49;
      v52 = (*(v51 + 284) & 0x40) == 0;

      if (!v52)
      {
        goto LABEL_318;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v53 = gconnectionLogObj;
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
LABEL_158:

        goto LABEL_318;
      }

      v54 = v51;

      v55 = v54;
      v56 = (*(v51 + 284) & 1) == 0;

      if (v56)
      {
        v57 = "";
      }

      else
      {
        v57 = "dry-run ";
      }

      v58 = nw_endpoint_handler_copy_endpoint(v55);
      v59 = v58;
      if (v58)
      {
        v60 = _nw_endpoint_get_logging_description(v58);
      }

      else
      {
        v60 = "<NULL>";
      }

      v78 = v55;
      v79 = v78;
      state = v49->state;
      if (state > 5)
      {
        v81 = "unknown-state";
      }

      else
      {
        v81 = off_1E6A31048[state];
      }

      v82 = v79;
      v83 = v82;
      v84 = v5->mode;
      if (v84 > 2)
      {
        switch(v84)
        {
          case 3:
            v85 = "proxy";
            goto LABEL_157;
          case 4:
            v85 = "fallback";
            goto LABEL_157;
          case 5:
            v85 = "transform";
            goto LABEL_157;
        }
      }

      else
      {
        switch(v84)
        {
          case 0:
            v85 = "path";
            goto LABEL_157;
          case 1:
            v85 = "resolver";
            goto LABEL_157;
          case 2:
            v85 = nw_endpoint_flow_mode_string(v82[33]);
LABEL_157:

            v103 = v83;
            os_unfair_lock_lock(v103 + 28);
            v104 = v103[8];
            os_unfair_lock_unlock(v103 + 28);

            *buf = 136447746;
            v255 = "nw_flow_add_read_request";
            v256 = 2082;
            v257 = v54 + 184;
            v258 = 2082;
            v259 = v57;
            v260 = 2082;
            v261 = v60;
            v262 = 2082;
            v263 = v81;
            v264 = 2082;
            v265 = v85;
            v266 = 2114;
            v267 = v104;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] cannot accept read requests", buf, 0x48u);

            goto LABEL_158;
        }
      }

      v85 = "unknown-mode";
      goto LABEL_157;
    }

    v107 = __nwlog_obj();
    *buf = 136446210;
    v255 = "nw_flow_add_read_request";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null read_request", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v252 = 0;
    if (__nwlog_fault(v21, &type, &v252))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v108 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v255 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v108, "%{public}s called with null read_request", buf, 0xCu);
        }

LABEL_148:

        goto LABEL_149;
      }

      if (v252 != 1)
      {
        v22 = __nwlog_obj();
        v124 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v255 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v124, "%{public}s called with null read_request, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_148;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v118 = type;
      v119 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v119)
        {
          *buf = 136446210;
          v255 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v118, "%{public}s called with null read_request, no backtrace", buf, 0xCu);
        }

        goto LABEL_148;
      }

      if (v119)
      {
        *buf = 136446466;
        v255 = "nw_flow_add_read_request";
        v256 = 2082;
        v257 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v118, "%{public}s called with null read_request, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_186:

      free(backtrace_string);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (mode > 5)
    {
      v20 = "unknown-mode";
    }

    else
    {
      v20 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v255 = "nw_flow_add_read_request";
    v256 = 2082;
    v257 = v20;
    v258 = 2082;
    v259 = "flow";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v252 = 0;
    if (__nwlog_fault(v21, &type, &v252))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          if (mode > 5)
          {
            v24 = "unknown-mode";
          }

          else
          {
            v24 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v255 = "nw_flow_add_read_request";
          v256 = 2082;
          v257 = v24;
          v258 = 2082;
          v259 = "flow";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v252 == 1)
      {
        v25 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v26 = type;
        v27 = os_log_type_enabled(v22, type);
        if (v25)
        {
          if (v27)
          {
            if (mode > 5)
            {
              v28 = "unknown-mode";
            }

            else
            {
              v28 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v255 = "nw_flow_add_read_request";
            v256 = 2082;
            v257 = v28;
            v258 = 2082;
            v259 = "flow";
            v260 = 2082;
            v261 = v25;
            _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v25);
          if (!v21)
          {
            return 0;
          }

          goto LABEL_150;
        }

        if (v27)
        {
          if (mode > 5)
          {
            v31 = "unknown-mode";
          }

          else
          {
            v31 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v255 = "nw_flow_add_read_request";
          v256 = 2082;
          v257 = v31;
          v258 = 2082;
          v259 = "flow";
          _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v22, type))
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
          v255 = "nw_flow_add_read_request";
          v256 = 2082;
          v257 = v30;
          v258 = 2082;
          v259 = "flow";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_148;
    }
  }

LABEL_149:
  if (v21)
  {
LABEL_150:
    free(v21);
  }

  return 0;
}

OS_nw_array *nw_flow_has_final_read(nw_flow_protocol *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = a1->final_read_list;
    if (result)
    {
      return !_nw_array_is_empty(result);
    }

    return result;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_flow_has_final_read";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null flow_protocol", buf, 12);

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
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol";
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
            v12 = "nw_flow_has_final_read";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol, backtrace limit exceeded";
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

void *nw_read_request_list_append(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_read_request_list_append";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null request", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v11, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v39 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            v39 = "nw_read_request_list_append";
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v32, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (v33)
        {
          *buf = 136446210;
          v39 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v32, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v39 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v34, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_48:
    if (v11)
    {
      free(v11);
    }

    v21 = 0;
    goto LABEL_26;
  }

  if (v4[1])
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *buf = 136446210;
    v39 = "nw_read_request_list_append";
    v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s request->next != nil", buf, 12);

    result = __nwlog_should_abort(v16);
    if (result)
    {
      goto LABEL_51;
    }

    free(v16);
    if (!v5[2])
    {
LABEL_4:
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_24:
      v9 = v5;
      v3 = v9;
      if (v5[2])
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }
  }

  else if (!v4[2])
  {
    goto LABEL_4;
  }

  v18 = __nwlog_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  *buf = 136446210;
  v39 = "nw_read_request_list_append";
  LODWORD(v35) = 12;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s request->tail != nil", buf, v35);

  result = __nwlog_should_abort(v20);
  if (result)
  {
    goto LABEL_51;
  }

  free(v20);
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = v3[2];
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    if (!v8)
    {
LABEL_7:
      objc_storeStrong(v7, a2);
      v9 = 0;
      v3[2] = v5;
LABEL_8:
      v5[2] = v9;
      v9 = v3;
LABEL_25:
      v3 = v9;
      v21 = v3;
LABEL_26:

      return v21;
    }
  }

  else
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    *buf = 136446210;
    v39 = "nw_read_request_list_append";
    LODWORD(v35) = 12;
    v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s head->tail == nil", buf, v35);

    result = __nwlog_should_abort(v24);
    if (result)
    {
      goto LABEL_51;
    }

    free(v24);
    v25 = v3[2];
    v26 = *(v25 + 8);
    v7 = (v25 + 8);
    if (!v26)
    {
      goto LABEL_7;
    }
  }

  v27 = v7;
  v28 = __nwlog_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *buf = 136446210;
  v39 = "nw_read_request_list_append";
  LODWORD(v35) = 12;
  v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s tail->next != nil", buf, v35);

  result = __nwlog_should_abort(v30);
  if (!result)
  {
    free(v30);
    v7 = v27;
    goto LABEL_7;
  }

LABEL_51:
  __break(1u);
  return result;
}

void nw_connection_receive_internal(void *a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_connection_receive_internal";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v18, &type, &v34))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v37 = "nw_connection_receive_internal";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_42:
        free(v18);
        goto LABEL_7;
      }

      if (v25)
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v11)
  {
    v13 = nw_read_request_create(a3, a4, v10, v9, v11);
    if (v13)
    {
      nw_connection_add_read_request(v9, v13);
    }

    else
    {
      v14 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v15 = v9[48];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = ___ZL30nw_connection_receive_internalP24NWConcrete_nw_connectionPU32objcproto21OS_nw_content_context8NSObjectjjU13block_pointerFvPU27objcproto16OS_dispatch_dataS1_S3_bPU22objcproto11OS_nw_errorS1_E_block_invoke;
      v31[3] = &unk_1E6A3D710;
      v32 = v14;
      v33 = v12;
      v16 = v14;
      nw_connection_async_client_if_needed_with_override(v9, 0, v15, v31);
    }

    goto LABEL_7;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_connection_receive_internal";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null completion", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v18, &type, &v34))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null completion", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v34 != 1)
  {
    v19 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = type;
  v28 = os_log_type_enabled(v19, type);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null completion, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v28)
  {
    *buf = 136446466;
    v37 = "nw_connection_receive_internal";
    v38 = 2082;
    v39 = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_42;
  }

LABEL_7:
}

NWConcrete_nw_read_request *nw_read_request_create(unint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a2)
  {
    v14 = a1 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = a1;
  }

  if (!v12)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_read_request_create";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null completion", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v17, &type, &v50))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null completion", buf, 0xCu);
      }
    }

    else if (v50 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v47 = type;
      v48 = os_log_type_enabled(v44, type);
      if (backtrace_string)
      {
        if (v48)
        {
          *buf = 136446466;
          v53 = "nw_read_request_create";
          v54 = 2082;
          v55 = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_54;
      }

      if (v48)
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_54;
  }

  if (v15 <= a2)
  {
    if (v10)
    {
      v20 = v10;
      if (v20 == &__block_literal_global_10_44685)
      {
      }

      else
      {
        if (v20 == &__block_literal_global_8_44676 || v20 == &__block_literal_global_6_44667 || v20 == &__block_literal_global_44658)
        {

          goto LABEL_20;
        }

        v21 = v20;
        os_unfair_lock_lock(v20 + 28);
        v22 = BYTE2(v21[29]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v21 + 28);

        if ((v22 & 0x40) == 0)
        {
LABEL_20:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v53 = "nw_read_request_create";
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Cannot receive a reply for a protocol that does not support replies", buf, 0xCu);
          }

          goto LABEL_56;
        }
      }
    }

    v28 = objc_alloc_init(NWConcrete_nw_read_request);
    if (v28)
    {
      v29 = _Block_copy(v13);
      data_completion = v28->data_completion;
      v28->data_completion = v29;

      objc_storeStrong(&v28->connection, a4);
      v28->qos_class = qos_class_self();
      v28->min = v15;
      v28->max = a2;
      objc_storeStrong(&v28->repliable_message, a3);
      v28->variant = 1;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v31 = v28;
      goto LABEL_65;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v53 = "nw_read_request_create";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v33, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v36 = __nw_create_backtrace_string();
        if (v36)
        {
          v37 = v36;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446466;
            v53 = "nw_read_request_create";
            v54 = 2082;
            v55 = v37;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          if (!v33)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        v34 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v41, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v40 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v40, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v33)
    {
LABEL_65:

      goto LABEL_66;
    }

LABEL_64:
    free(v33);
    goto LABEL_65;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136446722;
  v53 = "nw_read_request_create";
  v54 = 2048;
  v55 = v15;
  v56 = 2048;
  v57 = a2;
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s minlength (%zu) > maxlength (%zu)", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (__nwlog_fault(v17, &type, &v50))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s minlength (%zu) > maxlength (%zu)", buf, 0x20u);
      }
    }

    else if (v50 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446978;
          v53 = "nw_read_request_create";
          v54 = 2048;
          v55 = v15;
          v56 = 2048;
          v57 = a2;
          v58 = 2082;
          v59 = v24;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s minlength (%zu) > maxlength (%zu), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v24);
        if (!v17)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v26)
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s minlength (%zu) > maxlength (%zu), no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s minlength (%zu) > maxlength (%zu), backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_54:
  if (v17)
  {
LABEL_55:
    free(v17);
  }

LABEL_56:
  v28 = 0;
LABEL_66:

  return v28;
}

void nw_connection_add_read_request(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke;
  v10[3] = &unk_1E6A3BE58;
  v5 = v3;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  os_unfair_lock_lock(v3 + 34);
  ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke(v10);
  os_unfair_lock_unlock(v3 + 34);
  if (*(v15 + 24) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke_2;
    v7[3] = &unk_1E6A3D760;
    v8 = v5;
    v9 = v6;
    nw_connection_async_if_needed(v8, v7);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_181AFDB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  _Block_object_dispose((v23 - 96), 8);

  _Unwind_Resume(a1);
}

void ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x20) != 0)
  {
    request_list_append = nw_read_request_list_append(*(v1 + 120), *(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = request_list_append;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void nw_flow_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_flow_output_available";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v11, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v29 = "nw_flow_output_available";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v20)
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_12;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    if (v7)
    {
      nw_flow_service_writes(v5, v7, handle);
LABEL_5:

      goto LABEL_12;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_flow_output_available";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v15, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v16, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "nw_flow_output_available";
            v30 = 2082;
            v31 = v22;
            _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_47;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v9 = "unknown-mode";
    }

    else
    {
      v9 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v29 = "nw_flow_output_available";
    v30 = 2082;
    v31 = v9;
    v32 = 2082;
    v33 = "flow";
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_12:
}

char *nw_path_copy_flow_for_registration(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_path_copy_flow_for_registration(v3, v4->registration_id);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_copy_flow_for_registration";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null flow_registration", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_copy_flow_for_registration";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_copy_flow_for_registration";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_copy_flow_for_registration";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

void nw_path_necp_check_for_updates(void *a1, _OWORD *a2, unsigned int a3)
{
  v159 = *MEMORY[0x1E69E9840];
  v5 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  v146 = v5;
  v142 = a3;
  size = (a3 << 9) + 1024;
  v140 = v152;
  globals_for_path = nw_context_get_globals_for_path(v5);
  memset(uu, 0, sizeof(uu));
  v144 = a2;
  if (!a2)
  {
    goto LABEL_4;
  }

  *uu = *a2;
  while (1)
  {
    bzero(v156, 0xC00uLL);
    nw_path_shared_necp_fd(v146);
    v6 = necp_client_action();
    v7 = 0;
    v8 = v156;
    if (v6 > 0)
    {
LABEL_31:
      v147 = v7;
      v21 = v6;
      if (v6 < 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_client_id";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        LODWORD(v137) = 22;
        v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s NECP buffer too short %zu", buf, v137);

        type = OS_LOG_TYPE_ERROR;
        v154 = 0;
        if (__nwlog_fault(v23, &type, &v154))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = type;
            if (os_log_type_enabled(v24, type))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s NECP buffer too short %zu", buf, 0x16u);
            }
          }

          else if (v154 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v48 = type;
            v49 = os_log_type_enabled(v24, type);
            if (backtrace_string)
            {
              if (v49)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v6;
                *&buf[22] = 2082;
                *&buf[24] = backtrace_string;
                _os_log_impl(&dword_181A37000, v24, v48, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              if (!v23)
              {
LABEL_114:
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v61 = gLogObj;
                *buf = 136446466;
                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                *&buf[12] = 2048;
                *&buf[14] = v6;
                LODWORD(v138) = 22;
                v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s NECP buffer too short %zu", buf, v138);

                type = OS_LOG_TYPE_ERROR;
                v154 = 0;
                if ((__nwlog_fault(v62, &type, &v154) & 1) == 0)
                {
                  goto LABEL_131;
                }

                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v63 = gLogObj;
                  v64 = type;
                  if (os_log_type_enabled(v63, type))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v63, v64, "%{public}s NECP buffer too short %zu", buf, 0x16u);
                  }
                }

                else if (v154 == 1)
                {
                  v65 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v63 = gLogObj;
                  v66 = type;
                  v67 = os_log_type_enabled(v63, type);
                  if (v65)
                  {
                    if (v67)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                      *&buf[12] = 2048;
                      *&buf[14] = v6;
                      *&buf[22] = 2082;
                      *&buf[24] = v65;
                      _os_log_impl(&dword_181A37000, v63, v66, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v65);
                    if (!v62)
                    {
                      goto LABEL_209;
                    }

                    goto LABEL_132;
                  }

                  if (v67)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v63, v66, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v63 = gLogObj;
                  v68 = type;
                  if (os_log_type_enabled(v63, type))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v63, v68, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
                  }
                }

LABEL_130:

                goto LABEL_131;
              }

LABEL_113:
              free(v23);
              goto LABEL_114;
            }

            if (v49)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v24, v48, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(v24, type))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v24, v54, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
            }
          }
        }

        if (!v23)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      v26 = 0;
      v27 = v6 - 5;
      v28 = v8 + 1;
      v145 = v8 + 5;
      v149 = v27;
      v150 = v8;
      v148 = v8 + 1;
      while (1)
      {
        if (v26 > v27)
        {
          v42 = v26;
          if (v26 == v6)
          {
            goto LABEL_143;
          }

          goto LABEL_233;
        }

        v29 = v8[v26];
        v30 = *&v28[v26];
        if (!v30)
        {
          v36 = 0;
          goto LABEL_67;
        }

        if (v30 <= 0xFFFFFFF9 && v6 >= (v30 + 5) && v6 - (v30 + 5) >= v26)
        {
          v36 = &v145[v26];
          goto LABEL_67;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        *buf = 136446978;
        *&buf[4] = "nw_necp_buffer_get_tlv_value";
        *&buf[12] = 2048;
        *&buf[14] = v26;
        *&buf[22] = 2048;
        *&buf[24] = v6;
        *&buf[32] = 1024;
        *&buf[34] = v30;
        LODWORD(v137) = 38;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v137);

        type = OS_LOG_TYPE_ERROR;
        v154 = 0;
        if (__nwlog_fault(v33, &type, &v154))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v35 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v30;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
            }
          }

          else if (v154 == 1)
          {
            v37 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v38 = type;
            v39 = os_log_type_enabled(v34, type);
            if (v37)
            {
              if (v39)
              {
                *buf = 136447234;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v26;
                *&buf[22] = 2048;
                *&buf[24] = v6;
                *&buf[32] = 1024;
                *&buf[34] = v30;
                *&buf[38] = 2082;
                *&buf[40] = v37;
                _os_log_impl(&dword_181A37000, v34, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
              }

              free(v37);
              if (!v33)
              {
                goto LABEL_66;
              }

LABEL_65:
              free(v33);
              goto LABEL_66;
            }

            if (v39)
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v30;
              _os_log_impl(&dword_181A37000, v34, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v40 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v30;
              _os_log_impl(&dword_181A37000, v34, v40, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
            }
          }
        }

        if (v33)
        {
          goto LABEL_65;
        }

LABEL_66:
        v36 = 0;
        v27 = v6 - 5;
        v8 = v150;
        v28 = v148;
LABEL_67:
        v41 = v30 + 5;
        v42 = v30 + 5 + v26;
        if (v42 > v6)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          *buf = 136446978;
          *&buf[4] = "nw_path_parse_necp_client_id";
          *&buf[12] = 2048;
          *&buf[14] = v30 + 5;
          *&buf[22] = 2048;
          *&buf[24] = v26;
          *&buf[32] = 2048;
          *&buf[34] = v6;
          LODWORD(v137) = 42;
          v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, v137);

          type = OS_LOG_TYPE_ERROR;
          v154 = 0;
          if (__nwlog_fault(v51, &type, &v154))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v53 = type;
              if (os_log_type_enabled(v52, type))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v30 + 5;
                *&buf[22] = 2048;
                *&buf[24] = v26;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v52, v53, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, 0x2Au);
              }

              goto LABEL_139;
            }

            if (v154 == 1)
            {
              v58 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v59 = type;
              v60 = os_log_type_enabled(v52, type);
              if (v58)
              {
                if (v60)
                {
                  *buf = 136447234;
                  *&buf[4] = "nw_path_parse_necp_client_id";
                  *&buf[12] = 2048;
                  *&buf[14] = v41;
                  *&buf[22] = 2048;
                  *&buf[24] = v26;
                  *&buf[32] = 2048;
                  *&buf[34] = v6;
                  *&buf[42] = 2082;
                  *&buf[44] = v58;
                  _os_log_impl(&dword_181A37000, v52, v59, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v58);
                if (!v51)
                {
LABEL_142:
                  v27 = v6 - 5;
                  v8 = v150;
                  v28 = v148;
                  if (v42 == v6)
                  {
                    goto LABEL_143;
                  }

LABEL_233:
                  v111 = __nwlog_obj();
                  *buf = 136446722;
                  *&buf[4] = "nw_path_parse_necp_client_id";
                  *&buf[12] = 2048;
                  *&buf[14] = v42;
                  *&buf[22] = 2048;
                  *&buf[24] = v6;
                  LODWORD(v137) = 32;
                  v112 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s cursor has unexpected value %zu != %zu", buf, v137);

                  type = OS_LOG_TYPE_ERROR;
                  v154 = 0;
                  if (__nwlog_fault(v112, &type, &v154))
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      v113 = __nwlog_obj();
                      v114 = type;
                      if (os_log_type_enabled(v113, type))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v42;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v113, v114, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
                      }

                      goto LABEL_293;
                    }

                    if (v154 == 1)
                    {
                      v121 = __nw_create_backtrace_string();
                      v113 = __nwlog_obj();
                      v122 = type;
                      v123 = os_log_type_enabled(v113, type);
                      if (v121)
                      {
                        if (v123)
                        {
                          *buf = 136446978;
                          *&buf[4] = "nw_path_parse_necp_client_id";
                          *&buf[12] = 2048;
                          *&buf[14] = v42;
                          *&buf[22] = 2048;
                          *&buf[24] = v6;
                          *&buf[32] = 2082;
                          *&buf[34] = v121;
                          _os_log_impl(&dword_181A37000, v113, v122, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v121);
                        goto LABEL_294;
                      }

                      if (v123)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v42;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v113, v122, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v113 = __nwlog_obj();
                      v135 = type;
                      if (os_log_type_enabled(v113, type))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v42;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v113, v135, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
                      }
                    }

LABEL_293:
                  }

LABEL_294:
                  if (v112)
                  {
                    free(v112);
                  }

                  v27 = v6 - 5;
                  v8 = v150;
                  v28 = v148;
LABEL_143:
                  v70 = 0;
                  while (2)
                  {
                    v71 = v8[v70];
                    v72 = *&v28[v70];
                    if (!v72 || v72 <= 0xFFFFFFF9 && (v21 >= v72 + 5 ? (v73 = v21 - (v72 + 5) >= v70) : (v73 = 0), v73))
                    {
LABEL_170:
                      v83 = v72 + 5;
                      v84 = v72 + 5 + v70;
                      if (v84 > v21)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v85 = gLogObj;
                        *buf = 136446978;
                        *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                        *&buf[12] = 2048;
                        *&buf[14] = v72 + 5;
                        *&buf[22] = 2048;
                        *&buf[24] = v70;
                        *&buf[32] = 2048;
                        *&buf[34] = v21;
                        LODWORD(v137) = 42;
                        v86 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, v137);

                        type = OS_LOG_TYPE_ERROR;
                        v154 = 0;
                        if (__nwlog_fault(v86, &type, &v154))
                        {
                          if (type == OS_LOG_TYPE_FAULT)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v87 = gLogObj;
                            v88 = type;
                            if (os_log_type_enabled(v87, type))
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v83;
                              *&buf[22] = 2048;
                              *&buf[24] = v70;
                              *&buf[32] = 2048;
                              *&buf[34] = v21;
                              _os_log_impl(&dword_181A37000, v87, v88, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, 0x2Au);
                            }

                            goto LABEL_205;
                          }

                          if (v154 == 1)
                          {
                            v95 = __nw_create_backtrace_string();
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v87 = gLogObj;
                            v96 = type;
                            v97 = os_log_type_enabled(v87, type);
                            if (v95)
                            {
                              if (v97)
                              {
                                *buf = 136447234;
                                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                *&buf[12] = 2048;
                                *&buf[14] = v83;
                                *&buf[22] = 2048;
                                *&buf[24] = v70;
                                *&buf[32] = 2048;
                                *&buf[34] = v21;
                                *&buf[42] = 2082;
                                *&buf[44] = v95;
                                _os_log_impl(&dword_181A37000, v87, v96, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v95);
                              if (!v86)
                              {
LABEL_208:
                                if (v84 == v21)
                                {
                                  goto LABEL_209;
                                }

                                v116 = __nwlog_obj();
                                *buf = 136446722;
                                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                *&buf[12] = 2048;
                                *&buf[14] = v84;
                                *&buf[22] = 2048;
                                *&buf[24] = v21;
                                LODWORD(v137) = 32;
                                v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v116, 16, "%{public}s cursor has unexpected value %zu != %zu", buf, v137);

                                type = OS_LOG_TYPE_ERROR;
                                v154 = 0;
                                if (__nwlog_fault(v62, &type, &v154))
                                {
                                  if (type == OS_LOG_TYPE_FAULT)
                                  {
                                    v63 = __nwlog_obj();
                                    v117 = type;
                                    if (os_log_type_enabled(v63, type))
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v84;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v21;
                                      _os_log_impl(&dword_181A37000, v63, v117, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
                                    }

                                    goto LABEL_130;
                                  }

                                  if (v154 != 1)
                                  {
                                    v63 = __nwlog_obj();
                                    v136 = type;
                                    if (os_log_type_enabled(v63, type))
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v84;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v21;
                                      _os_log_impl(&dword_181A37000, v63, v136, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
                                    }

                                    goto LABEL_130;
                                  }

                                  v124 = __nw_create_backtrace_string();
                                  v63 = __nwlog_obj();
                                  v125 = type;
                                  v126 = os_log_type_enabled(v63, type);
                                  if (!v124)
                                  {
                                    if (v126)
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v84;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v21;
                                      _os_log_impl(&dword_181A37000, v63, v125, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
                                    }

                                    goto LABEL_130;
                                  }

                                  if (v126)
                                  {
                                    *buf = 136446978;
                                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v84;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v21;
                                    *&buf[32] = 2082;
                                    *&buf[34] = v124;
                                    _os_log_impl(&dword_181A37000, v63, v125, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
                                  }

                                  free(v124);
                                  if (v62)
                                  {
                                    goto LABEL_132;
                                  }

LABEL_209:
                                  v99 = v144;
                                  v100 = v147;
                                  if (v147)
                                  {
LABEL_210:
                                    free(v100);
                                  }

                                  goto LABEL_211;
                                }

LABEL_131:
                                if (!v62)
                                {
                                  goto LABEL_209;
                                }

LABEL_132:
                                free(v62);
                                goto LABEL_209;
                              }

LABEL_207:
                              free(v86);
                              goto LABEL_208;
                            }

                            if (v97)
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v83;
                              *&buf[22] = 2048;
                              *&buf[24] = v70;
                              *&buf[32] = 2048;
                              *&buf[34] = v21;
                              _os_log_impl(&dword_181A37000, v87, v96, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x2Au);
                            }
                          }

                          else
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v87 = gLogObj;
                            v98 = type;
                            if (os_log_type_enabled(v87, type))
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v83;
                              *&buf[22] = 2048;
                              *&buf[24] = v70;
                              *&buf[32] = 2048;
                              *&buf[34] = v21;
                              _os_log_impl(&dword_181A37000, v87, v98, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x2Au);
                            }
                          }

LABEL_205:
                        }

                        if (!v86)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_207;
                      }

                      if (v71 == 20)
                      {
                        if (nw_context_copy_implicit_context::onceToken[0] != -1)
                        {
                          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
                        }

                        v89 = nw_context_copy_implicit_context::implicit_context;
                        v90 = v89 == v146;

                        if (v90)
                        {
                          type = OS_LOG_TYPE_DEFAULT;
                          if (nw_path_create_bridged_flow_director(v146, &type))
                          {
                            if (type != OS_LOG_TYPE_INFO)
                            {
                              goto LABEL_209;
                            }

                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v91 = gLogObj;
                            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_path_necp_check_for_updates";
                              v92 = "%{public}s In-process flow divert director created";
                              v93 = v91;
                              v94 = OS_LOG_TYPE_DEFAULT;
                              goto LABEL_197;
                            }
                          }

                          else
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v91 = gLogObj;
                            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_path_necp_check_for_updates";
                              v92 = "%{public}s Failed to create in-process flow divert director";
                              v93 = v91;
                              v94 = OS_LOG_TYPE_ERROR;
LABEL_197:
                              _os_log_impl(&dword_181A37000, v93, v94, v92, buf, 0xCu);
                            }
                          }

                          goto LABEL_209;
                        }

                        goto LABEL_209;
                      }

                      v70 += v72 + 5;
                      if (v84 > v27)
                      {
                        goto LABEL_208;
                      }

                      continue;
                    }

                    break;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v74 = gLogObj;
                  *buf = 136446978;
                  *&buf[4] = "nw_necp_buffer_get_tlv_value";
                  *&buf[12] = 2048;
                  *&buf[14] = v70;
                  *&buf[22] = 2048;
                  *&buf[24] = v21;
                  *&buf[32] = 1024;
                  *&buf[34] = v72;
                  LODWORD(v137) = 38;
                  v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v137);

                  type = OS_LOG_TYPE_ERROR;
                  v154 = 0;
                  if (__nwlog_fault(v75, &type, &v154))
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v76 = gLogObj;
                      v77 = type;
                      if (os_log_type_enabled(v76, type))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v70;
                        *&buf[22] = 2048;
                        *&buf[24] = v21;
                        *&buf[32] = 1024;
                        *&buf[34] = v72;
                        _os_log_impl(&dword_181A37000, v76, v77, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
                      }

                      goto LABEL_154;
                    }

                    if (v154 == 1)
                    {
                      v78 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v79 = gLogObj;
                      v80 = type;
                      v81 = os_log_type_enabled(v79, type);
                      if (v78)
                      {
                        if (v81)
                        {
                          *buf = 136447234;
                          *&buf[4] = "nw_necp_buffer_get_tlv_value";
                          *&buf[12] = 2048;
                          *&buf[14] = v70;
                          *&buf[22] = 2048;
                          *&buf[24] = v21;
                          *&buf[32] = 1024;
                          *&buf[34] = v72;
                          *&buf[38] = 2082;
                          *&buf[40] = v78;
                          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
                        }

                        free(v78);
                        if (!v75)
                        {
LABEL_169:
                          v27 = v149;
                          v8 = v150;
                          v28 = v148;
                          goto LABEL_170;
                        }

LABEL_168:
                        free(v75);
                        goto LABEL_169;
                      }

                      if (v81)
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v70;
                        *&buf[22] = 2048;
                        *&buf[24] = v21;
                        *&buf[32] = 1024;
                        *&buf[34] = v72;
                        _os_log_impl(&dword_181A37000, v79, v80, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
                      }
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v76 = gLogObj;
                      v82 = type;
                      if (os_log_type_enabled(v76, type))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v70;
                        *&buf[22] = 2048;
                        *&buf[24] = v21;
                        *&buf[32] = 1024;
                        *&buf[34] = v72;
                        _os_log_impl(&dword_181A37000, v76, v82, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
                      }

LABEL_154:
                    }
                  }

                  if (!v75)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_168;
                }

LABEL_141:
                free(v51);
                goto LABEL_142;
              }

              if (v60)
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v41;
                *&buf[22] = 2048;
                *&buf[24] = v26;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v52, v59, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x2Au);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v69 = type;
              if (os_log_type_enabled(v52, type))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v30 + 5;
                *&buf[22] = 2048;
                *&buf[24] = v26;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v52, v69, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x2Au);
              }
            }

LABEL_139:
          }

          if (!v51)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }

        v44 = v30 == 16 && v36 != 0 && v29 == 1;
        v26 += v30 + 5;
        if (v44)
        {
          *uu = *v36;
          os_unfair_lock_lock((globals_for_path + 116));
          if (*globals_for_path == *uu && *(globals_for_path + 8) == *&uu[8])
          {
            v45 = *(globals_for_path + 48);
            if (v45)
            {
              v46 = _nw_array_copy(v45);
            }

            else
            {
              v46 = _nw_array_create();
            }

            os_unfair_lock_unlock((globals_for_path + 116));
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 1;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            v152[0] = ___ZL30nw_path_necp_check_for_updatesPU24objcproto13OS_nw_context8NSObjectPA16_hj_block_invoke_2;
            v152[1] = &unk_1E6A39C98;
            v152[3] = uu;
            v152[4] = v150;
            v153 = v6;
            v152[2] = buf;
            if (v46)
            {
              _nw_array_apply(v46, aBlock);
            }

            _Block_object_dispose(buf, 8);
          }

          else if (*(globals_for_path + 32))
          {
            memset(buf, 0, 37);
            uuid_unparse(uu, buf);
            v55 = nw_dictionary_copy_value(*(globals_for_path + 32), buf);
            v56 = v55;
            if (v55 && v55[10] == *uu && v55[11] == *&uu[8])
            {
              v57 = v55;
              os_unfair_lock_unlock((globals_for_path + 116));
              nw_path_necp_update_evaluator(v57, v150, v6, 1);
            }

            else
            {
              os_unfair_lock_unlock((globals_for_path + 116));
              v57 = 0;
            }
          }

          else
          {
            os_unfair_lock_unlock((globals_for_path + 116));
          }

          goto LABEL_209;
        }
      }
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = **(StatusReg + 8);
    if (v142 < 5 || v10 != 22)
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = v142;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s Trying to copy result again for %u flows", buf, 0x12u);
    }

    if (!size)
    {
      v118 = __nwlog_obj();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = 3;
      }

      else
      {
        v119 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_path_necp_check_for_updates";
      LODWORD(v137) = 12;
      v120 = _os_log_send_and_compose_impl(v119, 0, 0, 0, &dword_181A37000, v118, 16, "%{public}s strict_calloc called with size 0", buf, v137, v140);

      if (__nwlog_should_abort(v120))
      {
LABEL_300:
        __break(1u);
      }

      free(v120);
    }

    v7 = malloc_type_calloc(1uLL, size, 0xE55C7F8DuLL);
    if (!v7)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_path_necp_check_for_updates";
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = size;
      LODWORD(v137) = 32;
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v137);

      if (__nwlog_should_abort(v15))
      {
        goto LABEL_300;
      }

      free(v15);
    }

    nw_path_shared_necp_fd(v146);
    v6 = necp_client_action();
    if (v6 <= 0)
    {
      break;
    }

LABEL_30:
    v8 = v7;
    if (v7)
    {
      goto LABEL_31;
    }

    v104 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_client_id";
    LODWORD(v137) = 12;
    v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s called with null result", buf, v137);

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v105, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v106 = __nwlog_obj();
        v107 = type;
        if (os_log_type_enabled(v106, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null result", buf, 0xCu);
        }

LABEL_264:

        goto LABEL_265;
      }

      if (v154 != 1)
      {
        v106 = __nwlog_obj();
        v115 = type;
        if (os_log_type_enabled(v106, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v106, v115, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_264;
      }

      v108 = __nw_create_backtrace_string();
      v106 = __nwlog_obj();
      v109 = type;
      v110 = os_log_type_enabled(v106, type);
      if (!v108)
      {
        if (v110)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }

        goto LABEL_264;
      }

      if (v110)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_client_id";
        *&buf[12] = 2082;
        *&buf[14] = v108;
        _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v108);
    }

LABEL_265:
    if (v105)
    {
      free(v105);
    }

    v127 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
    LODWORD(v139) = 12;
    v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v127, 16, "%{public}s called with null result", buf, v139);

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (__nwlog_fault(v128, &type, &v154))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v129 = __nwlog_obj();
        v130 = type;
        if (os_log_type_enabled(v129, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null result", buf, 0xCu);
        }

LABEL_282:

        goto LABEL_283;
      }

      if (v154 != 1)
      {
        v129 = __nwlog_obj();
        v134 = type;
        if (os_log_type_enabled(v129, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v129, v134, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_282;
      }

      v131 = __nw_create_backtrace_string();
      v129 = __nwlog_obj();
      v132 = type;
      v133 = os_log_type_enabled(v129, type);
      if (!v131)
      {
        if (v133)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v129, v132, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }

        goto LABEL_282;
      }

      if (v133)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_message_request_in_process_flow_divert";
        *&buf[12] = 2082;
        *&buf[14] = v131;
        _os_log_impl(&dword_181A37000, v129, v132, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v131);
    }

LABEL_283:
    v99 = v144;
    if (v128)
    {
      v100 = v128;
      goto LABEL_210;
    }

LABEL_211:
    if (v99)
    {
      goto LABEL_222;
    }

    memset(uu, 0, sizeof(uu));
LABEL_4:
    uuid_clear(uu);
  }

  v10 = **(StatusReg + 8);
  if (v7)
  {
    free(v7);
  }

LABEL_20:
  if (v10 != 22)
  {
    goto LABEL_218;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = "nw_path_necp_check_for_updates";
    *&buf[12] = 1024;
    *&buf[14] = 48;
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s Trying to copy result again for %d flows (max)", buf, 0x12u);
  }

  v7 = malloc_type_calloc(1uLL, 0x6400uLL, 0x537AB219uLL);
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_path_necp_check_for_updates";
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&buf[24] = 25600;
    LODWORD(v137) = 32;
    v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v137);

    if (__nwlog_should_abort(v20))
    {
      goto LABEL_300;
    }

    free(v20);
  }

  nw_path_shared_necp_fd(v146);
  v6 = necp_client_action();
  if (v6 > 0)
  {
    goto LABEL_30;
  }

  v10 = **(StatusReg + 8);
  if (v7)
  {
    free(v7);
  }

  if (v10 == 22)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v101 = gLogObj;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = 22;
      v102 = v101;
      v103 = OS_LOG_TYPE_ERROR;
      goto LABEL_220;
    }
  }

  else
  {
LABEL_218:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v101 = gLogObj;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v102 = v101;
      v103 = OS_LOG_TYPE_DEBUG;
LABEL_220:
      _os_log_impl(&dword_181A37000, v102, v103, "%{public}s Failed to copy updated result (%d)", buf, 0x12u);
    }
  }

LABEL_222:
}

void sub_181B00F38()
{
  _Block_object_dispose((v1 - 160), 8);

  JUMPOUT(0x181B00F70);
}

uint64_t nw_bucket_to_throughput(unsigned int a1)
{
  v1 = -1;
  if (a1 <= 0x30)
  {
    v1 = 1 << (a1 + 15);
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_181B00FA8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v49 - v7;
  v8 = sub_182AD2738();
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v49 - v11;
  v1[3] = xmmword_182AE8E90;
  v13 = *(v12 + 56);
  v53 = qword_1ED411A90;
  v50 = v13;
  v51 = v12 + 56;
  v13(v1 + qword_1ED411A90, 1, 1, v8);
  v64 = qword_1ED411A88;
  *(v1 + qword_1ED411A88) = 0;
  v14 = v1 + *(*v1 + 128);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v14 + 5) = 2;
  v15 = *(*v1 + 136);
  *(v1 + v15) = 0;
  v16 = *(*v1 + 144);
  *(v2 + v16) = 0;
  v17 = v2 + *(*v2 + 152);
  *v17 = 0;
  v17[8] = 1;
  v18 = v2 + *(*v2 + 160);
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(*v2 + 168));
  *v19 = 0;
  v19[1] = 0;
  v62 = *(*v2 + 176);
  *(v2 + v62) = 0;
  v63 = *(*v2 + 184);
  *(v2 + v63) = 0;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  *(v2 + 8) = *(a1 + 16);
  v59 = v21;
  v60 = v20;
  *(v2 + 3) = v20;
  *(v2 + 4) = v21;
  v58 = v22;
  *(v2 + 40) = v22;
  v23 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v24 = *(v23 + 4);
  v25 = *(v23 + 5);
  v26 = *v23;
  v55 = v23[1];
  v56 = v26;
  swift_beginAccess();
  v27 = v55;
  *v14 = v56;
  *(v14 + 1) = v27;
  *(v14 + 4) = v24;
  *(v14 + 5) = v25;
  v28 = v57;
  v29 = *(*a1 + 136);
  swift_beginAccess();
  v30 = *(a1 + v29);
  swift_beginAccess();
  *(v2 + v15) = v30;
  v31 = *(*a1 + 144);
  swift_beginAccess();
  v32 = *(a1 + v31);
  swift_beginAccess();
  *(v2 + v16) = v32;
  v33 = qword_1ED411A90;
  swift_beginAccess();
  v34 = a1 + v33;
  v35 = v61;
  sub_181AB5D28(v34, v61, &qword_1EA838E00, &qword_182AFE8E0);
  v36 = v8;
  if ((*(v28 + 48))(v35, 1, v8) == 1)
  {
    sub_181F49A24(v60, v59, v58);

    v37 = v30;
    sub_181F49A88(v35, &qword_1EA838E00, &qword_182AFE8E0);
  }

  else
  {
    *&v56 = v30;
    v38 = *(v28 + 32);
    v39 = v49;
    v38(v49, v35, v36);
    sub_181F49A24(v60, v59, v58);

    v40 = v56;
    v41 = v52;
    sub_182AD2728();
    sub_182AD2718();
    (*(v28 + 8))(v39, v36);
    v42 = v54;
    v38(v54, v41, v36);
    v50(v42, 0, 1, v36);
    v43 = v53;
    swift_beginAccess();
    sub_181B2D2D8(v42, v2 + v43);
    swift_endAccess();
  }

  *(v2 + v64) = *(a1 + qword_1ED411A88);
  v44 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v62;
  swift_beginAccess();
  *(v2 + v45) = v44;
  v46 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v63;
  swift_beginAccess();
  *(v2 + v47) = v46;
  return v2;
}

BOOL sub_181B0159C(uint64_t a1)
{
  v2 = v1;
  *&v51 = sub_182AD2738();
  v52.i64[0] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0, &unk_182AE6F10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = *(*v1 + 136);
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = *(*a1 + 136);
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    type metadata accessor for Endpoint(0);
    v18 = v17;
    v19 = v15;
    v20 = sub_182AD3978();

    if ((v20 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v21 = *(*v2 + 176);
    swift_beginAccess();
    LODWORD(v21) = *(v2 + v21);
    v22 = *(*a1 + 176);
    swift_beginAccess();
    if (v21 != *(a1 + v22))
    {
      return 0;
    }

    v25 = qword_1ED411A90;
    swift_beginAccess();
    sub_181AACF84(v2 + v25, v13);
    v26 = qword_1ED411A90;
    swift_beginAccess();
    v27 = *(v5 + 48);
    sub_181AACF84(v13, v7);
    sub_181AACF84(a1 + v26, &v7[v27]);
    v28 = *(v52.i64[0] + 48);
    v29 = v51;
    if (v28(v7, 1, v51) == 1)
    {
      sub_181F49A88(v13, &qword_1EA838E00, &qword_182AFE8E0);
      if (v28(&v7[v27], 1, v29) == 1)
      {
        sub_181F49A88(v7, &qword_1EA838E00, &qword_182AFE8E0);
        goto LABEL_16;
      }
    }

    else
    {
      sub_181AACF84(v7, v10);
      if (v28(&v7[v27], 1, v29) != 1)
      {
        v30 = v52.i64[0];
        (*(v52.i64[0] + 32))(v50, &v7[v27], v29);
        sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0], MEMORY[0x1E69E84D8]);
        v31 = sub_182AD2F48();
        v32 = *(v30 + 8);
        v32(v50, v29);
        sub_181F49A88(v13, &qword_1EA838E00, &qword_182AFE8E0);
        v32(v10, v29);
        sub_181F49A88(v7, &qword_1EA838E00, &qword_182AFE8E0);
        if ((v31 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        swift_beginAccess();
        v33 = *(v2 + 24);
        v34 = *(v2 + 32);
        v35 = *(v2 + 40);
        v57.i16[0] = *(v2 + 16);
        v57.i64[1] = v33;
        *&v58 = v34;
        BYTE8(v58) = v35;
        swift_beginAccess();
        v36 = *(a1 + 24);
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        v53.i16[0] = *(a1 + 16);
        v53.i64[1] = v36;
        *&v54 = v37;
        BYTE8(v54) = v38;
        v52.i32[0] = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v57, &v53);
        v39 = v53.i64[1];
        *&v51 = v54;
        LODWORD(v50) = BYTE8(v54);
        sub_181F49A24(v33, v34, v35);
        sub_181F49A24(v36, v37, v38);
        sub_181F48350(v39, v51, v50);
        sub_181F48350(v57.i64[1], v58, SBYTE8(v58));
        if (v52.i8[0])
        {
          v40 = v2 + *(*v2 + 128);
          swift_beginAccess();
          v41 = *(v40 + 40);
          if (v41 != 2)
          {
            v42 = *v40;
            v51 = *(v40 + 16);
            v52 = v42;
            v43 = *(v40 + 32);
            v44 = a1 + *(*a1 + 128);
            swift_beginAccess();
            v45 = *(v44 + 40);
            if (v45 != 2)
            {
              v47 = *(v44 + 32);
              v57 = v52;
              v58 = v51;
              v59 = v43;
              v60 = v41;
              v48 = *(v44 + 16);
              v53 = *v44;
              v54 = v48;
              v55 = v47;
              v56 = v45;
              return _s7Network11TCPProtocolV10TCPOptionsV2eeoiySbAE_AEtFZ_0(&v57, &v53);
            }

            LOBYTE(v41) = *(v40 + 40);
          }

          if (v41 == 2)
          {
            v46 = a1 + *(*a1 + 128);
            swift_beginAccess();
            return *(v46 + 40) == 2;
          }
        }

        return 0;
      }

      sub_181F49A88(v13, &qword_1EA838E00, &qword_182AFE8E0);
      (*(v52.i64[0] + 8))(v10, v29);
    }

    sub_181F49A88(v7, &qword_1EA838AF0, &unk_182AE6F10);
    return 0;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_181B01C24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v13 = *(a2 + 7);
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  if (v2 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v10 == 5 || qword_182B03358[v2] != qword_182B03358[v10])
  {
    return 0;
  }

  if (v3 != 5)
  {
    if (v11 == 5)
    {
      return 0;
    }

    v17 = qword_182B03380[v3] == qword_182B03380[v11] && v4 == v12;
    if (!v17 || v5 != v13)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v11 != 5)
  {
    return 0;
  }

  result = 0;
  if (v4 == v12 && v5 == v13)
  {
LABEL_21:
    if (v6 == 5)
    {
      if (v14 != 5)
      {
        return 0;
      }
    }

    else if (v14 == 5 || qword_182B03358[v6] != qword_182B03358[v14])
    {
      return 0;
    }

    if (v7 == 5)
    {
      result = 0;
      if (v15 != 5)
      {
        return result;
      }

      goto LABEL_32;
    }

    if (v15 != 5)
    {
      result = 0;
      if (qword_182B03380[v7] != qword_182B03380[v15])
      {
        return result;
      }

LABEL_32:
      if (v8 == *(a2 + 10))
      {
        return v9 == *(a2 + 11);
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL nw_context_shares_workloop(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_context_copy_globals_context(v3);
      v7 = nw_context_copy_globals_context(v5);
      v8 = v6 == v7;

      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_context_shares_workloop";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null other", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null other", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null other, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null other, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_context_shares_workloop";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null other, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_context_shares_workloop";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_context_shares_workloop";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

uint64_t sub_181B0227C(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = v6 >> 61;
  if ((v6 >> 61) <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v3 >> 61 == 1)
        {
          sub_181AACFF4(*a1, v3);
          sub_181AACFF4(v7, v6);
          v9 = sub_181B0159C(v4);
          goto LABEL_19;
        }
      }

      else if (v3 >> 61 == 2)
      {
        sub_181AACFF4(*a1, v3);
        sub_181AACFF4(v7, v6);
        v9 = sub_181CC4EF0(v4, v5);
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    if (!(v3 >> 61))
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v8 <= 4)
  {
    if (v8 == 3)
    {
      if (v3 >> 61 == 3)
      {
        sub_181AACFF4(*a1, v3);
        sub_181AACFF4(v7, v6);
        v9 = sub_181B03DBC(v4, v5);
LABEL_19:
        v14 = v9;
        sub_181AAD03C(v7, v6);
        sub_181AAD03C(v4, v3);
        return v14 & 1;
      }

      goto LABEL_27;
    }

    if (v3 >> 61 == 4)
    {
LABEL_18:
      sub_181AACFF4(*a1, v3);
      sub_181AACFF4(v7, v6);
      v9 = sub_181E38334(v4);
      goto LABEL_19;
    }

LABEL_27:
    sub_181AACFF4(*a1, v3);
    sub_181AACFF4(v7, v6);
    sub_181AAD03C(v7, v6);
    sub_181AAD03C(v4, v3);
    v13 = 0;
    return v13 & 1;
  }

  if (v8 != 5)
  {
    if (v3 >> 61 == 6 && v4 == 0 && v3 == 0xC000000000000000)
    {
      sub_181AAD03C(*v2, *(v2 + 8));
      sub_181AAD03C(0, 0xC000000000000000);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_27;
  }

  if (v3 >> 61 != 5)
  {
    goto LABEL_27;
  }

  ObjectType = swift_getObjectType();
  v18 = v5;
  v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181AACFF4(v4, v3);
  v12 = sub_181AACFF4(v7, v6);
  v13 = v11(v4, v3 & 0x1FFFFFFFFFFFFFFFLL, &v18, ObjectType, v6 & 0x1FFFFFFFFFFFFFFFLL, v12);
  sub_181AAD03C(v7, v6);
  sub_181AAD03C(v4, v3);
  return v13 & 1;
}