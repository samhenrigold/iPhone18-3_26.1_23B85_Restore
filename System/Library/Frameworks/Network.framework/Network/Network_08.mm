uint64_t nw_channel_add_input_frames(uint64_t a1, uint64_t a2)
{
  v261 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 136) || !*(a1 + 224) || !os_channel_available_slot_count())
  {
    return 0;
  }

  v239 = a2;
  v4 = 0uLL;
  memset(v253, 0, sizeof(v253));
  v249 = 0;
  if ((*(a1 + 460) & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  *buf = 0;
  v257[0] = 0;
  os_channel_get_upp_buffer_stats();
  if (gLogDatapath == 1)
  {
    v220 = __nwlog_obj();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
    {
      *v258 = 136446722;
      *&v258[4] = "nw_channel_add_input_frames";
      *&v258[12] = 2048;
      *&v258[14] = v257[0];
      *&v258[22] = 2048;
      *&v258[24] = *buf;
      _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_DEBUG, "%{public}s buffer usage %llu/%llu", v258, 0x20u);
    }
  }

  if (*buf * 0.8 < v257[0])
  {
    v221 = __nwlog_obj();
    if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
    {
      *v258 = 136446722;
      *&v258[4] = "nw_channel_add_input_frames";
      *&v258[12] = 2048;
      *&v258[14] = v257[0];
      *&v258[22] = 2048;
      *&v258[24] = *buf;
      _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_INFO, "%{public}s copy channel buffer due to memory pressue %llu/%llu", v258, 0x20u);
    }

    if ((g_channel_force_copy_frame & 1) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_411;
  }

  v4 = 0uLL;
  if (g_channel_force_copy_frame)
  {
LABEL_411:
    v222 = __nwlog_obj();
    if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
    {
      *v258 = 136446210;
      *&v258[4] = "nw_channel_add_input_frames";
      _os_log_impl(&dword_181A37000, v222, OS_LOG_TYPE_INFO, "%{public}s force copy channel packet", v258, 0xCu);
    }

LABEL_413:
    v9 = nw_channel_add_copied_input_frames(a1, v239, v253, &v249);
    goto LABEL_292;
  }

LABEL_8:
  v259 = v4;
  v260 = v4;
  *v258 = v4;
  *&v258[16] = v4;
  v5 = *(a1 + 288);
  next_slot = os_channel_get_next_slot();
  if (!next_slot)
  {
    goto LABEL_291;
  }

  v7 = 0;
  v247 = (a1 + 296);
  v8 = v239;
  while (1)
  {
    if (v249 > 0x1F)
    {
      goto LABEL_275;
    }

    v11 = next_slot;
    if (!v5)
    {
      nw_channel_allocate_frames(a1);
      v5 = *(a1 + 288);
      if (!v5)
      {
        goto LABEL_275;
      }
    }

    packet = os_channel_slot_get_packet();
    v242 = v5;
    if (!packet)
    {
      if (nw_channel_check_defunct(a1))
      {
        goto LABEL_275;
      }

      v123 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      LODWORD(v231) = 12;
      v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v123, 16, "%{public}s failed to get packet from channel", buf, v231);
      LOBYTE(v257[0]) = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v124, v257, type))
      {
        if (LOBYTE(v257[0]) == 17)
        {
          v125 = __nwlog_obj();
          v126 = v257[0];
          if (!os_log_type_enabled(v125, v257[0]))
          {
            goto LABEL_266;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v125;
          v128 = v126;
          v129 = "%{public}s failed to get packet from channel";
          goto LABEL_265;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v148 = __nwlog_obj();
          v149 = v257[0];
          if (!os_log_type_enabled(v148, v257[0]))
          {
            goto LABEL_266;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v148;
          v128 = v149;
          v129 = "%{public}s failed to get packet from channel, backtrace limit exceeded";
          goto LABEL_265;
        }

        backtrace_string = __nw_create_backtrace_string();
        v141 = __nwlog_obj();
        v142 = v257[0];
        v143 = os_log_type_enabled(v141, v257[0]);
        if (!backtrace_string)
        {
          if (!v143)
          {
            goto LABEL_266;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v141;
          v128 = v142;
          v129 = "%{public}s failed to get packet from channel, no backtrace";
          goto LABEL_265;
        }

        if (v143)
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 2082;
          *v256 = backtrace_string;
          _os_log_impl(&dword_181A37000, v141, v142, "%{public}s failed to get packet from channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_266:
      if (!v124)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v13 = packet;
    if (!os_packet_get_trace_id())
    {
      if ((*(a1 + 460) & 0x1000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      if (!os_channel_slot_detach_packet())
      {
        goto LABEL_24;
      }

      if (nw_channel_check_defunct(a1))
      {
        goto LABEL_275;
      }

      v137 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      LODWORD(v231) = 12;
      v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s failed to detach packet", buf, v231);
      LOBYTE(v257[0]) = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v124, v257, type))
      {
        if (LOBYTE(v257[0]) == 17)
        {
          v138 = __nwlog_obj();
          v139 = v257[0];
          if (!os_log_type_enabled(v138, v257[0]))
          {
            goto LABEL_266;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v138;
          v128 = v139;
          v129 = "%{public}s failed to detach packet";
          goto LABEL_265;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v156 = __nwlog_obj();
          v157 = v257[0];
          if (!os_log_type_enabled(v156, v257[0]))
          {
            goto LABEL_266;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v156;
          v128 = v157;
          v129 = "%{public}s failed to detach packet, backtrace limit exceeded";
          goto LABEL_265;
        }

        v150 = __nw_create_backtrace_string();
        v151 = __nwlog_obj();
        v152 = v257[0];
        v153 = os_log_type_enabled(v151, v257[0]);
        if (v150)
        {
          if (v153)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 2082;
            *v256 = v150;
            _os_log_impl(&dword_181A37000, v151, v152, "%{public}s failed to detach packet, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v150);
          if (!v124)
          {
            goto LABEL_14;
          }

LABEL_13:
          free(v124);
LABEL_14:
          v8 = v239;
LABEL_15:
          v5 = v242;
          goto LABEL_16;
        }

        if (v153)
        {
          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v127 = v151;
          v128 = v152;
          v129 = "%{public}s failed to detach packet, no backtrace";
LABEL_265:
          _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
          goto LABEL_266;
        }
      }

      goto LABEL_266;
    }

    os_packet_trace_event();
    if ((*(a1 + 460) & 0x1000) != 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (!os_packet_get_data_length())
    {
      if (nw_channel_check_defunct(a1))
      {
        goto LABEL_275;
      }

      v130 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      LODWORD(v231) = 12;
      v131 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s zero length packet", buf, v231);
      LOBYTE(v257[0]) = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v131, v257, type))
      {
        if (LOBYTE(v257[0]) == 17)
        {
          v132 = __nwlog_obj();
          v133 = v257[0];
          if (!os_log_type_enabled(v132, v257[0]))
          {
            goto LABEL_259;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v134 = v132;
          v135 = v133;
          v136 = "%{public}s zero length packet";
LABEL_258:
          _os_log_impl(&dword_181A37000, v134, v135, v136, buf, 0xCu);
          goto LABEL_259;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v154 = __nwlog_obj();
          v155 = v257[0];
          if (!os_log_type_enabled(v154, v257[0]))
          {
            goto LABEL_259;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v134 = v154;
          v135 = v155;
          v136 = "%{public}s zero length packet, backtrace limit exceeded";
          goto LABEL_258;
        }

        v144 = __nw_create_backtrace_string();
        v145 = __nwlog_obj();
        v146 = v257[0];
        v147 = os_log_type_enabled(v145, v257[0]);
        if (!v144)
        {
          if (!v147)
          {
            goto LABEL_259;
          }

          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v134 = v145;
          v135 = v146;
          v136 = "%{public}s zero length packet, no backtrace";
          goto LABEL_258;
        }

        if (v147)
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 2082;
          *v256 = v144;
          _os_log_impl(&dword_181A37000, v145, v146, "%{public}s zero length packet, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v144);
      }

LABEL_259:
      if (v131)
      {
        free(v131);
      }

      v8 = v239;
      if ((*(a1 + 460) & 0x1000) != 0)
      {
LABEL_36:
        v5 = v242;
        if (*(a1 + 136) && os_channel_packet_free())
        {
          break;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v257[0] = 0;
    v257[1] = 0;
    os_packet_get_flow_uuid();
    if (((*(a1 + 460) & 0x100) == 0 || (v14 = *(a1 + 280)) == 0 || (node = nw_hash_table_get_node(v14, v257, 16)) == 0) && ((v16 = *(a1 + 272)) == 0 || (node = *(v16 + 56)) == 0) || (v17 = node[2]) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1042;
        *v256 = 16;
        *&v256[4] = 2098;
        *&v256[6] = v257;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s Failed to find client for slot (%{public,uuid_t}.16P)", buf, 0x1Cu);
      }

      if ((*(a1 + 460) & 0x1000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_15;
    }

    v18 = *(v17 + 56);
    v241 = node[2];
    if (v18)
    {
      v245 = (*(v18 + 153) >> 2) & 1;
    }

    else
    {
      v245 = 0;
    }

    *(v5 + 204) &= ~0x80u;
    buflet_count = os_packet_get_buflet_count();
    if (!buflet_count)
    {
      v48 = v241;
      if ((*(v5 + 204) & 0x80) != 0)
      {
        v240 = v11;
        LOWORD(v11) = 0;
        v21 = v5;
LABEL_99:
        *(v5 + 196) = v11;
        v11 = v240;
        if (v48 == v8)
        {
          goto LABEL_195;
        }

LABEL_188:
        v103 = v249;
        if (v249)
        {
          v104 = v253;
          v105 = v249;
          while (*v104 != v48)
          {
            ++v104;
            if (!--v105)
            {
              v106 = v249;
              goto LABEL_194;
            }
          }
        }

        else
        {
          v106 = 0;
LABEL_194:
          *(v253 + v106) = v48;
          v249 = v103 + 1;
        }

        goto LABEL_195;
      }

      v21 = v5;
      if (v241 != v8)
      {
        goto LABEL_188;
      }

LABEL_195:
      v5 = v21;
      goto LABEL_16;
    }

    v238 = v7;
    v240 = v11;
    LODWORD(v11) = 0;
    v20 = 0;
    v21 = v5;
    while (1)
    {
      next_buflet = os_packet_get_next_buflet();
      if (!next_buflet)
      {
        v107 = __nwlog_obj();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_ERROR, "%{public}s os_packet_get_next_buflet() returns NULL", buf, 0xCu);
        }

        v5 = v21;
        goto LABEL_104;
      }

      v28 = next_buflet;
      data_offset = os_buflet_get_data_offset();
      object_address = os_buflet_get_object_address();
      v5 = v21;
      if (!v21)
      {
        nw_channel_allocate_frames(a1);
        v5 = *(a1 + 288);
        if (!v5)
        {
          v49 = *(a1 + 152);
          if (!v49 || *(v49 + 132) != 4)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v51 = gLogObj;
            v50 = (a1 + 328);
            v11 = v240;
            v7 = v238;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446210;
              *&buf[4] = "nw_channel_add_channel_input_frames";
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, "%{public}s nw_channel_allocate_frames() is out of frames", buf, 0xCu);
            }

            v5 = 0;
            goto LABEL_109;
          }

          v5 = 0;
LABEL_104:
          v50 = (a1 + 328);
          v11 = v240;
          goto LABEL_105;
        }
      }

      v31 = object_address + data_offset;
      data_length = os_buflet_get_data_length();
      nw_frame_reset(v5, v31, data_length, nw_channel_finalize_input_frame, a1);
      if (v245)
      {
        nw_frame_set_metadata(v5, 0, 1, 1);
      }

      if ((*(v5 + 204) & 4) != 0)
      {
        *(v5 + 208) = v13;
        *(v5 + 216) = v28;
        *(v5 + 232) = *(v5 + 232) & 0xFE | ((*(a1 + 460) & 0x400) != 0);
      }

      v33 = os_packet_increment_use_count();
      if (v33)
      {
        break;
      }

      v34 = *(v5 + 204);
      *(v5 + 204) = v34 | 0x4000;
      if (!v20)
      {
        if ((*(a1 + 460) & 0x400) == 0 || os_packet_get_aggregation_type() != 2)
        {
LABEL_90:
          if (os_packet_get_wake_flag())
          {
            *(v242 + 204) |= 0x8000u;
          }

          goto LABEL_43;
        }

        *(v242 + 204) |= 0x80u;
        segment_count = os_packet_get_segment_count();
        if (segment_count)
        {
          if ((*(v242 + 204) & 0x40) == 0)
          {
            *(v242 + 200) = segment_count;
            goto LABEL_90;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_segment_count";
          LODWORD(v231) = 12;
          v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Attempt to set segment-count on a chain-member", buf, v231);
          type[0] = OS_LOG_TYPE_ERROR;
          v252 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v36, type, &v252))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v41 = type[0];
              loga = gLogObj;
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_88;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_set_segment_count";
              v38 = loga;
              v39 = v41;
              v40 = "%{public}s Attempt to set segment-count on a chain-member";
              goto LABEL_87;
            }

            if (v252 != OS_LOG_TYPE_INFO)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v47 = type[0];
              loge = gLogObj;
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_88;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_set_segment_count";
              v38 = loge;
              v39 = v47;
              v40 = "%{public}s Attempt to set segment-count on a chain-member, backtrace limit exceeded";
              goto LABEL_87;
            }

            v44 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            logc = gLogObj;
            HIDWORD(v231) = type[0];
            v45 = os_log_type_enabled(gLogObj, type[0]);
            if (v44)
            {
              if (v45)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_frame_set_segment_count";
                v255 = 2082;
                *v256 = v44;
                _os_log_impl(&dword_181A37000, logc, BYTE4(v231), "%{public}s Attempt to set segment-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v44);
              if (!v36)
              {
                goto LABEL_90;
              }

LABEL_89:
              free(v36);
              goto LABEL_90;
            }

            if (v45)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_set_segment_count";
              v38 = logc;
              v39 = BYTE4(v231);
              v40 = "%{public}s Attempt to set segment-count on a chain-member, no backtrace";
LABEL_87:
              _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
            }
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          LODWORD(v231) = 12;
          v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s No segment-count set on single-IP aggregate", buf, v231);
          type[0] = OS_LOG_TYPE_ERROR;
          v252 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v36, type, &v252))
          {
            goto LABEL_88;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v37 = type[0];
            log = gLogObj;
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_88;
            }

            *buf = 136446210;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v38 = log;
            v39 = v37;
            v40 = "%{public}s No segment-count set on single-IP aggregate";
            goto LABEL_87;
          }

          if (v252 != OS_LOG_TYPE_INFO)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            logd = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_88;
            }

            *buf = 136446210;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v38 = v46;
            v39 = logd;
            v40 = "%{public}s No segment-count set on single-IP aggregate, backtrace limit exceeded";
            goto LABEL_87;
          }

          v42 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          logb = gLogObj;
          HIDWORD(v231) = type[0];
          v43 = os_log_type_enabled(gLogObj, type[0]);
          if (!v42)
          {
            if (!v43)
            {
              goto LABEL_88;
            }

            *buf = 136446210;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v38 = logb;
            v39 = BYTE4(v231);
            v40 = "%{public}s No segment-count set on single-IP aggregate, no backtrace";
            goto LABEL_87;
          }

          if (v43)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 2082;
            *v256 = v42;
            _os_log_impl(&dword_181A37000, logb, BYTE4(v231), "%{public}s No segment-count set on single-IP aggregate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
        }

LABEL_88:
        if (!v36)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      *(v5 + 204) = v34 | 0x4040;
LABEL_43:
      LODWORD(v11) = data_length + v11;
      v22 = (v5 + 16);
      v21 = *(v5 + 16);
      v23 = *(v5 + 24);
      v24 = (v21 + 24);
      if (!v21)
      {
        v24 = (a1 + 296);
      }

      *v24 = v23;
      *v23 = v21;
      *(v5 + 24) = 0;
      *v22 = 0;
      v25 = *(a1 + 328);
      *(v5 + 24) = v25;
      *v25 = v5;
      *(a1 + 328) = v22;
      ++*(a1 + 432);
      *(v5 + 32) = 0;
      v26 = node[5];
      *(v5 + 40) = v26;
      *v26 = v5;
      node[5] = v5 + 32;
      if (buflet_count == ++v20)
      {
        v5 = v242;
        if ((*(v242 + 204) & 0x80) == 0)
        {
          goto LABEL_187;
        }

        if (!WORD1(v11))
        {
          v8 = v239;
          v48 = v241;
          goto LABEL_99;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v11;
        LODWORD(v231) = 18;
        v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Chained packet-length is too big: %u", buf, v231);
        type[0] = OS_LOG_TYPE_ERROR;
        v252 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v78, type, &v252))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v79 = gLogObj;
            v80 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_185;
            }

            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 1024;
            *v256 = v11;
            v81 = v79;
            v82 = v80;
            v83 = "%{public}s Chained packet-length is too big: %u";
            goto LABEL_184;
          }

          if (v252 != OS_LOG_TYPE_INFO)
          {
            v101 = __nwlog_obj();
            v102 = type[0];
            if (!os_log_type_enabled(v101, type[0]))
            {
              goto LABEL_185;
            }

            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 1024;
            *v256 = v11;
            v81 = v101;
            v82 = v102;
            v83 = "%{public}s Chained packet-length is too big: %u, backtrace limit exceeded";
            goto LABEL_184;
          }

          v95 = __nw_create_backtrace_string();
          v96 = __nwlog_obj();
          v97 = type[0];
          v98 = os_log_type_enabled(v96, type[0]);
          if (v95)
          {
            if (v98)
            {
              *buf = 136446722;
              *&buf[4] = "nw_channel_add_channel_input_frames";
              v255 = 1024;
              *v256 = v11;
              *&v256[4] = 2082;
              *&v256[6] = v95;
              _os_log_impl(&dword_181A37000, v96, v97, "%{public}s Chained packet-length is too big: %u, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v95);
            goto LABEL_185;
          }

          if (v98)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 1024;
            *v256 = v11;
            v81 = v96;
            v82 = v97;
            v83 = "%{public}s Chained packet-length is too big: %u, no backtrace";
LABEL_184:
            _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0x12u);
          }
        }

LABEL_185:
        if (v78)
        {
          free(v78);
        }

LABEL_187:
        v8 = v239;
        v11 = v240;
        v48 = v241;
        if (v241 != v239)
        {
          goto LABEL_188;
        }

        goto LABEL_195;
      }
    }

    v108 = v33;
    v109 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_channel_add_channel_input_frames";
    v255 = 1024;
    v110 = v108;
    *v256 = v108;
    LODWORD(v231) = 18;
    v111 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s os_packet_increment_use_count() %{darwin.errno}d", buf, v231);
    type[0] = OS_LOG_TYPE_ERROR;
    v252 = OS_LOG_TYPE_DEFAULT;
    v11 = v240;
    if (!__nwlog_fault(v111, type, &v252))
    {
      goto LABEL_241;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v252 == OS_LOG_TYPE_INFO)
      {
        v117 = __nw_create_backtrace_string();
        v118 = __nwlog_obj();
        v119 = type[0];
        v120 = os_log_type_enabled(v118, type[0]);
        if (v117)
        {
          if (v120)
          {
            *buf = 136446722;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 1024;
            *v256 = v110;
            *&v256[4] = 2082;
            *&v256[6] = v117;
            _os_log_impl(&dword_181A37000, v118, v119, "%{public}s os_packet_increment_use_count() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v117);
          v11 = v240;
          goto LABEL_241;
        }

        v11 = v240;
        if (!v120)
        {
          goto LABEL_241;
        }

        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v110;
        v114 = v118;
        v115 = v119;
        v116 = "%{public}s os_packet_increment_use_count() %{darwin.errno}d, no backtrace";
      }

      else
      {
        v121 = __nwlog_obj();
        v122 = type[0];
        if (!os_log_type_enabled(v121, type[0]))
        {
          goto LABEL_241;
        }

        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v110;
        v114 = v121;
        v115 = v122;
        v116 = "%{public}s os_packet_increment_use_count() %{darwin.errno}d, backtrace limit exceeded";
      }

LABEL_240:
      _os_log_impl(&dword_181A37000, v114, v115, v116, buf, 0x12u);
      goto LABEL_241;
    }

    v112 = __nwlog_obj();
    v113 = type[0];
    if (os_log_type_enabled(v112, type[0]))
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      v255 = 1024;
      *v256 = v110;
      v114 = v112;
      v115 = v113;
      v116 = "%{public}s os_packet_increment_use_count() %{darwin.errno}d";
      goto LABEL_240;
    }

LABEL_241:
    if (v111)
    {
      free(v111);
    }

    v50 = (a1 + 328);
LABEL_105:
    v7 = v238;
LABEL_109:
    v52 = v242;
    if ((*(v242 + 204) & 0x80) == 0)
    {
      goto LABEL_152;
    }

    v53 = 0;
    *type = 1;
    while (2)
    {
      v55 = v52;
      v56 = v52 + 2;
      v52 = v52[2];
      if (!v52 && !v55[3])
      {
        v52 = 0;
      }

      --*(a1 + 432);
      v57 = v55[4];
      v58 = v55[5];
      if (v57)
      {
        v59 = v55[4];
      }

      else
      {
        v59 = node;
      }

      v59[5] = v58;
      *v58 = v57;
      v55[4] = 0;
      v55[5] = 0;
      v60 = v55[2];
      v61 = v55[3];
      v62 = (v60 + 24);
      if (!v60)
      {
        v62 = v50;
      }

      *v62 = v61;
      *v61 = v60;
      *v56 = 0;
      v56[1] = 0;
      if (v53)
      {
        v53 = 1;
        goto LABEL_112;
      }

      v63 = os_packet_decrement_use_count();
      if (!v63)
      {
        v53 = 0;
        goto LABEL_112;
      }

      v64 = v63;
      if (nw_channel_check_defunct(a1))
      {
        v53 = 1;
        v11 = v240;
        goto LABEL_112;
      }

      v243 = v52;
      v65 = __nwlog_obj();
      *buf = 136446466;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      v255 = 1024;
      *v256 = v64;
      LODWORD(v231) = 18;
      v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s os_packet_decrement_use_count() %{darwin.errno}d", buf, v231);
      v252 = OS_LOG_TYPE_ERROR;
      v250 = 0;
      if (!__nwlog_fault(v66, &v252, &v250))
      {
        goto LABEL_140;
      }

      if (v252 == OS_LOG_TYPE_FAULT)
      {
        v67 = __nwlog_obj();
        v68 = v252;
        if (os_log_type_enabled(v67, v252))
        {
          *buf = 136446466;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 1024;
          *v256 = v64;
          v69 = v67;
          v70 = v68;
          v71 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d";
          goto LABEL_139;
        }

        goto LABEL_140;
      }

      if (v250 != 1)
      {
        v76 = __nwlog_obj();
        v77 = v252;
        if (!os_log_type_enabled(v76, v252))
        {
          goto LABEL_140;
        }

        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v64;
        v69 = v76;
        v70 = v77;
        v71 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, backtrace limit exceeded";
LABEL_139:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x12u);
        goto LABEL_140;
      }

      v72 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = v252;
      v246 = v73;
      v75 = os_log_type_enabled(v73, v252);
      if (v72)
      {
        if (v75)
        {
          *buf = 136446722;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 1024;
          *v256 = v64;
          *&v256[4] = 2082;
          *&v256[6] = v72;
          _os_log_impl(&dword_181A37000, v246, v74, "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v72);
        goto LABEL_140;
      }

      if (v75)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v64;
        v69 = v246;
        v70 = v74;
        v71 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, no backtrace";
        goto LABEL_139;
      }

LABEL_140:
      v11 = v240;
      if (v66)
      {
        free(v66);
      }

      v53 = 0;
      v50 = (a1 + 328);
      v52 = v243;
      v7 = v238;
LABEL_112:
      v55[2] = 0;
      v54 = *v247;
      v55[3] = *v247;
      *v54 = v55;
      *v247 = v56;
      if (v52)
      {
        continue;
      }

      break;
    }

    if (!*type)
    {
      v53 = 1;
    }

    if ((v53 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v84 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = *type;
        _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s use_count is not 0 at the end: %u", buf, 0x12u);
      }
    }

LABEL_152:
    if (!*(a1 + 136))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled != 1 || !kdebug_is_enabled())
      {
LABEL_275:
        if (!v7)
        {
          goto LABEL_291;
        }

        goto LABEL_276;
      }

      kdebug_trace();
      if (v7)
      {
        goto LABEL_276;
      }

LABEL_291:
      v9 = 0;
      goto LABEL_292;
    }

    if ((*(a1 + 462) & 8) != 0)
    {
      goto LABEL_275;
    }

    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a1);
      goto LABEL_275;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_channel_add_channel_input_frames";
    LODWORD(v231) = 12;
    v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s failed to get buflet from packet", buf, v231);
    type[0] = OS_LOG_TYPE_ERROR;
    v252 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v85, type, &v252))
    {
      goto LABEL_176;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v252 == OS_LOG_TYPE_INFO)
      {
        v91 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = gLogObj;
        v93 = type[0];
        v94 = os_log_type_enabled(gLogObj, type[0]);
        if (v91)
        {
          if (v94)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_add_channel_input_frames";
            v255 = 2082;
            *v256 = v91;
            _os_log_impl(&dword_181A37000, v92, v93, "%{public}s failed to get buflet from packet, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v91);
          goto LABEL_176;
        }

        if (!v94)
        {
          goto LABEL_176;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v88 = v92;
        v89 = v93;
        v90 = "%{public}s failed to get buflet from packet, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v99 = gLogObj;
        v100 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_176;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v88 = v99;
        v89 = v100;
        v90 = "%{public}s failed to get buflet from packet, backtrace limit exceeded";
      }

LABEL_175:
      _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
      goto LABEL_176;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v86 = gLogObj;
    v87 = type[0];
    if (os_log_type_enabled(gLogObj, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      v88 = v86;
      v89 = v87;
      v90 = "%{public}s failed to get buflet from packet";
      goto LABEL_175;
    }

LABEL_176:
    if (v85)
    {
      free(v85);
    }

    v8 = v239;
    if ((*(a1 + 460) & 0x1000) != 0)
    {
      if (*(a1 + 136))
      {
        v7 = v238;
        if (os_channel_packet_free())
        {
          break;
        }
      }
    }

LABEL_16:
    next_slot = os_channel_get_next_slot();
    v7 = v11;
    if (!next_slot)
    {
      goto LABEL_275;
    }
  }

  nw_channel_check_defunct(a1);
  if (!v7)
  {
    goto LABEL_291;
  }

LABEL_276:
  *(a1 + 416) = v7;
  if ((*(a1 + 460) & 0x1000) == 0 && *(a1 + 320) || !*(a1 + 224))
  {
    goto LABEL_291;
  }

  *(a1 + 432) = 0;
  v158 = os_channel_advance_slot();
  if (v158)
  {
    v223 = v158;
    if ((nw_channel_check_defunct(a1) & 1) == 0)
    {
      v224 = __nwlog_obj();
      *buf = 136446466;
      *&buf[4] = "nw_channel_add_channel_input_frames";
      v255 = 1024;
      *v256 = v223;
      LODWORD(v231) = 18;
      v225 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v224, 16, "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d", buf, v231);
      LOBYTE(v257[0]) = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v225, v257, type))
      {
        goto LABEL_429;
      }

      if (LOBYTE(v257[0]) != 17)
      {
        if (type[0] == OS_LOG_TYPE_INFO)
        {
          v229 = __nw_create_backtrace_string();
          v226 = __nwlog_obj();
          v227 = v257[0];
          v230 = os_log_type_enabled(v226, v257[0]);
          if (v229)
          {
            if (v230)
            {
              *buf = 136446722;
              *&buf[4] = "nw_channel_add_channel_input_frames";
              v255 = 1024;
              *v256 = v223;
              *&v256[4] = 2082;
              *&v256[6] = v229;
              _os_log_impl(&dword_181A37000, v226, v227, "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v229);
            goto LABEL_429;
          }

          if (!v230)
          {
            goto LABEL_429;
          }

          *buf = 136446466;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 1024;
          *v256 = v223;
          v228 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, no backtrace";
        }

        else
        {
          v226 = __nwlog_obj();
          v227 = v257[0];
          if (!os_log_type_enabled(v226, v257[0]))
          {
            goto LABEL_429;
          }

          *buf = 136446466;
          *&buf[4] = "nw_channel_add_channel_input_frames";
          v255 = 1024;
          *v256 = v223;
          v228 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_428:
        _os_log_impl(&dword_181A37000, v226, v227, v228, buf, 0x12u);
        goto LABEL_429;
      }

      v226 = __nwlog_obj();
      v227 = v257[0];
      if (os_log_type_enabled(v226, v257[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_add_channel_input_frames";
        v255 = 1024;
        *v256 = v223;
        v228 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d";
        goto LABEL_428;
      }

LABEL_429:
      if (v225)
      {
        free(v225);
      }
    }
  }

  if (*(a1 + 136))
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v9 = 1;
    if (os_channel_sync())
    {
      nw_channel_check_defunct(a1);
      goto LABEL_288;
    }
  }

  else
  {
LABEL_288:
    v9 = 0;
  }

  *(a1 + 416) = 0;
LABEL_292:
  *(a1 + 460) |= 0x8000u;
  v159 = v249;
  if (v249)
  {
    v248 = v9;
    v160 = v253;
    v161 = v249;
    while (1)
    {
      v163 = *v160;
      if (!*v160)
      {
        break;
      }

      v164 = *(v163 + 56);
      if (!v164 || (*(v164 + 153) & 8) == 0 && (*(a1 + 460) & 0x80) != 0)
      {
        goto LABEL_296;
      }

      v165 = *(v163 + 24);
      if (!v165)
      {
        goto LABEL_296;
      }

      v166 = *(v165 + 64);
      if (!v166)
      {
        goto LABEL_296;
      }

      v167 = *(v163 + 40);
      v168 = *v160;
      if (v167 == &nw_protocol_ref_counted_handle || v167 == &nw_protocol_ref_counted_additional_handle && (v168 = *(v163 + 64)) != 0)
      {
        v170 = *(v168 + 88);
        v169 = 0;
        if (v170)
        {
          *(v168 + 88) = v170 + 1;
        }
      }

      else
      {
        v169 = 1;
      }

      v171 = *(a1 + 64);
      v172 = a1 + 24;
      if (v171 == &nw_protocol_ref_counted_handle || v171 == &nw_protocol_ref_counted_additional_handle && (v172 = *(a1 + 88)) != 0)
      {
        v173 = *(v172 + 88);
        if (v173)
        {
          *(v172 + 88) = v173 + 1;
        }

        v166(v163, a1 + 24);
        v174 = *(a1 + 64);
        v175 = a1 + 24;
        if ((v174 == &nw_protocol_ref_counted_handle || v174 == &nw_protocol_ref_counted_additional_handle && (v175 = *(a1 + 88)) != 0) && (v176 = *(v175 + 88)) != 0 && (v177 = v176 - 1, (*(v175 + 88) = v177) == 0))
        {
          v183 = *(v175 + 64);
          if (v183)
          {
            *(v175 + 64) = 0;
            v183[2](v183);
            _Block_release(v183);
          }

          if (*(v175 + 72))
          {
            v184 = *(v175 + 64);
            if (v184)
            {
              _Block_release(v184);
            }
          }

          free(v175);
          if (v169)
          {
            goto LABEL_296;
          }
        }

        else if (v169)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v166(v163, a1 + 24);
        if (v169)
        {
          goto LABEL_296;
        }
      }

      v178 = *(v163 + 40);
      if (v178 != &nw_protocol_ref_counted_handle)
      {
        if (v178 != &nw_protocol_ref_counted_additional_handle)
        {
          goto LABEL_296;
        }

        v163 = *(v163 + 64);
        if (!v163)
        {
          goto LABEL_296;
        }
      }

      v179 = *(v163 + 88);
      if (!v179)
      {
        goto LABEL_296;
      }

      v180 = v179 - 1;
      *(v163 + 88) = v180;
      if (v180)
      {
        goto LABEL_296;
      }

      v181 = *(v163 + 64);
      if (v181)
      {
        *(v163 + 64) = 0;
        v181[2](v181);
        _Block_release(v181);
      }

      if (*(v163 + 72))
      {
        v182 = *(v163 + 64);
        if (v182)
        {
          _Block_release(v182);
        }
      }

      v162 = v163;
LABEL_295:
      free(v162);
LABEL_296:
      ++v160;
      if (!--v161)
      {
        v198 = v253;
        v9 = v248;
        while (1)
        {
          v199 = *v198;
          if (*v198)
          {
            v200 = *(v199 + 24);
            if (v200)
            {
              v201 = *(v200 + 264);
              if (v201)
              {
                v202 = *(v199 + 40);
                v203 = *v198;
                if (v202 == &nw_protocol_ref_counted_handle || v202 == &nw_protocol_ref_counted_additional_handle && (v203 = *(v199 + 64)) != 0)
                {
                  v205 = *(v203 + 88);
                  v204 = 0;
                  if (v205)
                  {
                    *(v203 + 88) = v205 + 1;
                  }
                }

                else
                {
                  v204 = 1;
                }

                v206 = *(a1 + 64);
                v207 = a1 + 24;
                if (v206 == &nw_protocol_ref_counted_handle || v206 == &nw_protocol_ref_counted_additional_handle && (v207 = *(a1 + 88)) != 0)
                {
                  v208 = *(v207 + 88);
                  if (v208)
                  {
                    *(v207 + 88) = v208 + 1;
                  }

                  v201(v199, a1 + 24);
                  v209 = *(a1 + 64);
                  v210 = a1 + 24;
                  if (v209 == &nw_protocol_ref_counted_handle || v209 == &nw_protocol_ref_counted_additional_handle && (v210 = *(a1 + 88)) != 0)
                  {
                    v211 = *(v210 + 88);
                    if (v211)
                    {
                      v212 = v211 - 1;
                      *(v210 + 88) = v212;
                      if (!v212)
                      {
                        v218 = *(v210 + 64);
                        if (v218)
                        {
                          *(v210 + 64) = 0;
                          v218[2](v218);
                          _Block_release(v218);
                        }

                        if (*(v210 + 72))
                        {
                          v219 = *(v210 + 64);
                          if (v219)
                          {
                            _Block_release(v219);
                          }
                        }

                        free(v210);
                        if (v204)
                        {
                          goto LABEL_357;
                        }

LABEL_380:
                        v213 = *(v199 + 40);
                        if (v213 == &nw_protocol_ref_counted_handle || v213 == &nw_protocol_ref_counted_additional_handle && (v199 = *(v199 + 64)) != 0)
                        {
                          v214 = *(v199 + 88);
                          if (v214)
                          {
                            v215 = v214 - 1;
                            *(v199 + 88) = v215;
                            if (!v215)
                            {
                              v216 = *(v199 + 64);
                              if (v216)
                              {
                                *(v199 + 64) = 0;
                                v216[2](v216);
                                _Block_release(v216);
                              }

                              if (*(v199 + 72))
                              {
                                v217 = *(v199 + 64);
                                if (v217)
                                {
                                  _Block_release(v217);
                                }
                              }

                              free(v199);
                            }
                          }
                        }

                        goto LABEL_357;
                      }
                    }
                  }

                  if ((v204 & 1) == 0)
                  {
                    goto LABEL_380;
                  }
                }

                else
                {
                  v201(v199, a1 + 24);
                  if ((v204 & 1) == 0)
                  {
                    goto LABEL_380;
                  }
                }
              }
            }
          }

LABEL_357:
          ++v198;
          if (!--v159)
          {
            goto LABEL_397;
          }
        }
      }
    }

    v185 = __nwlog_obj();
    *v258 = 136446210;
    *&v258[4] = "__nw_protocol_get_output_handler_context";
    LODWORD(v231) = 12;
    v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v185, 16, "%{public}s called with null protocol", v258, v231);
    buf[0] = 16;
    LOBYTE(v257[0]) = 0;
    if (!__nwlog_fault(v186, buf, v257))
    {
      goto LABEL_353;
    }

    if (buf[0] == 17)
    {
      v187 = __nwlog_obj();
      v188 = buf[0];
      if (os_log_type_enabled(v187, buf[0]))
      {
        *v258 = 136446210;
        *&v258[4] = "__nw_protocol_get_output_handler_context";
        v189 = v187;
        v190 = v188;
        v191 = "%{public}s called with null protocol";
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    if (LOBYTE(v257[0]) == 1)
    {
      v192 = __nw_create_backtrace_string();
      v193 = __nwlog_obj();
      v194 = buf[0];
      v195 = os_log_type_enabled(v193, buf[0]);
      if (v192)
      {
        if (v195)
        {
          *v258 = 136446466;
          *&v258[4] = "__nw_protocol_get_output_handler_context";
          *&v258[12] = 2082;
          *&v258[14] = v192;
          _os_log_impl(&dword_181A37000, v193, v194, "%{public}s called with null protocol, dumping backtrace:%{public}s", v258, 0x16u);
        }

        free(v192);
        goto LABEL_353;
      }

      if (!v195)
      {
LABEL_353:
        if (!v186)
        {
          goto LABEL_296;
        }

        v162 = v186;
        goto LABEL_295;
      }

      *v258 = 136446210;
      *&v258[4] = "__nw_protocol_get_output_handler_context";
      v189 = v193;
      v190 = v194;
      v191 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v196 = __nwlog_obj();
      v197 = buf[0];
      if (!os_log_type_enabled(v196, buf[0]))
      {
        goto LABEL_353;
      }

      *v258 = 136446210;
      *&v258[4] = "__nw_protocol_get_output_handler_context";
      v189 = v196;
      v190 = v197;
      v191 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_352:
    _os_log_impl(&dword_181A37000, v189, v190, v191, v258, 0xCu);
    goto LABEL_353;
  }

LABEL_397:
  *(a1 + 460) &= ~0x8000u;
  if (*(a1 + 462))
  {
    *(a1 + 462) &= ~1u;
    if (*(a1 + 136))
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
        nw_channel_check_defunct(a1);
      }
    }
  }

  return v9;
}

void nw_protocol_default_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_default_input_available";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
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
      v18 = "nw_protocol_default_input_available";
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
          v18 = "nw_protocol_default_input_available";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_default_input_available";
      v9 = "%{public}s called with null protocol, no backtrace";
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
      v18 = "nw_protocol_default_input_available";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_36;
  }

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

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_default_input_available";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol->default_input_handler", buf, 12);
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
    v18 = "nw_protocol_default_input_available";
    v9 = "%{public}s called with null protocol->default_input_handler";
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
    v18 = "nw_protocol_default_input_available";
    v9 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
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
    v18 = "nw_protocol_default_input_available";
    v9 = "%{public}s called with null protocol->default_input_handler, no backtrace";
    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_default_input_available";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
LABEL_37:
    free(v6);
  }
}

uint64_t ___ZL27nw_channel_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 >= *(a1 + 64) || *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 68))
  {
    return 0;
  }

  *(v2 + 24) = v3 + 1;
  v6 = nw_frame_unclaimed_length(a2);
  v7 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v6;
  v8 = (v7 + 8);
  v9 = (a2 + 32);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v10)
  {
    v8 = (v10 + 40);
  }

  *v8 = v11;
  *v11 = v10;
  *(a2 + 40) = 0;
  *v9 = 0;
  v12 = *(a1 + 56);
  v13 = *(v12 + 8);
  *(a2 + 40) = v13;
  *v13 = a2;
  *(v12 + 8) = v9;
  return 1;
}

void nw_channel_update_input_source(uint64_t result, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(result + 460) & 1) == 0 && *(result + 168) && *(result + 224))
  {
    if (!uuid_is_null((result + 368)) && *(result + 432) >= *(result + 112) >> 1)
    {
      v6 = *(result + 352);
      if (v6)
      {
        *(v6 + 40) = &v20;
        v7 = *(result + 360);
        v20 = v6;
        v21 = v7;
        *(result + 352) = 0;
        *(result + 360) = result + 352;
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 0x40000000;
        v23 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v24 = &__block_descriptor_tmp_21_49595;
        v25 = 0;
        do
        {
          v8 = v20;
          if (!v20)
          {
            break;
          }

          v9 = *(v20 + 32);
          v10 = *(v20 + 40);
          v11 = (v9 + 40);
          if (!v9)
          {
            v11 = &v21;
          }

          *v11 = v10;
          *v10 = v9;
          *(v8 + 32) = 0;
          *(v8 + 40) = 0;
        }

        while (((v23)(&buf) & 1) != 0);
      }
    }

    if (*(result + 224))
    {
      *(result + 460) |= 1u;
      v12 = a3;
      v13 = os_channel_available_slot_count();
      v14 = v13;
      if (v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = v12 == 0;
      }

      if (v15)
      {
        if (v13 && (*(result + 460) & 0x1008) == 0)
        {
          if (gLogDatapath == 1)
          {
            v18 = __nwlog_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 136446210;
              *(&buf + 4) = "nw_channel_update_input_source";
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s channel input source suspended", &buf, 0xCu);
            }
          }

          *(result + 460) |= 8u;
          nw_queue_suspend_source(*(result + 168));
        }
      }

      else if (nw_channel_check_defunct(result))
      {
LABEL_31:
        *(result + 460) &= ~1u;
        return;
      }

      do
      {
        v16 = *(result + 432);
        if (v16 - 1 >= v14)
        {
          v16 = 0;
        }

        if (v14 == v16)
        {
          break;
        }

        v17 = nw_channel_add_input_frames(result, a2);
        if (!*(result + 224))
        {
          break;
        }

        v14 = os_channel_available_slot_count();
      }

      while ((v17 & 1) != 0);
      if (!v14 && (*(result + 460) & 8) != 0)
      {
        if (gLogDatapath == 1)
        {
          v19 = __nwlog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = "nw_channel_update_input_source";
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s channel input source resumed", &buf, 0xCu);
          }
        }

        *(result + 460) &= ~8u;
        nw_queue_resume_source(*(result + 168));
      }

      goto LABEL_31;
    }
  }
}

uint64_t nw_channel_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, int a5, nw_frame_array_s *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_get_input_frames";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null channel_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v19, type, &v43))
    {
      goto LABEL_52;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel_protocol";
      goto LABEL_51;
    }

    if (v43 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v26 = os_log_type_enabled(v20, type[0]);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel_protocol, no backtrace";
      goto LABEL_51;
    }

    if (!v26)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    *&buf[4] = "nw_channel_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v27 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v20, v21, v27, buf, 0x16u);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (!handle)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_get_input_frames";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null channel", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v19, type, &v43))
    {
      goto LABEL_52;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel";
      goto LABEL_51;
    }

    if (v43 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v28 = os_log_type_enabled(v20, type[0]);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null channel, no backtrace";
      goto LABEL_51;
    }

    if (!v28)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    *&buf[4] = "nw_channel_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v27 = "%{public}s called with null channel, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  if (!a2)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_get_input_frames";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (!__nwlog_fault(v19, type, &v43))
    {
      goto LABEL_52;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null input_protocol";
      goto LABEL_51;
    }

    if (v43 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_get_input_frames";
      v22 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v29 = os_log_type_enabled(v20, type[0]);
    if (backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_52;
    }

    if (!v29)
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    *&buf[4] = "nw_channel_get_input_frames";
    v22 = "%{public}s called with null input_protocol, no backtrace";
LABEL_51:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
LABEL_52:
    if (v19)
    {
      free(v19);
    }

    return 0;
  }

  handle[462] = handle[462] & 0xF9 | 2;
  nw_channel_update_input_source(handle, a2, 0);
  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_channel_get_input_frames";
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = a2;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Can't find hash table entry for %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  *&buf[24] = 0;
  *type = 0;
  v40 = type;
  v41 = 0x2000000000;
  v42 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v31 = ___ZL27nw_channel_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
  v32 = &unk_1E6A3D660;
  v33 = buf;
  v34 = type;
  v37 = a5;
  v38 = a4;
  v12 = output_handler_context[4];
  v35 = (output_handler_context + 4);
  v36 = a6;
  do
  {
    if (!v12)
    {
      break;
    }

    v13 = *(v12 + 32);
    v14 = (v31)(v30);
    v12 = v13;
  }

  while ((v14 & 1) != 0);
  v15 = *(*&buf[8] + 24);
  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  return v15;
}

uint64_t nw_protocol_ipv4_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v242 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v149 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_get_input_frames";
    v150 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(v228) = 16;
    v224[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v150, &v228, v224))
    {
      if (v228 == 17)
      {
        v151 = __nwlog_obj();
        v152 = v228;
        if (os_log_type_enabled(v151, v228))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          v153 = "%{public}s called with null protocol";
LABEL_255:
          _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
        }
      }

      else if (v224[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v151 = __nwlog_obj();
        v152 = v228;
        v155 = os_log_type_enabled(v151, v228);
        if (backtrace_string)
        {
          if (v155)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ipv4_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_256;
        }

        if (v155)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          v153 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_255;
        }
      }

      else
      {
        v151 = __nwlog_obj();
        v152 = v228;
        if (os_log_type_enabled(v151, v228))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          v153 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_255;
        }
      }
    }

LABEL_256:
    if (v150)
    {
      free(v150);
    }

    return 0;
  }

  v6 = a1;
  handle = a1->handle;
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v9 = 1;
    goto LABEL_11;
  }

  v8 = *a1[1].flow_id;
  if (v8)
  {
LABEL_6:
    callbacks = v8[1].callbacks;
    v9 = 0;
    if (callbacks)
    {
      v8[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v9 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v11 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv4_get_input_frames";
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv4", buf, 12);
      LOBYTE(v228) = 16;
      v224[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, &v228, v224))
      {
        goto LABEL_236;
      }

      if (v228 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v228;
        if (!os_log_type_enabled(gLogObj, v228))
        {
          goto LABEL_236;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_get_input_frames";
        v15 = "%{public}s called with null ipv4";
      }

      else
      {
        if (v224[0] == OS_LOG_TYPE_INFO)
        {
          v142 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v143 = gLogObj;
          v144 = v228;
          v145 = os_log_type_enabled(gLogObj, v228);
          if (v142)
          {
            if (v145)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_ipv4_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v142;
              _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v142);
          }

          else if (v145)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ipv4_get_input_frames";
            v15 = "%{public}s called with null ipv4, no backtrace";
            v146 = v143;
            v147 = v144;
            goto LABEL_235;
          }

LABEL_236:
          if (v12)
          {
            free(v12);
          }

          v148 = 0;
          if ((v9 & 1) == 0)
          {
            goto LABEL_278;
          }

          return v148;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v228;
        if (!os_log_type_enabled(gLogObj, v228))
        {
          goto LABEL_236;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_get_input_frames";
        v15 = "%{public}s called with null ipv4, backtrace limit exceeded";
      }

      v146 = v13;
      v147 = v14;
LABEL_235:
      _os_log_impl(&dword_181A37000, v146, v147, v15, buf, 0xCu);
      goto LABEL_236;
    }

    v11 = *a1[1].flow_id;
  }

  p_output_handler = &v11[1].output_handler;
  if (a3 >= 0xFFFFFFEC)
  {
    v17 = -1;
  }

  else
  {
    v17 = a3 + 20;
  }

  v18 = a4 + 20;
  if (a4 >= 0xFFFFFFEC)
  {
    v18 = -1;
  }

  v183 = v18;
  v184 = v17;
  v228 = 0;
  v229 = &v228;
  v230 = 0x2000000000;
  v231 = 0;
  v182 = &v11[3].handle + 2;
  v186 = a6;
  v187 = v11;
  while (2)
  {
    output_handler = v6->output_handler;
    if (!output_handler)
    {
      v156 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      LODWORD(v172) = 12;
      v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s called with null protocol", buf, v172);
      v224[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v222[0]) = 0;
      if (__nwlog_fault(v157, v224, v222))
      {
        if (v224[0] == OS_LOG_TYPE_FAULT)
        {
          v158 = __nwlog_obj();
          v159 = v224[0];
          if (os_log_type_enabled(v158, v224[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v160 = "%{public}s called with null protocol";
LABEL_270:
            v164 = v158;
LABEL_271:
            _os_log_impl(&dword_181A37000, v164, v159, v160, buf, 0xCu);
          }
        }

        else if (LOBYTE(v222[0]) == 1)
        {
          v161 = __nw_create_backtrace_string();
          v162 = __nwlog_obj();
          v159 = v224[0];
          v163 = os_log_type_enabled(v162, v224[0]);
          if (v161)
          {
            if (v163)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v161;
              _os_log_impl(&dword_181A37000, v162, v159, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v161);
            goto LABEL_272;
          }

          if (v163)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v160 = "%{public}s called with null protocol, no backtrace";
            v164 = v162;
            goto LABEL_271;
          }
        }

        else
        {
          v158 = __nwlog_obj();
          v159 = v224[0];
          if (os_log_type_enabled(v158, v224[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v160 = "%{public}s called with null protocol, backtrace limit exceeded";
            goto LABEL_270;
          }
        }
      }

LABEL_272:
      if (v157)
      {
        free(v157);
      }

      *(v229 + 6) = 0;
      v11 = v187;
      goto LABEL_275;
    }

    v20 = output_handler->handle;
    v21 = v6->output_handler;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v21 = *output_handler[1].flow_id) != 0)
    {
      v23 = v21[1].callbacks;
      v22 = 0;
      if (v23)
      {
        v21[1].callbacks = (&v23->add_input_handler + 1);
      }
    }

    else
    {
      v22 = 1;
    }

    v24 = v6->handle;
    v25 = v6;
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *v6[1].flow_id) != 0)
    {
      v113 = v25[1].callbacks;
      if (v113)
      {
        v26 = 0;
        v25[1].callbacks = (&v113->add_input_handler + 1);
        if (!a6)
        {
          goto LABEL_182;
        }
      }

      else
      {
        v26 = 0;
        if (!a6)
        {
LABEL_182:
          v114 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          LODWORD(v172) = 12;
          v115 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v114, 16, "%{public}s called with null return_array", buf, v172);
          v224[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v222[0]) = 0;
          v181 = v115;
          if (!__nwlog_fault(v115, v224, v222))
          {
            goto LABEL_220;
          }

          if (v224[0] == OS_LOG_TYPE_FAULT)
          {
            v116 = __nwlog_obj();
            v117 = v224[0];
            *typea = v116;
            if (!os_log_type_enabled(v116, v224[0]))
            {
              goto LABEL_220;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v118 = *typea;
            v119 = v117;
            v120 = "%{public}s called with null return_array";
            v121 = 12;
            goto LABEL_219;
          }

          if (LOBYTE(v222[0]) != 1)
          {
            v139 = __nwlog_obj();
            v140 = v224[0];
            *typef = v139;
            if (!os_log_type_enabled(v139, v224[0]))
            {
              goto LABEL_220;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v118 = *typef;
            v119 = v140;
            v120 = "%{public}s called with null return_array, backtrace limit exceeded";
            v121 = 12;
            goto LABEL_219;
          }

          v128 = __nw_create_backtrace_string();
          typed = __nwlog_obj();
          HIDWORD(v172) = v224[0];
          v135 = os_log_type_enabled(typed, v224[0]);
          if (v128)
          {
            if (v135)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v128;
              v131 = typed;
              v132 = BYTE4(v172);
              v133 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
              v134 = 22;
LABEL_206:
              _os_log_impl(&dword_181A37000, v131, v132, v133, buf, v134);
              goto LABEL_207;
            }

            goto LABEL_207;
          }

          if (v135)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v118 = typed;
            v119 = BYTE4(v172);
            v120 = "%{public}s called with null return_array, no backtrace";
            v121 = 12;
            goto LABEL_219;
          }

          goto LABEL_220;
        }
      }
    }

    else
    {
      v26 = 1;
      if (!a6)
      {
        goto LABEL_182;
      }
    }

    v27 = output_handler->callbacks;
    if (v27)
    {
      get_input_frames = v27->get_input_frames;
      if (get_input_frames)
      {
        v29 = get_input_frames(output_handler, v6, v184, v183, a5);
        if (v26)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }
    }

    v122 = __nwlog_obj();
    name = output_handler->identifier->name;
    if (!name)
    {
      name = "invalid";
    }

    *buf = 136446722;
    *&buf[4] = "__nw_protocol_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = name;
    *&buf[22] = 2048;
    v235 = output_handler;
    LODWORD(v172) = 32;
    v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v122, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, v172);
    v224[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v222[0]) = 0;
    v181 = v124;
    if (__nwlog_fault(v124, v224, v222))
    {
      if (v224[0] == OS_LOG_TYPE_FAULT)
      {
        v125 = __nwlog_obj();
        v126 = v224[0];
        *typeb = v125;
        if (!os_log_type_enabled(v125, v224[0]))
        {
          goto LABEL_220;
        }

        v127 = output_handler->identifier->name;
        if (!v127)
        {
          v127 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v127;
        *&buf[22] = 2048;
        v235 = output_handler;
        v118 = *typeb;
        v119 = v126;
        v120 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
      }

      else if (LOBYTE(v222[0]) == 1)
      {
        v128 = __nw_create_backtrace_string();
        typec = __nwlog_obj();
        HIDWORD(v172) = v224[0];
        v129 = os_log_type_enabled(typec, v224[0]);
        if (v128)
        {
          if (v129)
          {
            v130 = output_handler->identifier->name;
            if (!v130)
            {
              v130 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v130;
            *&buf[22] = 2048;
            v235 = output_handler;
            v236 = 2082;
            v237 = v128;
            v131 = typec;
            v132 = BYTE4(v172);
            v133 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s";
            v134 = 42;
            goto LABEL_206;
          }

LABEL_207:
          free(v128);
          goto LABEL_220;
        }

        if (!v129)
        {
          goto LABEL_220;
        }

        v141 = output_handler->identifier->name;
        if (!v141)
        {
          v141 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v141;
        *&buf[22] = 2048;
        v235 = output_handler;
        v118 = typec;
        v119 = BYTE4(v172);
        v120 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
      }

      else
      {
        v136 = __nwlog_obj();
        v137 = v224[0];
        *typee = v136;
        if (!os_log_type_enabled(v136, v224[0]))
        {
          goto LABEL_220;
        }

        v138 = output_handler->identifier->name;
        if (!v138)
        {
          v138 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v138;
        *&buf[22] = 2048;
        v235 = output_handler;
        v118 = *typee;
        v119 = v137;
        v120 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
      }

      v121 = 32;
LABEL_219:
      _os_log_impl(&dword_181A37000, v118, v119, v120, buf, v121);
    }

LABEL_220:
    if (v181)
    {
      free(v181);
    }

    v29 = 0;
    if ((v26 & 1) == 0)
    {
LABEL_38:
      v30 = v6->handle;
      v31 = v6;
      if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *v6[1].flow_id) != 0)
      {
        v32 = v31[1].callbacks;
        if (v32)
        {
          v33 = (v32 - 1);
          v31[1].callbacks = v33;
          if (!v33)
          {
            v34 = v29;
            v35 = *v31[1].flow_id;
            if (v35)
            {
              *v31[1].flow_id = 0;
              v35[2](v35);
              _Block_release(v35);
            }

            if (v31[1].flow_id[8])
            {
              v36 = *v31[1].flow_id;
              if (v36)
              {
                _Block_release(v36);
              }
            }

            free(v31);
            v29 = v34;
            v11 = v187;
          }
        }
      }
    }

LABEL_49:
    if ((v22 & 1) == 0)
    {
      v37 = output_handler->handle;
      if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v38 = output_handler[1].callbacks;
        if (v38)
        {
          v39 = (v38 - 1);
          output_handler[1].callbacks = v39;
          if (!v39)
          {
            v40 = v29;
            v41 = *output_handler[1].flow_id;
            if (v41)
            {
              *output_handler[1].flow_id = 0;
              v41[2](v41);
              _Block_release(v41);
            }

            if (output_handler[1].flow_id[8])
            {
              v42 = *output_handler[1].flow_id;
              if (v42)
              {
                _Block_release(v42);
              }
            }

            free(output_handler);
            v29 = v40;
            v11 = v187;
          }
        }
      }
    }

    *(v229 + 6) = v29;
    if (!v29)
    {
LABEL_275:
      if ((BYTE1(v11[3].handle) & 1) == 0 && gLogDatapath == 1)
      {
        v171 = __nwlog_obj();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v182;
          *&buf[22] = 2080;
          v235 = " ";
          v236 = 2048;
          v237 = p_output_handler;
          _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p No IPv4 input frame", buf, 0x2Au);
        }
      }

      goto LABEL_277;
    }

    *v224 = 0;
    v225 = v224;
    v226 = 0x2000000000;
    v227 = 0;
    v222[0] = 0;
    v222[1] = v222;
    v222[2] = 0x2000000000;
    v223 = 0;
    v218[0] = 0;
    v218[1] = v218;
    v218[2] = 0x2000000000;
    v219 = 0;
    v220 = 0;
    v221 = &v220;
    v208[0] = MEMORY[0x1E69E9820];
    v208[1] = 0x40000000;
    v209 = ___ZL33nw_protocol_ipv4_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v210 = &unk_1E6A3CF78;
    v211 = v222;
    v212 = v218;
    v215 = v186;
    v216 = p_output_handler;
    v217 = &v220;
    v213 = &v228;
    v214 = v224;
    tqh_first = v186->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v44 = *(tqh_first + 4);
      v45 = v209(v208);
      tqh_first = v44;
    }

    while ((v45 & 1) != 0);
    v207 = 0;
    do
    {
      v46 = nw_protocol_ipv4_process_reassembly(p_output_handler, 0, &v220, 0, &v207);
      *(v229 + 6) += v46;
      if (v207 != 1)
      {
        break;
      }

      v206[0] = 0;
      v206[1] = v206;
      v202 = 0;
      v203 = &v202;
      v204 = 0x2000000000;
      v47 = v6->output_handler;
      if (!v47)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        LODWORD(v172) = 12;
        v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null protocol", buf, v172);
        v233 = OS_LOG_TYPE_ERROR;
        v232 = 0;
        if (!__nwlog_fault(v96, &v233, &v232))
        {
          goto LABEL_169;
        }

        if (v233 == OS_LOG_TYPE_FAULT)
        {
          v97 = __nwlog_obj();
          v98 = v233;
          if (os_log_type_enabled(v97, v233))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v99 = v97;
            v100 = v98;
            v101 = "%{public}s called with null protocol";
            goto LABEL_168;
          }

          goto LABEL_169;
        }

        if (v232 == 1)
        {
          v102 = __nw_create_backtrace_string();
          v103 = __nwlog_obj();
          v104 = v233;
          v105 = os_log_type_enabled(v103, v233);
          if (v102)
          {
            if (v105)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v102;
              _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v102);
            goto LABEL_169;
          }

          if (!v105)
          {
LABEL_169:
            if (v96)
            {
              free(v96);
            }

            v58 = 0;
LABEL_97:
            v11 = v187;
            goto LABEL_111;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          v99 = v103;
          v100 = v104;
          v101 = "%{public}s called with null protocol, no backtrace";
        }

        else
        {
          v106 = __nwlog_obj();
          v107 = v233;
          if (!os_log_type_enabled(v106, v233))
          {
            goto LABEL_169;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          v99 = v106;
          v100 = v107;
          v101 = "%{public}s called with null protocol, backtrace limit exceeded";
        }

LABEL_168:
        _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
        goto LABEL_169;
      }

      v48 = v47->handle;
      v49 = v6->output_handler;
      if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *v47[1].flow_id) != 0)
      {
        v51 = v49[1].callbacks;
        v50 = 0;
        if (v51)
        {
          v49[1].callbacks = (&v51->add_input_handler + 1);
        }
      }

      else
      {
        v50 = 1;
      }

      v52 = v6->handle;
      v53 = v6;
      if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v53 = *v6[1].flow_id) != 0)
      {
        v56 = v53[1].callbacks;
        if (v56)
        {
          v54 = 0;
          v53[1].callbacks = (&v56->add_input_handler + 1);
          v55 = v47->callbacks;
          if (!v55)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v54 = 0;
          v55 = v47->callbacks;
          if (!v55)
          {
            goto LABEL_123;
          }
        }
      }

      else
      {
        v54 = 1;
        v55 = v47->callbacks;
        if (!v55)
        {
          goto LABEL_123;
        }
      }

      v57 = v55->get_input_frames;
      if (v57)
      {
        v58 = v57(v47, v6, 1, 0xFFFFFFFFLL, 1, v206);
        if (v54)
        {
          goto LABEL_96;
        }

LABEL_85:
        v59 = v6->handle;
        v60 = v6;
        if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *v6[1].flow_id) != 0)
        {
          v61 = v60[1].callbacks;
          if (v61)
          {
            v62 = (v61 - 1);
            v60[1].callbacks = v62;
            if (!v62)
            {
              v63 = *v60[1].flow_id;
              if (v63)
              {
                *v60[1].flow_id = 0;
                v63[2](v63);
                _Block_release(v63);
              }

              if (v60[1].flow_id[8])
              {
                v64 = *v60[1].flow_id;
                if (v64)
                {
                  _Block_release(v64);
                }
              }

              free(v60);
            }
          }
        }

        goto LABEL_96;
      }

LABEL_123:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v77 = v47->identifier->name;
      if (!v77)
      {
        v77 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v77;
      *&buf[22] = 2048;
      v235 = v47;
      LODWORD(v172) = 32;
      v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, v172);
      v233 = OS_LOG_TYPE_ERROR;
      v232 = 0;
      v180 = v78;
      if (__nwlog_fault(v78, &v233, &v232))
      {
        if (v233 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v79 = gLogObj;
          v80 = v233;
          if (!os_log_type_enabled(gLogObj, v233))
          {
            goto LABEL_151;
          }

          v81 = v47->identifier->name;
          if (!v81)
          {
            v81 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v81;
          *&buf[22] = 2048;
          v235 = v47;
          v82 = v79;
          v83 = v80;
          v84 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
LABEL_150:
          _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0x20u);
          goto LABEL_151;
        }

        if (v232 != 1)
        {
          v92 = __nwlog_obj();
          v93 = v233;
          if (!os_log_type_enabled(v92, v233))
          {
            goto LABEL_151;
          }

          v94 = v47->identifier->name;
          if (!v94)
          {
            v94 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          *&buf[22] = 2048;
          v235 = v47;
          v82 = v92;
          v83 = v93;
          v84 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
          goto LABEL_150;
        }

        v85 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        type = v233;
        v87 = os_log_type_enabled(v86, v233);
        if (!v85)
        {
          if (!v87)
          {
            goto LABEL_151;
          }

          v95 = v47->identifier->name;
          if (!v95)
          {
            v95 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v95;
          *&buf[22] = 2048;
          v235 = v47;
          v82 = v86;
          v83 = type;
          v84 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
          goto LABEL_150;
        }

        if (v87)
        {
          v88 = v47->identifier->name;
          if (!v88)
          {
            v88 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v88;
          *&buf[22] = 2048;
          v235 = v47;
          v236 = 2082;
          v237 = v85;
          _os_log_impl(&dword_181A37000, v86, type, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v85);
      }

LABEL_151:
      if (v180)
      {
        free(v180);
      }

      v58 = 0;
      if ((v54 & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_96:
      if (v50)
      {
        goto LABEL_97;
      }

      v65 = v47->handle;
      if (v65 == &nw_protocol_ref_counted_handle)
      {
        v11 = v187;
        v66 = v47[1].callbacks;
        if (!v66)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v11 = v187;
        if (v65 != &nw_protocol_ref_counted_additional_handle)
        {
          goto LABEL_111;
        }

        v47 = *v47[1].flow_id;
        if (!v47)
        {
          goto LABEL_111;
        }

        v66 = v47[1].callbacks;
        if (!v66)
        {
          goto LABEL_111;
        }
      }

      v67 = (v66 - 1);
      v47[1].callbacks = v67;
      if (!v67)
      {
        v68 = *v47[1].flow_id;
        if (v68)
        {
          *v47[1].flow_id = 0;
          v68[2](v68);
          _Block_release(v68);
        }

        if (v47[1].flow_id[8])
        {
          v69 = *v47[1].flow_id;
          if (v69)
          {
            _Block_release(v69);
          }
        }

        free(v47);
      }

LABEL_111:
      v205 = v58;
      if (!*(v203 + 6))
      {
        goto LABEL_172;
      }

      if ((BYTE1(v11[3].handle) & 1) == 0 && gLogDatapath == 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v89 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(v203 + 6);
          v91 = "s";
          if (v90 == 1)
          {
            v91 = "";
          }

          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v182;
          *&buf[22] = 2080;
          v235 = " ";
          v236 = 2048;
          v237 = p_output_handler;
          v238 = 1024;
          v239 = v90;
          v240 = 2080;
          v241 = v91;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Found %u IPv4 extra fragment%s", buf, 0x3Au);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LOBYTE(v235) = 0;
      v193[0] = MEMORY[0x1E69E9820];
      v193[1] = 0x40000000;
      v194 = ___ZL33nw_protocol_ipv4_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_22;
      v195 = &unk_1E6A3CFA0;
      v200 = v206;
      v201 = &v220;
      v196 = &v202;
      v197 = v224;
      v198 = buf;
      v199 = p_output_handler;
      v70 = v206[0];
      do
      {
        if (!v70)
        {
          break;
        }

        v71 = *(v70 + 32);
        v72 = v194(v193);
        v70 = v71;
      }

      while ((v72 & 1) != 0);
      v188[0] = MEMORY[0x1E69E9820];
      v188[1] = 0x40000000;
      v189 = ___ZL33nw_protocol_ipv4_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_2;
      v190 = &__block_descriptor_tmp_24_91712;
      v191 = v206;
      v192 = p_output_handler;
      v73 = v206[0];
      do
      {
        if (!v73)
        {
          break;
        }

        v74 = *(v73 + 32);
        v75 = (v189)(v188);
        v73 = v74;
      }

      while ((v75 & 1) != 0);
      v76 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v76 == 1)
      {
LABEL_172:
        _Block_object_dispose(&v202, 8);
        break;
      }

      _Block_object_dispose(&v202, 8);
    }

    while ((v207 & 1) != 0);
    if (v220)
    {
      tqh_last = v186->tqh_last;
      *tqh_last = v220;
      v109 = v221;
      *(v220 + 40) = tqh_last;
      v186->tqh_last = v109;
      v220 = 0;
      v221 = &v220;
    }

    *(v229 + 6) += *(v225 + 6);
    v110 = nw_protocol_ipv4_process_reassembly(p_output_handler, 0, v186, 1, 0);
    v111 = *(v229 + 6) + v110;
    *(v229 + 6) = v111;
    if (!v111)
    {
      if ((BYTE1(v11[3].handle) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v112 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv4_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v182;
          *&buf[22] = 2080;
          v235 = " ";
          v236 = 2048;
          v237 = p_output_handler;
          _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Dropped inbound packets, checking for more", buf, 0x2Au);
        }
      }

      _Block_object_dispose(v218, 8);
      _Block_object_dispose(v222, 8);
      _Block_object_dispose(v224, 8);
      a6 = v186;
      continue;
    }

    break;
  }

  _Block_object_dispose(v218, 8);
  _Block_object_dispose(v222, 8);
  _Block_object_dispose(v224, 8);
LABEL_277:
  v148 = *(v229 + 6);
  _Block_object_dispose(&v228, 8);
  if ((v9 & 1) == 0)
  {
LABEL_278:
    v165 = v6->handle;
    if (v165 == &nw_protocol_ref_counted_handle || v165 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
    {
      v166 = v6[1].callbacks;
      if (v166)
      {
        v167 = (v166 - 1);
        v6[1].callbacks = v167;
        if (!v167)
        {
          v168 = *v6[1].flow_id;
          if (v168)
          {
            *v6[1].flow_id = 0;
            v168[2](v168);
            _Block_release(v168);
          }

          if (v6[1].flow_id[8])
          {
            v169 = *v6[1].flow_id;
            if (v169)
            {
              _Block_release(v169);
            }
          }

          free(v6);
        }
      }
    }
  }

  return v148;
}

BOOL nw_protocol_ipv4_process_input_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v166 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v91 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s called with null ipv4", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v92, type, &v155))
    {
      goto LABEL_255;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v155 != 1)
      {
        v93 = __nwlog_obj();
        v94 = type[0];
        if (os_log_type_enabled(v93, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          v95 = "%{public}s called with null ipv4, backtrace limit exceeded";
          goto LABEL_254;
        }

        goto LABEL_255;
      }

      backtrace_string = __nw_create_backtrace_string();
      v93 = __nwlog_obj();
      v94 = type[0];
      v118 = os_log_type_enabled(v93, type[0]);
      if (!backtrace_string)
      {
        if (v118)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          v95 = "%{public}s called with null ipv4, no backtrace";
          goto LABEL_254;
        }

        goto LABEL_255;
      }

      if (!v118)
      {
        goto LABEL_218;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_ipv4_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v119 = "%{public}s called with null ipv4, dumping backtrace:%{public}s";
      goto LABEL_217;
    }

    v93 = __nwlog_obj();
    v94 = type[0];
    if (!os_log_type_enabled(v93, type[0]))
    {
      goto LABEL_255;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v95 = "%{public}s called with null ipv4";
LABEL_254:
    _os_log_impl(&dword_181A37000, v93, v94, v95, buf, 0xCu);
    goto LABEL_255;
  }

  if (!a2)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v96, 16, "%{public}s called with null frame", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v92, type, &v155))
    {
      goto LABEL_255;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v155 != 1)
      {
        v93 = __nwlog_obj();
        v94 = type[0];
        if (os_log_type_enabled(v93, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          v95 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_254;
        }

        goto LABEL_255;
      }

      backtrace_string = __nw_create_backtrace_string();
      v93 = __nwlog_obj();
      v94 = type[0];
      v120 = os_log_type_enabled(v93, type[0]);
      if (!backtrace_string)
      {
        if (v120)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          v95 = "%{public}s called with null frame, no backtrace";
          goto LABEL_254;
        }

        goto LABEL_255;
      }

      if (!v120)
      {
        goto LABEL_218;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_ipv4_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v119 = "%{public}s called with null frame, dumping backtrace:%{public}s";
      goto LABEL_217;
    }

    v93 = __nwlog_obj();
    v94 = type[0];
    if (!os_log_type_enabled(v93, type[0]))
    {
      goto LABEL_255;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v95 = "%{public}s called with null frame";
    goto LABEL_254;
  }

  if (!a5)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null count", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v92, type, &v155))
    {
      goto LABEL_255;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = type[0];
      if (!os_log_type_enabled(v93, type[0]))
      {
        goto LABEL_255;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv4_process_input_frame";
      v95 = "%{public}s called with null count";
      goto LABEL_254;
    }

    if (v155 != 1)
    {
      v93 = __nwlog_obj();
      v94 = type[0];
      if (os_log_type_enabled(v93, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        v95 = "%{public}s called with null count, backtrace limit exceeded";
        goto LABEL_254;
      }

      goto LABEL_255;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = type[0];
    v121 = os_log_type_enabled(v93, type[0]);
    if (!backtrace_string)
    {
      if (v121)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        v95 = "%{public}s called with null count, no backtrace";
        goto LABEL_254;
      }

      goto LABEL_255;
    }

    if (!v121)
    {
      goto LABEL_218;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v119 = "%{public}s called with null count, dumping backtrace:%{public}s";
LABEL_217:
    _os_log_impl(&dword_181A37000, v93, v94, v119, buf, 0x16u);
    goto LABEL_218;
  }

  if (!a6)
  {
    v98 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s called with null reassembly_count", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v92, type, &v155))
    {
      goto LABEL_255;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = type[0];
      if (os_log_type_enabled(v93, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        v95 = "%{public}s called with null reassembly_count";
        goto LABEL_254;
      }

LABEL_255:
      if (!v92)
      {
        return 0;
      }

      v64 = v92;
      goto LABEL_103;
    }

    if (v155 != 1)
    {
      v93 = __nwlog_obj();
      v94 = type[0];
      if (os_log_type_enabled(v93, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        v95 = "%{public}s called with null reassembly_count, backtrace limit exceeded";
        goto LABEL_254;
      }

      goto LABEL_255;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = type[0];
    v122 = os_log_type_enabled(v93, type[0]);
    if (!backtrace_string)
    {
      if (v122)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        v95 = "%{public}s called with null reassembly_count, no backtrace";
        goto LABEL_254;
      }

      goto LABEL_255;
    }

    if (v122)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ipv4_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v119 = "%{public}s called with null reassembly_count, dumping backtrace:%{public}s";
      goto LABEL_217;
    }

LABEL_218:
    free(backtrace_string);
    goto LABEL_255;
  }

  if (!*(a2 + 112) || (*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && (v11 = a4, v12 = g_channel_check_validity(a2, *(a2 + 88)), a4 = v11, !v12))
  {
    v15 = 0;
    v16 = 0;
    if ((*(a2 + 204) & 0x80) != 0)
    {
LABEL_15:
      v15 = *(a2 + 196);
    }
  }

  else
  {
    v14 = *(a2 + 52);
    v13 = *(a2 + 56);
    if (v14)
    {
      v15 = v14 - (v13 + *(a2 + 60));
    }

    else
    {
      v15 = 0;
    }

    v16 = (*(a2 + 112) + v13);
    if ((*(a2 + 204) & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  if (!v16)
  {
    if (*(a1 + 137))
    {
      goto LABEL_230;
    }

    v99 = __nwlog_obj();
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
    {
      goto LABEL_230;
    }

    goto LABEL_229;
  }

  if (v15 <= 0x13)
  {
    if ((*(a1 + 137) & 1) == 0)
    {
      v100 = __nwlog_obj();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v15;
        _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Received IPv4 packet with incorrect length %u", buf, 0x30u);
      }
    }

    v101 = *(a1 + 48);
    if (v101)
    {
      result = 0;
      ++*(v101 + 40);
      return result;
    }

    return 0;
  }

  if ((v16->i8[0] & 0xF0) != 0x40)
  {
    if ((*(a1 + 137) & 1) == 0)
    {
      v102 = __nwlog_obj();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v103 = v16->u8[0] >> 4;
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v103;
        _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Invalid IPv4 version: %d", buf, 0x30u);
      }
    }

    v104 = *(a1 + 48);
    if (v104)
    {
      result = 0;
      ++*(v104 + 96);
      return result;
    }

    return 0;
  }

  v17 = 4 * (v16->i8[0] & 0x3F);
  if (v17 <= 0x13)
  {
    if ((*(a1 + 137) & 1) == 0)
    {
      v105 = __nwlog_obj();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v17;
        v106 = "%{public}s %{public}s%s%p Invalid header length: %u";
        v107 = v105;
        v108 = 48;
LABEL_198:
        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_ERROR, v106, buf, v108);
        goto LABEL_199;
      }
    }

    goto LABEL_199;
  }

  if (v15 < v17)
  {
    if ((*(a1 + 137) & 1) == 0)
    {
      v109 = __nwlog_obj();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v17;
        v162 = 1024;
        *v163 = v15;
        v106 = "%{public}s %{public}s%s%p Invalid header length: %u > %u";
LABEL_197:
        v107 = v109;
        v108 = 54;
        goto LABEL_198;
      }
    }

LABEL_199:
    v116 = *(a1 + 48);
    if (v116)
    {
      result = 0;
      ++*(v116 + 72);
      return result;
    }

    return 0;
  }

  if (v16->i32[3] == *(a1 + 60))
  {
    v18 = v16[1].i32[0];
    if (v18 != *(a1 + 56) && v18 != -1 && (v16[1].i32[0] & 0xF0) != 0xE0)
    {
      v28 = *(a1 + 128);
      if ((!v28 || v18 != v28) && (!v28 || (v29 = *(a1 + 124)) == 0 || v18 != (v29 & v28)))
      {
        if ((*(a1 + 137) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v32 = v16[1].i32[0];
            v33 = *(a1 + 56);
            v35 = *(a1 + 124);
            v34 = *(a1 + 128);
            *buf = 136448002;
            *&buf[4] = "nw_protocol_ipv4_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            v157 = " ";
            v158 = 2048;
            v159 = a1;
            v160 = 1024;
            v161 = v32;
            v162 = 1024;
            *v163 = v33;
            *&v163[4] = 1024;
            *&v163[6] = v34;
            v164 = 1024;
            v165 = v35;
            v36 = "%{public}s %{public}s%s%p Received local address 0x%x != 0x%x (broadcast %x, netmask %x)";
            v37 = v30;
            v38 = 66;
LABEL_48:
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
            return 0;
          }

          return result;
        }

        return 0;
      }
    }

    v19 = bswap32(v16->u16[1]) >> 16;
    v20 = v15 - v19;
    if (v15 < v19)
    {
      if ((*(a1 + 137) & 1) == 0)
      {
        v113 = __nwlog_obj();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          v157 = " ";
          v158 = 2048;
          v159 = a1;
          v160 = 1024;
          v161 = v19;
          v162 = 1024;
          *v163 = v15;
          _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Received IPv4 packet with incorrect length, expected %u received %u", buf, 0x36u);
        }
      }

      v114 = *(a1 + 48);
      if (v114)
      {
        result = 0;
        ++*(v114 + 64);
        return result;
      }

      return 0;
    }

    if (v15 != v19 && (*(a1 + 137) & 1) == 0 && gLogDatapath == 1)
    {
      v146 = a4;
      loga = __nwlog_obj();
      v115 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
      a4 = v146;
      if (v115)
      {
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v19;
        v162 = 1024;
        *v163 = v15;
        _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Received length mismatch with IP total length %u != %u", buf, 0x36u);
        a4 = v146;
      }
    }

    if (v17 <= v19)
    {
      if ((v16->i16[3] & 0xFF3F) != 0)
      {
        if ((*(a2 + 204) & 0x80) == 0)
        {
          *a6 += nw_protocol_ipv4_process_reassembly(a1, v16->u16[2], a4, 0, 0);
          if (*(a2 + 205) & 1) == 0 || !g_channel_check_validity || (g_channel_check_validity(a2, *(a2 + 88)))
          {
            v21 = (bswap32(v16->u16[3]) >> 13) & 0x7FFF8;
            if ((*(a1 + 137) & 1) == 0 && gLogDatapath == 1)
            {
              v127 = __nwlog_obj();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
              {
                v128 = v16->u16[2];
                *buf = 136447490;
                *&buf[4] = "nw_protocol_ipv4_process_input_frame";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 138;
                *&buf[22] = 2080;
                v157 = " ";
                v158 = 2048;
                v159 = a1;
                v160 = 1024;
                v161 = v128;
                v162 = 1024;
                *v163 = v21;
                _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Got fragment for IP ID %u at offset %u", buf, 0x36u);
              }
            }

            v22 = (a3 + 8);
            v23 = *(a2 + 32);
            v24 = *(a2 + 40);
            v25 = (a2 + 32);
            if (v23)
            {
              v22 = (v23 + 40);
            }

            *v22 = v24;
            *v24 = v23;
            *v25 = 0;
            *(a2 + 40) = 0;
            v26 = v16->u16[3];
            if ((v26 & 0xFFFFFF1F) != 0)
            {
              if ((v26 & 0x20) != 0)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2000000000;
                LOBYTE(v157) = 0;
                v148[0] = MEMORY[0x1E69E9820];
                v148[1] = 0x40000000;
                v149 = ___ZL36nw_protocol_ipv4_process_input_frameP16nw_protocol_ipv4P8nw_frameP16nw_frame_array_sS4_PjS5__block_invoke;
                v150 = &unk_1E6A3CFE8;
                v154 = v21;
                v152 = a1;
                v153 = a2;
                v151 = buf;
                v56 = *(a1 + 64);
                do
                {
                  if (!v56)
                  {
                    break;
                  }

                  v57 = *(v56 + 32);
                  v58 = (v149)(v148);
                  v56 = v57;
                }

                while ((v58 & 1) != 0);
                if ((*(*&buf[8] + 24) & 1) == 0)
                {
                  *(a2 + 32) = 0;
                  v59 = *(a1 + 72);
                  *(a2 + 40) = v59;
                  *v59 = a2;
                  *(a1 + 72) = v25;
                }

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v27 = *(a1 + 72);
                *(a2 + 40) = v27;
                *v27 = a2;
                *(a1 + 72) = v25;
              }
            }

            else
            {
              nw_frame_array_prepend((a1 + 64), 1, a2);
            }

            --*a5;
            return 1;
          }

          if ((*(a1 + 137) & 1) != 0 || (v99 = __nwlog_obj(), !os_log_type_enabled(v99, OS_LOG_TYPE_INFO)))
          {
LABEL_230:
            result = 0;
            *(a1 + 48) = 0;
            return result;
          }

LABEL_229:
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv4_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          v157 = " ";
          v158 = 2048;
          v159 = a1;
          _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
          goto LABEL_230;
        }

        if (*(a1 + 137))
        {
          return 0;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v15;
        v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%s%p Received fragment on a super-packet with length %u", buf, 48);
        type[0] = OS_LOG_TYPE_ERROR;
        v155 = 0;
        if (!__nwlog_fault(v49, type, &v155))
        {
          goto LABEL_101;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          v51 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv4_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            v157 = " ";
            v158 = 2048;
            v159 = a1;
            v160 = 1024;
            v161 = v15;
            v52 = "%{public}s %{public}s%s%p Received fragment on a super-packet with length %u";
LABEL_100:
            _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0x30u);
          }
        }

        else if (v155 == 1)
        {
          v54 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          v51 = type[0];
          v55 = os_log_type_enabled(gLogObj, type[0]);
          if (v54)
          {
            if (v55)
            {
              *buf = 136447490;
              *&buf[4] = "nw_protocol_ipv4_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 138;
              *&buf[22] = 2080;
              v157 = " ";
              v158 = 2048;
              v159 = a1;
              v160 = 1024;
              v161 = v15;
              v162 = 2082;
              *v163 = v54;
              _os_log_impl(&dword_181A37000, v50, v51, "%{public}s %{public}s%s%p Received fragment on a super-packet with length %u, dumping backtrace:%{public}s", buf, 0x3Au);
            }

            free(v54);
            goto LABEL_101;
          }

          if (v55)
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv4_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            v157 = " ";
            v158 = 2048;
            v159 = a1;
            v160 = 1024;
            v161 = v15;
            v52 = "%{public}s %{public}s%s%p Received fragment on a super-packet with length %u, no backtrace";
            goto LABEL_100;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          v51 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv4_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            v157 = " ";
            v158 = 2048;
            v159 = a1;
            v160 = 1024;
            v161 = v15;
            v52 = "%{public}s %{public}s%s%p Received fragment on a super-packet with length %u, backtrace limit exceeded";
            goto LABEL_100;
          }
        }

LABEL_101:
        if (!v49)
        {
          return 0;
        }

        v64 = v49;
LABEL_103:
        free(v64);
        return 0;
      }

      *a6 += nw_protocol_ipv4_process_reassembly(a1, 0, a4, 0, 0);
      if ((*(a2 + 205) & 1) != 0 && g_channel_check_validity && (g_channel_check_validity(a2, *(a2 + 88)) & 1) == 0)
      {
        if (*(a1 + 137))
        {
          goto LABEL_230;
        }

        v99 = __nwlog_obj();
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
        {
          goto LABEL_230;
        }

        goto LABEL_229;
      }

      v40 = v16->i8[1];
      *(a2 + 186) = *(a2 + 186) & 0xFC | v40 & 3;
      if ((v40 & 3u) > 1)
      {
        if ((v40 & 3) == 3)
        {
          v53 = 32;
        }

        else
        {
          v53 = 24;
        }
      }

      else
      {
        if ((v40 & 3) == 0)
        {
          v41 = *(a1 + 137);
          if ((v41 & 2) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_88;
        }

        v53 = 16;
      }

      ++*(a1 + v53);
      v41 = *(a1 + 137);
      if ((v41 & 2) == 0)
      {
LABEL_55:
        if ((v41 & 0x80) == 0)
        {
          goto LABEL_56;
        }

LABEL_89:
        *(a2 + 185) = v16->i8[8];
LABEL_56:
        *(a2 + 184) = v16->i8[1] >> 2;
        if ((*(a2 + 204) & 8) != 0)
        {
          goto LABEL_111;
        }

        v42 = a2 + 120;
        v43 = *(a2 + 168);
        if (v43)
        {
          os_release(v43);
          *(a2 + 168) = 0;
        }

        v44 = *(a2 + 64);
        *(a2 + 186) |= 0x40u;
        if (!v44)
        {
          *(a2 + 64) = v42;
          *(a2 + 72) = v42;
          *(a2 + 120) = 0;
          *(a2 + 128) = a2 + 64;
          goto LABEL_111;
        }

        if (v44 == v42)
        {
          goto LABEL_111;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446722;
        *&buf[4] = "__nw_frame_set_metadata";
        *&buf[12] = 2048;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        v157 = (a2 + 120);
        v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Existing metadata %p doesn't match expected %p", buf, 32);
        type[0] = OS_LOG_TYPE_ERROR;
        v155 = 0;
        if (__nwlog_fault(v45, type, &v155))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v47 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_109;
            }

            *buf = 136446722;
            *&buf[4] = "__nw_frame_set_metadata";
            *&buf[12] = 2048;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            v157 = (a2 + 120);
            v48 = "%{public}s Existing metadata %p doesn't match expected %p";
LABEL_107:
            v65 = v46;
LABEL_108:
            _os_log_impl(&dword_181A37000, v65, v47, v48, buf, 0x20u);
            goto LABEL_109;
          }

          if (v155 != 1)
          {
            v46 = __nwlog_obj();
            v47 = type[0];
            if (!os_log_type_enabled(v46, type[0]))
            {
              goto LABEL_109;
            }

            *buf = 136446722;
            *&buf[4] = "__nw_frame_set_metadata";
            *&buf[12] = 2048;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            v157 = (a2 + 120);
            v48 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
            goto LABEL_107;
          }

          v61 = __nw_create_backtrace_string();
          v62 = __nwlog_obj();
          v47 = type[0];
          log = v62;
          v63 = os_log_type_enabled(v62, type[0]);
          if (v61)
          {
            if (v63)
            {
              *buf = 136446978;
              *&buf[4] = "__nw_frame_set_metadata";
              *&buf[12] = 2048;
              *&buf[14] = v44;
              *&buf[22] = 2048;
              v157 = (a2 + 120);
              v158 = 2082;
              v159 = v61;
              _os_log_impl(&dword_181A37000, log, v47, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v61);
            goto LABEL_109;
          }

          if (v63)
          {
            *buf = 136446722;
            *&buf[4] = "__nw_frame_set_metadata";
            *&buf[12] = 2048;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            v157 = (a2 + 120);
            v48 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
            v65 = log;
            goto LABEL_108;
          }
        }

LABEL_109:
        if (v45)
        {
          free(v45);
        }

LABEL_111:
        if (v16->u8[9] != *(a1 + 134))
        {
          if ((*(a1 + 137) & 1) == 0)
          {
            v123 = __nwlog_obj();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              v124 = v16->u8[9];
              v125 = *(a1 + 134);
              *buf = 136447490;
              *&buf[4] = "nw_protocol_ipv4_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 138;
              *&buf[22] = 2080;
              v157 = " ";
              v158 = 2048;
              v159 = a1;
              v160 = 1024;
              v161 = v124;
              v162 = 1024;
              *v163 = v125;
              _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Invalid IPv4 protocol %u (expected %u)", buf, 0x36u);
            }
          }

          v126 = *(a1 + 48);
          if (v126)
          {
            result = 0;
            ++*(v126 + 144);
            return result;
          }

          return 0;
        }

        v66 = *(a2 + 204);
        if ((v66 & 0x100) != 0)
        {
          v155 = 0;
          *buf = 0;
          *type = 0;
          if (g_channel_get_internet_checksum_handler)
          {
            g_channel_get_internet_checksum_handler(a2, &v155, buf, type);
            v66 = *(a2 + 204);
          }
        }

        if ((v66 & 0x400) != 0)
        {
          if ((v66 & 0x800) != 0)
          {
LABEL_142:
            v90 = *(a1 + 48);
            if (v90)
            {
              ++*(v90 + 136);
            }

            nw_frame_claim(a2, v39, v17, v20);
            ++*(a1 + 8);
            return 1;
          }

          if ((*(a1 + 137) & 1) == 0)
          {
            v71 = __nwlog_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_243;
            }
          }

          goto LABEL_244;
        }

        if ((v16 & 3) != 0)
        {
          v67 = v17 - 2;
          if (v17 - 2 <= 5)
          {
            v68 = 0;
            v69 = v16;
            v70 = v17;
            goto LABEL_139;
          }

          v75 = (v67 >> 1) + 1;
          if (v67 >= 0x1E)
          {
            v76 = v75 & 0xFFFFFFF0;
            v77 = &v16[1];
            v78 = 0uLL;
            v79 = v76;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            do
            {
              v83 = v77[-1];
              v80 = vaddw_high_u16(v80, v83);
              v78 = vaddw_u16(v78, *v83.i8);
              v82 = vaddw_high_u16(v82, *v77);
              v81 = vaddw_u16(v81, *v77->i8);
              v77 += 2;
              v79 -= 16;
            }

            while (v79);
            v68 = vaddvq_s32(vaddq_s32(vaddq_s32(v81, v78), vaddq_s32(v82, v80)));
            if (v76 == v75)
            {
              goto LABEL_140;
            }

            if ((v75 & 0xC) == 0)
            {
              v70 = v17 - 2 * v76;
              v69 = v16 + v76;
              goto LABEL_139;
            }
          }

          else
          {
            v68 = 0;
            v76 = 0;
          }

          v84 = 2 * (v75 & 0xFFFFFFFC);
          v85 = v68;
          v86 = v76 - (v75 & 0xFFFFFFFC);
          v87 = (v16 + 2 * v76);
          do
          {
            v88 = *v87++;
            v85 = vaddw_u16(v85, v88);
            v86 += 4;
          }

          while (v86);
          v68 = vaddvq_s32(v85);
          if ((v75 & 0xFFFFFFFC) == v75)
          {
            goto LABEL_140;
          }

          v69 = v16 + (v75 & 0xFFFFFFFC);
          v70 = v17 - v84;
          do
          {
LABEL_139:
            v89 = *v69++;
            v68 += v89;
            v70 -= 2;
          }

          while (v70);
LABEL_140:
          v74 = HIWORD(v68) + v68;
LABEL_141:
          if ((v74 + HIWORD(v74)) == 0xFFFF)
          {
            goto LABEL_142;
          }

          if ((*(a1 + 137) & 1) == 0)
          {
            v71 = __nwlog_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
LABEL_243:
              v129 = bswap32(v16->u16[5]) >> 16;
              *buf = 136447234;
              *&buf[4] = "nw_protocol_ipv4_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 138;
              *&buf[22] = 2080;
              v157 = " ";
              v158 = 2048;
              v159 = a1;
              v160 = 1024;
              v161 = v129;
              _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Invalid checksum 0x%x", buf, 0x30u);
            }
          }

LABEL_244:
          v130 = *(a1 + 48);
          if (v130)
          {
            result = 0;
            ++*(v130 + 8);
            return result;
          }

          return 0;
        }

        if (v17 == 20)
        {
          v72 = vaddlvq_u32(*v16) + v16[1].u32[0];
        }

        else
        {
          v131 = -1073741823 * v17 - 4;
          if (v131 > 0x1B)
          {
            v134 = (v131 >> 2) + 1;
            v135 = 4 * (v134 & 0x7FFFFFF8);
            v136 = v16 + 1;
            v137 = 0uLL;
            v138 = v134 & 0x7FFFFFF8;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            do
            {
              v142 = v136[-1];
              v139 = vaddw_high_u32(v139, v142);
              v137 = vaddw_u32(v137, *v142.i8);
              v141 = vaddw_high_u32(v141, *v136);
              v140 = vaddw_u32(v140, *v136->i8);
              v136 += 2;
              v138 -= 8;
            }

            while (v138);
            v72 = vaddvq_s64(vaddq_s64(vaddq_s64(v140, v137), vaddq_s64(v141, v139)));
            if ((v134 & 0x7FFFFFF8) == v134)
            {
              goto LABEL_125;
            }

            v132 = &v16->i32[v134 & 0x7FFFFFF8];
            v133 = v17 - v135;
          }

          else
          {
            v72 = 0;
            v132 = v16;
            v133 = v17;
          }

          do
          {
            v143 = *v132++;
            v72 += v143;
            v133 -= 4;
          }

          while (v133);
        }

LABEL_125:
        v73 = ((HIDWORD(v72) + v72) >> 16) + (WORD2(v72) + v72);
        v74 = (v73 >> 16) + v73;
        goto LABEL_141;
      }

LABEL_88:
      v60 = mach_continuous_time();
      *(a2 + 204) &= ~0x10u;
      *(a2 + 152) = v60;
      if ((*(a1 + 137) & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_89;
    }

    if ((*(a1 + 137) & 1) == 0)
    {
      v109 = __nwlog_obj();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv4_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        v157 = " ";
        v158 = 2048;
        v159 = a1;
        v160 = 1024;
        v161 = v17;
        v162 = 1024;
        *v163 = v19;
        v106 = "%{public}s %{public}s%s%p Invalid header length (greater than IP length): %u > %u";
        goto LABEL_197;
      }
    }

    goto LABEL_199;
  }

  if (*(a1 + 137))
  {
    return 0;
  }

  v110 = __nwlog_obj();
  result = os_log_type_enabled(v110, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v111 = v16->i32[3];
    v112 = *(a1 + 60);
    *buf = 136447490;
    *&buf[4] = "nw_protocol_ipv4_process_input_frame";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 138;
    *&buf[22] = 2080;
    v157 = " ";
    v158 = 2048;
    v159 = a1;
    v160 = 1024;
    v161 = v111;
    v162 = 1024;
    *v163 = v112;
    v36 = "%{public}s %{public}s%s%p Received remote address 0x%x != 0x%x";
    v37 = v110;
    v38 = 54;
    goto LABEL_48;
  }

  return result;
}

uint64_t ___ZL33nw_protocol_ipv4_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1[4] + 8);
  if (*(v4 + 24) != 1)
  {
    if (a2)
    {
      v5 = *(a2 + 204);
      goto LABEL_12;
    }

LABEL_48:
    v31 = __nwlog_obj();
    *buf = 136446210;
    v42 = "__nw_frame_is_single_ip_aggregate";
    LODWORD(v38) = 12;
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null frame", buf, v38);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v32, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v42 = "__nw_frame_is_single_ip_aggregate";
          v35 = "%{public}s called with null frame";
LABEL_61:
          _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v37 = os_log_type_enabled(v33, type);
        if (backtrace_string)
        {
          if (v37)
          {
            *buf = 136446466;
            v42 = "__nw_frame_is_single_ip_aggregate";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v37)
        {
          *buf = 136446210;
          v42 = "__nw_frame_is_single_ip_aggregate";
          v35 = "%{public}s called with null frame, no backtrace";
          goto LABEL_61;
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v42 = "__nw_frame_is_single_ip_aggregate";
          v35 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    if (v32)
    {
      free(v32);
    }

    LOBYTE(v14) = 0;
    v4 = *(a1[4] + 8);
    goto LABEL_13;
  }

  if (!a2)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v42 = "__nw_frame_is_packet_chain_member";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v25, &type, &v39))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v42 = "__nw_frame_is_packet_chain_member";
      v28 = "%{public}s called with null frame";
    }

    else if (v39 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v30 = os_log_type_enabled(v26, type);
      if (v29)
      {
        if (v30)
        {
          *buf = 136446466;
          v42 = "__nw_frame_is_packet_chain_member";
          v43 = 2082;
          v44 = v29;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_46;
      }

      if (!v30)
      {
LABEL_46:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_48;
      }

      *buf = 136446210;
      v42 = "__nw_frame_is_packet_chain_member";
      v28 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v42 = "__nw_frame_is_packet_chain_member";
      v28 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
    goto LABEL_46;
  }

  v5 = *(a2 + 204);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    v14 = (v5 >> 7) & 1;
LABEL_13:
    *(v4 + 24) = v14;
    *(*(a1[5] + 8) + 24) = nw_protocol_ipv4_process_input_frame(a1[9], a2, a1[8], a1[10], (*(a1[6] + 8) + 24), (*(a1[7] + 8) + 24));
    if (*(*(a1[5] + 8) + 24))
    {
      return 1;
    }

    --*(*(a1[6] + 8) + 24);
    goto LABEL_15;
  }

  if (*(*(a1[5] + 8) + 24))
  {
    return 1;
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 - 1;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = *(*(a1[6] + 8) + 24);
    *buf = 136446978;
    v42 = "nw_protocol_ipv4_get_input_frames_block_invoke";
    v43 = 2082;
    v44 = "count";
    v45 = 2048;
    v46 = 1;
    v47 = 2048;
    v48 = v8;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v9, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v42 = "nw_protocol_ipv4_get_input_frames_block_invoke";
          v43 = 2082;
          v44 = "count";
          v45 = 2048;
          v46 = 1;
          v47 = 2048;
          v48 = v12;
          v13 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_28:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

      else if (v39 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v20 = os_log_type_enabled(v10, type);
        if (v19)
        {
          if (v20)
          {
            v21 = *(*(a1[6] + 8) + 24);
            *buf = 136447234;
            v42 = "nw_protocol_ipv4_get_input_frames_block_invoke";
            v43 = 2082;
            v44 = "count";
            v45 = 2048;
            v46 = 1;
            v47 = 2048;
            v48 = v21;
            v49 = 2082;
            v50 = v19;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v19);
          goto LABEL_29;
        }

        if (v20)
        {
          v23 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v42 = "nw_protocol_ipv4_get_input_frames_block_invoke";
          v43 = 2082;
          v44 = "count";
          v45 = 2048;
          v46 = 1;
          v47 = 2048;
          v48 = v23;
          v13 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_28;
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          v22 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v42 = "nw_protocol_ipv4_get_input_frames_block_invoke";
          v43 = 2082;
          v44 = "count";
          v45 = 2048;
          v46 = 1;
          v47 = 2048;
          v48 = v22;
          v13 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    if (v9)
    {
      free(v9);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

LABEL_15:
  v15 = (a1[8] + 8);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  if (v16)
  {
    v15 = (v16 + 40);
  }

  *v15 = v17;
  *v17 = v16;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_ipv4_process_reassembly(uint64_t a1, int a2, uint64_t a3, int a4, _BYTE *a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 64);
  v8 = *(a1 + 64);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_93;
  }

  if (!a5 && *(a1 + 132) == a2 && a4 == 0)
  {
    v11 = 0;
LABEL_94:
    *(a1 + 132) = a2;
    return v11;
  }

  if (!a3)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_93;
    }

    goto LABEL_79;
  }

  v94 = 0;
  v95 = &v94;
  v96 = 0x2000000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2000000000;
  v93 = 0;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 0x40000000;
  v85 = ___ZL43nw_protocol_ipv4_append_reassembled_packetsP16nw_protocol_ipv4P16nw_frame_array_sPb_block_invoke;
  v86 = &unk_1E6A3D010;
  v88 = &v94;
  v89 = a1;
  v87 = &v90;
  do
  {
    if (!v8)
    {
      break;
    }

    v13 = *(v8 + 32);
    v14 = v85(v84);
    v8 = v13;
  }

  while ((v14 & 1) != 0);
  if (*(v95 + 24) == 1)
  {
    v15 = *(v91 + 12) + 20;
    v16 = nw_calloc_type<unsigned char>(v15);
    v17 = nw_frame_create(0, v16, v15, nw_protocol_ipv4_frame_input_finalizer, a1);
    if (v17)
    {
      v18 = v17;
      if ((*(a1 + 137) & 1) == 0 && gLogDatapath == 1)
      {
        v65 = __nwlog_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v66 = *(a1 + 132);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v106) = 2048;
          *(&v106 + 2) = a1;
          WORD5(v106) = 1024;
          HIDWORD(v106) = v66;
          *v107 = 1024;
          *&v107[2] = v15;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Fragments for IP ID %u are complete, aggregate length %u", buf, 0x36u);
        }
      }

      v19 = *v9;
      v83 = 0;
      v20 = nw_frame_unclaimed_bytes(v19, &v83);
      if (!v20)
      {
        if ((*(a1 + 137) & 1) == 0)
        {
          v64 = __nwlog_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            LOWORD(v106) = 2048;
            *(&v106 + 2) = a1;
            _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
          }
        }

        *(a1 + 48) = 0;
        goto LABEL_123;
      }

      if (v83 > 0x13)
      {
        v22 = *(v20 + 16);
        *v16 = *v20;
        v16[4] = v22;
        *(v16 + 1) = bswap32(v15) >> 16;
        *(v16 + 3) = 0;
        if ((*(v18 + 204) & 8) == 0)
        {
          v23 = v18 + 120;
          v24 = *(v18 + 168);
          if (v24)
          {
            os_release(v24);
            *(v18 + 168) = 0;
          }

          v25 = *(v18 + 64);
          *(v18 + 186) |= 0x40u;
          if (v25)
          {
            if (v25 != v23)
            {
              v26 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "__nw_frame_set_metadata";
              *&buf[12] = 2048;
              *&buf[14] = v25;
              *&buf[22] = 2048;
              *&buf[24] = v18 + 120;
              v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s Existing metadata %p doesn't match expected %p", buf, 32);
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v81[0]) = 0;
              v79 = v27;
              if (!__nwlog_fault(v27, type, v81))
              {
                goto LABEL_64;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v77 = __nwlog_obj();
                log = type[0];
                if (!os_log_type_enabled(v77, type[0]))
                {
                  goto LABEL_64;
                }

                *buf = 136446722;
                *&buf[4] = "__nw_frame_set_metadata";
                *&buf[12] = 2048;
                *&buf[14] = v25;
                *&buf[22] = 2048;
                *&buf[24] = v18 + 120;
                v28 = "%{public}s Existing metadata %p doesn't match expected %p";
              }

              else
              {
                if (LOBYTE(v81[0]) == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  loga = __nwlog_obj();
                  v74 = type[0];
                  v36 = os_log_type_enabled(loga, type[0]);
                  v37 = backtrace_string;
                  if (backtrace_string)
                  {
                    if (v36)
                    {
                      *buf = 136446978;
                      *&buf[4] = "__nw_frame_set_metadata";
                      *&buf[12] = 2048;
                      *&buf[14] = v25;
                      *&buf[22] = 2048;
                      *&buf[24] = v18 + 120;
                      LOWORD(v106) = 2082;
                      *(&v106 + 2) = backtrace_string;
                      _os_log_impl(&dword_181A37000, loga, v74, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
                      v37 = backtrace_string;
                    }

                    free(v37);
                    goto LABEL_64;
                  }

                  if (!v36)
                  {
LABEL_64:
                    if (v79)
                    {
                      free(v79);
                    }

                    goto LABEL_66;
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_frame_set_metadata";
                  *&buf[12] = 2048;
                  *&buf[14] = v25;
                  *&buf[22] = 2048;
                  *&buf[24] = v18 + 120;
                  v28 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
                  v38 = loga;
                  v39 = v74;
LABEL_63:
                  _os_log_impl(&dword_181A37000, v38, v39, v28, buf, 0x20u);
                  goto LABEL_64;
                }

                v77 = __nwlog_obj();
                log = type[0];
                if (!os_log_type_enabled(v77, type[0]))
                {
                  goto LABEL_64;
                }

                *buf = 136446722;
                *&buf[4] = "__nw_frame_set_metadata";
                *&buf[12] = 2048;
                *&buf[14] = v25;
                *&buf[22] = 2048;
                *&buf[24] = v18 + 120;
                v28 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
              }

              v38 = v77;
              v39 = log;
              goto LABEL_63;
            }
          }

          else
          {
            *(v18 + 64) = v23;
            *(v18 + 72) = v23;
            *(v18 + 120) = 0;
            *(v18 + 128) = v18 + 64;
          }
        }

LABEL_66:
        nw_frame_claim(v18, v21, 20, 0);
        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x2000000000;
        v82 = 20;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL43nw_protocol_ipv4_append_reassembled_packetsP16nw_protocol_ipv4P16nw_frame_array_sPb_block_invoke_27;
        *&buf[24] = &unk_1E6A3D038;
        *&v106 = v81;
        *(&v106 + 1) = a1;
        *&v107[8] = v15;
        *v107 = v16;
        v40 = *(a1 + 64);
        do
        {
          if (!v40)
          {
            break;
          }

          v41 = *(v40 + 32);
          v42 = (*&buf[16])(buf);
          v40 = v41;
        }

        while ((v42 & 1) != 0);
        *(v18 + 16) = 0;
        v43 = *(a1 + 88);
        *(v18 + 24) = v43;
        *v43 = v18;
        *(a1 + 88) = v18 + 16;
        *(v18 + 32) = 0;
        v44 = *(a3 + 8);
        *(v18 + 40) = v44;
        *v44 = v18;
        *(a3 + 8) = v18 + 32;
        v45 = *(a1 + 64);
        if (v45)
        {
          *(v45 + 40) = &v103;
          v46 = *(a1 + 72);
          v103 = v45;
          v104 = v46;
          *(a1 + 64) = 0;
          *(a1 + 72) = v9;
          *type = MEMORY[0x1E69E9820];
          v99 = 0x40000000;
          v100 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_91243;
          v101 = &__block_descriptor_tmp_29_91244;
          v102 = 1;
          do
          {
            v47 = v103;
            if (!v103)
            {
              break;
            }

            v48 = *(v103 + 32);
            v49 = *(v103 + 40);
            v50 = (v48 + 40);
            if (!v48)
            {
              v50 = &v104;
            }

            *v50 = v49;
            *v49 = v48;
            *(v47 + 32) = 0;
            *(v47 + 40) = 0;
          }

          while (((v100)(type) & 1) != 0);
        }

        if (a5)
        {
          *a5 = 0;
        }

        _Block_object_dispose(v81, 8);
        v11 = 1;
        goto LABEL_78;
      }

      if (*(a1 + 137))
      {
LABEL_123:
        os_release(v18);
        v11 = 0;
        goto LABEL_78;
      }

      v67 = __nwlog_obj();
      *buf = 136447234;
      *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 138;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v106) = 2048;
      *(&v106 + 2) = a1;
      WORD5(v106) = 1024;
      HIDWORD(v106) = v83;
      v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s %{public}s%s%p Invalid first IP reassembly frame (length %u)", buf, 48);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v81[0]) = 0;
      if (__nwlog_fault(v68, type, v81))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v69 = __nwlog_obj();
          v70 = type[0];
          if (!os_log_type_enabled(v69, type[0]))
          {
            goto LABEL_121;
          }

          *buf = 136447234;
          *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v106) = 2048;
          *(&v106 + 2) = a1;
          WORD5(v106) = 1024;
          HIDWORD(v106) = v83;
          v71 = "%{public}s %{public}s%s%p Invalid first IP reassembly frame (length %u)";
          goto LABEL_120;
        }

        if (LOBYTE(v81[0]) != 1)
        {
          v69 = __nwlog_obj();
          v70 = type[0];
          if (!os_log_type_enabled(v69, type[0]))
          {
            goto LABEL_121;
          }

          *buf = 136447234;
          *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v106) = 2048;
          *(&v106 + 2) = a1;
          WORD5(v106) = 1024;
          HIDWORD(v106) = v83;
          v71 = "%{public}s %{public}s%s%p Invalid first IP reassembly frame (length %u), backtrace limit exceeded";
          goto LABEL_120;
        }

        v72 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v70 = type[0];
        v73 = os_log_type_enabled(v69, type[0]);
        if (v72)
        {
          if (v73)
          {
            *buf = 136447490;
            *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 138;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            LOWORD(v106) = 2048;
            *(&v106 + 2) = a1;
            WORD5(v106) = 1024;
            HIDWORD(v106) = v83;
            *v107 = 2082;
            *&v107[2] = v72;
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s %{public}s%s%p Invalid first IP reassembly frame (length %u), dumping backtrace:%{public}s", buf, 0x3Au);
          }

          free(v72);
          goto LABEL_121;
        }

        if (v73)
        {
          *buf = 136447234;
          *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 138;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v106) = 2048;
          *(&v106 + 2) = a1;
          WORD5(v106) = 1024;
          HIDWORD(v106) = v83;
          v71 = "%{public}s %{public}s%s%p Invalid first IP reassembly frame (length %u), no backtrace";
LABEL_120:
          _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x30u);
        }
      }

LABEL_121:
      if (v68)
      {
        free(v68);
      }

      goto LABEL_123;
    }

    v29 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
    *&buf[12] = 1024;
    *&buf[14] = v15;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s nw_frame_create(%u) failed", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81[0]) = 0;
    if (!__nwlog_fault(v30, type, v81))
    {
      goto LABEL_55;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
        *&buf[12] = 1024;
        *&buf[14] = v15;
        v33 = "%{public}s nw_frame_create(%u) failed";
LABEL_54:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0x12u);
      }
    }

    else if (LOBYTE(v81[0]) == 1)
    {
      v34 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type[0];
      v35 = os_log_type_enabled(v31, type[0]);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
          *&buf[12] = 1024;
          *&buf[14] = v15;
          *&buf[18] = 2082;
          *&buf[20] = v34;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s nw_frame_create(%u) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v34);
        goto LABEL_55;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
        *&buf[12] = 1024;
        *&buf[14] = v15;
        v33 = "%{public}s nw_frame_create(%u) failed, no backtrace";
        goto LABEL_54;
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
        *&buf[12] = 1024;
        *&buf[14] = v15;
        v33 = "%{public}s nw_frame_create(%u) failed, backtrace limit exceeded";
        goto LABEL_54;
      }
    }

LABEL_55:
    if (v30)
    {
      free(v30);
    }

    if (v16)
    {
      free(v16);
    }

    v11 = 0;
    goto LABEL_78;
  }

  if ((*(a1 + 137) & 1) == 0 && gLogDatapath == 1)
  {
    v62 = __nwlog_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(a1 + 132);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_ipv4_append_reassembled_packets";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 138;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v106) = 2048;
      *(&v106 + 2) = a1;
      WORD5(v106) = 1024;
      HIDWORD(v106) = v63;
      _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Fragments for IP ID %u incomplete", buf, 0x30u);
    }
  }

  v11 = 0;
  if (a5)
  {
    *a5 = 1;
  }

LABEL_78:
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);
  if (!a4)
  {
    goto LABEL_93;
  }

LABEL_79:
  for (i = 0; ; ++i)
  {
    v56 = *v9;
    if (!*v9)
    {
      break;
    }

    v57 = v56[5];
    if (v57 == v9)
    {
      v52 = v56 + 4;
      v58 = v56[4];
      if (v58)
      {
        *(v58 + 40) = v57;
        *v56[5] = v58;
      }

      else
      {
        *(a1 + 72) = v57;
        *v57 = 0;
      }
    }

    else
    {
      v53 = v56[2];
      v54 = v56[3];
      v52 = v56 + 2;
      v55 = (v53 + 24);
      if (!v53)
      {
        v55 = (a1 + 72);
      }

      *v55 = v54;
      *v54 = v53;
    }

    *v52 = 0;
    v52[1] = 0;
    nw_frame_finalize(v56);
  }

  if (i)
  {
    if ((*(a1 + 137) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v60 = *(a1 + 132);
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv4_process_reassembly";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 138;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v106) = 2048;
        *(&v106 + 2) = a1;
        WORD5(v106) = 1024;
        HIDWORD(v106) = v60;
        *v107 = 1024;
        *&v107[2] = i;
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Failed to reassemble IP ID %u, dropping %u frames", buf, 0x36u);
      }
    }
  }

LABEL_93:
  if (!a5)
  {
    goto LABEL_94;
  }

  return v11;
}

uint64_t nw_channel_get_internet_checksum_handler(nw_frame *a1, BOOL *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 102);
  if ((v6 & 0x100) != 0)
  {
    v7 = v6 & 4;
    if ((v6 & 4) != 0)
    {
      v8 = a1 + 208;
    }

    else
    {
      v8 = 0;
    }

    if (a2 && a3 && a4 && v7)
    {
      if (v8[24])
      {
        inet_checksum = os_packet_get_inet_checksum();
        result = 0;
        *a2 = inet_checksum & 1;
        *(a1 + 102) = *(a1 + 102) & 0xC3FF | (4 * inet_checksum) & 0x3C00;
        return result;
      }

      return 45;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_channel_get_internet_checksum_handler";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null (frame_info != NULL && is_partial_checksum != NULL && start_offset != NULL && checksum_value != NULL)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v12, &type, &v19))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_channel_get_internet_checksum_handler";
        v15 = "%{public}s called with null (frame_info != NULL && is_partial_checksum != NULL && start_offset != NULL && checksum_value != NULL)";
LABEL_31:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v22 = "nw_channel_get_internet_checksum_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null (frame_info != NULL && is_partial_checksum != NULL && start_offset != NULL && checksum_value != NULL), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v18)
      {
        *buf = 136446210;
        v22 = "nw_channel_get_internet_checksum_handler";
        v15 = "%{public}s called with null (frame_info != NULL && is_partial_checksum != NULL && start_offset != NULL && checksum_value != NULL), no backtrace";
        goto LABEL_31;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_channel_get_internet_checksum_handler";
        v15 = "%{public}s called with null (frame_info != NULL && is_partial_checksum != NULL && start_offset != NULL && checksum_value != NULL), backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:
    if (v12)
    {
      free(v12);
    }

    return 22;
  }

  if ((*(a1 + 102) & 0x200) == 0)
  {
    return 45;
  }

  result = 0;
  if ((v6 & 4) != 0)
  {
    v16 = a1 + 208;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16[16] & 1;
  *a3 = *v16;
  *a4 = *(v16 + 1);
  return result;
}

void nw_channel_finalize_input_frame(nw_frame *a1, BOOL a2, _WORD *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3 + 164;
  v7 = (a1 + 16);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  if (v6)
  {
    v5 = (v6 + 24);
  }

  *v5 = v8;
  *v8 = v6;
  *(a1 + 3) = 0;
  *v7 = 0;
  metadata = nw_frame_get_metadata(a1);
  if (metadata && *metadata)
  {
    if ((a3[230] & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    if (!*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        v25 = metadata;
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
        metadata = v25;
      }

      if (_nw_signposts_enabled == 1)
      {
        v11 = metadata;
        is_enabled = kdebug_is_enabled();
        metadata = v11;
        if (is_enabled)
        {
          kdebug_trace();
          metadata = v11;
        }
      }

      goto LABEL_21;
    }

    if ((a3[231] & 8) != 0)
    {
LABEL_21:
      *metadata = 0;
      metadata[1] = 0;
      goto LABEL_22;
    }

    v10 = metadata;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
LABEL_10:
      metadata = v10;
      goto LABEL_21;
    }

    *type = 0;
    if ((*(a1 + 102) & 0x4000) == 0 || (v13 = os_packet_decrement_use_count()) == 0)
    {
LABEL_18:
      metadata = v10;
      if ((*(a1 + 102) & 0x4000) != 0 && *type)
      {
        goto LABEL_21;
      }

      v14 = os_channel_packet_free();
      metadata = v10;
      if (!v14)
      {
        goto LABEL_21;
      }

      nw_channel_check_defunct(a3);
      goto LABEL_10;
    }

    v28 = v13;
    v29 = nw_channel_check_defunct(a3);
    metadata = v10;
    if (v29)
    {
      goto LABEL_21;
    }

    v38 = v7;
    v30 = __nwlog_obj();
    *buf = 136446466;
    v43 = "nw_channel_finalize_input_frame";
    v44 = 1024;
    v45 = v28;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s os_packet_decrement_use_count() %{darwin.errno}d", buf, 18);
    v40 = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v31, &v40, &v39))
    {
      if (v40 == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = v40;
        if (os_log_type_enabled(v32, v40))
        {
          *buf = 136446466;
          v43 = "nw_channel_finalize_input_frame";
          v44 = 1024;
          v45 = v28;
          v34 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d";
LABEL_81:
          _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x12u);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = v40;
        v36 = os_log_type_enabled(v32, v40);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446722;
            v43 = "nw_channel_finalize_input_frame";
            v44 = 1024;
            v45 = v28;
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_82;
        }

        if (v36)
        {
          *buf = 136446466;
          v43 = "nw_channel_finalize_input_frame";
          v44 = 1024;
          v45 = v28;
          v34 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, no backtrace";
          goto LABEL_81;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = v40;
        if (os_log_type_enabled(v32, v40))
        {
          *buf = 136446466;
          v43 = "nw_channel_finalize_input_frame";
          v44 = 1024;
          v45 = v28;
          v34 = "%{public}s os_packet_decrement_use_count() %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_81;
        }
      }
    }

LABEL_82:
    if (v31)
    {
      free(v31);
    }

    v7 = v38;
    goto LABEL_18;
  }

LABEL_22:
  *(a1 + 2) = 0;
  v15 = *(a3 + 37);
  *(a1 + 3) = v15;
  *v15 = a1;
  *(a3 + 37) = v7;
  if (*(a3 + 40))
  {
    return;
  }

  *(a3 + 108) = 0;
  if (*(a3 + 52) && *(a3 + 28))
  {
    v16 = os_channel_advance_slot();
    if (!v16 || (v18 = v16, (nw_channel_check_defunct(a3) & 1) != 0))
    {
LABEL_26:
      *(a3 + 52) = 0;
      goto LABEL_27;
    }

    v19 = __nwlog_obj();
    *buf = 136446466;
    v43 = "nw_channel_finalize_input_frame";
    v44 = 1024;
    v45 = v18;
    LODWORD(v37) = 18;
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d", buf, v37);
    type[0] = OS_LOG_TYPE_ERROR;
    v40 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, type, &v40))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type[0];
        if (!os_log_type_enabled(v21, type[0]))
        {
          goto LABEL_70;
        }

        *buf = 136446466;
        v43 = "nw_channel_finalize_input_frame";
        v44 = 1024;
        v45 = v18;
        v23 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d";
        goto LABEL_69;
      }

      if (v40 != OS_LOG_TYPE_INFO)
      {
        v21 = __nwlog_obj();
        v22 = type[0];
        if (!os_log_type_enabled(v21, type[0]))
        {
          goto LABEL_70;
        }

        *buf = 136446466;
        v43 = "nw_channel_finalize_input_frame";
        v44 = 1024;
        v45 = v18;
        v23 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_69;
      }

      v26 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type[0];
      v27 = os_log_type_enabled(v21, type[0]);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446722;
          v43 = "nw_channel_finalize_input_frame";
          v44 = 1024;
          v45 = v18;
          v46 = 2082;
          v47 = v26;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v26);
        goto LABEL_70;
      }

      if (v27)
      {
        *buf = 136446466;
        v43 = "nw_channel_finalize_input_frame";
        v44 = 1024;
        v45 = v18;
        v23 = "%{public}s os_channel_advance_slot(rx) %{darwin.errno}d, no backtrace";
LABEL_69:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0x12u);
      }
    }

LABEL_70:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_26;
  }

LABEL_27:
  if ((a3[230] & 4) != 0)
  {
    v17 = *(a3 + 21);
    if (v17)
    {
      if (*v17 && _dispatch_source_will_reenable_kevent_4NW() && *(a3 + 21) && (a3[230] & 8) != 0)
      {
        goto LABEL_40;
      }
    }
  }

  if (!*(a3 + 17))
  {
    goto LABEL_40;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (!os_channel_sync())
  {
LABEL_40:
    if ((a3[230] & 8) == 0)
    {
      return;
    }
  }

  else
  {
    nw_channel_check_defunct(a3);
    if ((a3[230] & 8) == 0)
    {
      return;
    }
  }

  if (*(a3 + 21))
  {
    if (gLogDatapath == 1)
    {
      v24 = __nwlog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v43 = "nw_channel_finalize_input_frame";
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s channel input source resumed", buf, 0xCu);
      }
    }

    a3[230] &= ~8u;
    nw_queue_resume_source(*(a3 + 21));
  }
}

void nw_protocol_input_available(char *a1, uint64_t a2)
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
        v51 = "__nw_protocol_input_available";
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
          v51 = "__nw_protocol_input_available";
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
          v51 = "__nw_protocol_input_available";
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
          v51 = "__nw_protocol_input_available";
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
          v51 = "__nw_protocol_input_available";
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

    v17 = *(v10 + 64);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_input_available";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid input_available callback", buf, 32);
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
      v51 = "__nw_protocol_input_available";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_available callback";
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
          v51 = "__nw_protocol_input_available";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v51 = "__nw_protocol_input_available";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace";
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
      v51 = "__nw_protocol_input_available";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_input_available";
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
      v51 = "__nw_protocol_input_available";
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
          v51 = "__nw_protocol_input_available";
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
      v51 = "__nw_protocol_input_available";
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
      v51 = "__nw_protocol_input_available";
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

uint64_t nw_protocol_metadata_copy_identifier(void *a1, unsigned __int8 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_protocol_metadata_copy_identifier(v3, a2);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_metadata_copy_identifier";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null out_identifier", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null out_identifier";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null out_identifier, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null out_identifier, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_protocol_metadata_copy_identifier";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null out_identifier, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_metadata_copy_identifier";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null metadata";
LABEL_31:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_protocol_metadata_copy_identifier";
          v11 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_protocol_metadata_copy_identifier";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

BOOL validate_tcp_cksum(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int a5, unsigned int a6, int a7)
{
  v109 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v91 = 0;
  v90 = 0;
  if (!a1)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    v94 = "__nw_frame_get_internet_checksum";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null frame", buf, 12);
    v108[0] = 16;
    v107[0] = 0;
    if (__nwlog_fault(v75, v108, v107))
    {
      if (v108[0] == 17)
      {
        v76 = __nwlog_obj();
        v77 = v108[0];
        if (os_log_type_enabled(v76, v108[0]))
        {
          *buf = 136446210;
          v94 = "__nw_frame_get_internet_checksum";
          v78 = "%{public}s called with null frame";
LABEL_115:
          v82 = v76;
LABEL_116:
          _os_log_impl(&dword_181A37000, v82, v77, v78, buf, 0xCu);
        }
      }

      else if (v107[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v80 = __nwlog_obj();
        v77 = v108[0];
        loga = v80;
        v81 = os_log_type_enabled(v80, v108[0]);
        if (backtrace_string)
        {
          if (v81)
          {
            *buf = 136446466;
            v94 = "__nw_frame_get_internet_checksum";
            v95 = 2082;
            *v96 = backtrace_string;
            _os_log_impl(&dword_181A37000, loga, v77, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_117;
        }

        if (v81)
        {
          *buf = 136446210;
          v94 = "__nw_frame_get_internet_checksum";
          v78 = "%{public}s called with null frame, no backtrace";
          v82 = loga;
          goto LABEL_116;
        }
      }

      else
      {
        v76 = __nwlog_obj();
        v77 = v108[0];
        if (os_log_type_enabled(v76, v108[0]))
        {
          *buf = 136446210;
          v94 = "__nw_frame_get_internet_checksum";
          v78 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_115;
        }
      }
    }

LABEL_117:
    if (v75)
    {
      free(v75);
    }

    v14 = 22;
LABEL_39:
    v17 = 0;
    v89 = v14;
    if (*(a1 + 32))
    {
      goto LABEL_40;
    }

LABEL_9:
    v89 = 0;
    v18 = inet_cksum(a1, 0, a2, &v89);
    if (v89)
    {
      return 0;
    }

    v19 = ~v18;
    if (a7)
    {
      goto LABEL_11;
    }

LABEL_84:
    v62 = *a4 + *a3 + bswap32(a2 + 6) + v19;
    v63 = ((WORD1(v62) + v62 + HIDWORD(v62)) >> 16) + (WORD1(v62) + v62 + WORD2(v62));
    v20 = ((((v63 >> 16) + v63) >> 16) + WORD1(v63) + v63 + ((-65535 * (((v63 >> 16) + v63) >> 16) + (v63 >> 16) + v63) >> 16));
    goto LABEL_85;
  }

  if ((*(a1 + 204) & 0x100) != 0)
  {
    v15 = g_channel_get_internet_checksum_handler;
    if (!g_channel_get_internet_checksum_handler)
    {
      v14 = 45;
      goto LABEL_39;
    }
  }

  else
  {
    v14 = 45;
    if ((*(a1 + 204) & 0x200) == 0)
    {
      goto LABEL_39;
    }

    v15 = g_channel_get_internet_checksum_handler;
    if (!g_channel_get_internet_checksum_handler)
    {
      goto LABEL_39;
    }
  }

  v16 = v15(a1, &v92, &v91, &v90);
  v89 = v16;
  if (!v16)
  {
    v21 = *(a1 + 204);
    if ((v21 & 0x1000) != 0)
    {
      if ((v21 & 0x2000) != 0)
      {
        result = v90 == 0xFFFF;
        if (v90 != 0xFFFF)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v49 = gLogObj;
          v50 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
          result = 0;
          if (v50)
          {
            v51 = a7 == 0;
            if (a7)
            {
              v52 = 30;
            }

            else
            {
              v52 = 2;
            }

            if (v51)
            {
              v53 = "IPv4";
            }

            else
            {
              v53 = "IPv6";
            }

            v54 = inet_ntop(v52, a3, v108, 0x2Eu);
            v55 = __rev16(a5);
            v56 = __rev16(a6);
            v57 = inet_ntop(v52, a4, v107, 0x2Eu);
            v58 = "";
            if (v92)
            {
              v58 = "partial";
            }

            *buf = 136448515;
            v94 = "validate_tcp_cksum";
            v95 = 2085;
            *v96 = v54;
            *&v96[8] = 1024;
            *v97 = v55;
            *&v97[4] = 2085;
            v98 = v57;
            *v99 = 1024;
            *&v99[2] = v56;
            *v100 = 2082;
            *&v100[2] = v53;
            v101 = 2082;
            v102 = v58;
            v103 = 1024;
            *v104 = v91;
            *&v104[4] = 1024;
            *&v104[6] = v90;
            *v105 = 1024;
            *&v105[2] = a2;
            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s TCP %{sensitive}s:%d -> %{sensitive}s:%d invalid %{public}s-TCP offload %{public}s start %u checksum 0x%x tlen %d", buf, 0x52u);
            return 0;
          }
        }

        return result;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        if (a7)
        {
          v23 = 30;
        }

        else
        {
          v23 = 2;
        }

        v24 = "IPv4";
        if (a7)
        {
          v24 = "IPv6";
        }

        v88 = v24;
        v84 = inet_ntop(v23, a3, v108, 0x2Eu);
        v85 = __rev16(a5);
        log = __rev16(a6);
        v25 = inet_ntop(v23, a4, v107, 0x2Eu);
        v26 = "";
        if (v92)
        {
          v26 = "partial";
        }

        *buf = 136448515;
        v94 = "validate_tcp_cksum";
        v95 = 2085;
        *v96 = v84;
        *&v96[8] = 1024;
        *v97 = v85;
        *&v97[4] = 2085;
        v98 = v25;
        *v99 = 1024;
        *&v99[2] = log;
        *v100 = 2082;
        *&v100[2] = v88;
        v101 = 2082;
        v102 = v26;
        v103 = 1024;
        *v104 = v91;
        *&v104[4] = 1024;
        *&v104[6] = v90;
        *v105 = 1024;
        *&v105[2] = a2;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s TCP %{sensitive}s:%d -> %{sensitive}s:%d not final %{public}s-TCP offload %{public}s start %u checksum 0x%x tlen %d", buf, 0x52u);
      }
    }

    v17 = (v21 >> 12) & 1;
    if (v92 != 1)
    {
      v14 = 0;
      if (*(a1 + 32))
      {
        goto LABEL_40;
      }

      goto LABEL_9;
    }

    if (((*(a1 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 88))) && (v27 = *(a1 + 112)) != 0 && (v28 = *(a1 + 48)) != 0)
    {
      v29 = *(a1 + 112);
      if ((*(a1 + 204) & 0x100) == 0 || (v29 = *(a1 + 112), !g_channel_check_validity) || g_channel_check_validity(a1, *(a1 + 88)) && (v29 = *(a1 + 112)) != 0)
      {
        v30 = (v29 + *(a1 + 56) - v27);
        if ((a7 & 1) != 0 || !v91 || v91 == v30)
        {
          v61 = v30 + a2;
          if (a7)
          {
            if (v91 == v30 && v28 == v61)
            {
              v19 = v90;
              goto LABEL_11;
            }
          }

          else if (v28 == v61)
          {
            v19 = v90;
            goto LABEL_84;
          }
        }

        v19 = in_adjust_cksum(v27, v28, v91, v30, a2, v90);
        if (!a7)
        {
          goto LABEL_84;
        }

LABEL_11:
        v20 = in6_pseudo(a3, a4, bswap32(a2 + 6) + v19);
LABEL_85:
        v90 = ~v20;
        if (v20 == 0xFFFF)
        {
          return 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v65 = a7 == 0;
        if (a7)
        {
          v66 = 30;
        }

        else
        {
          v66 = 2;
        }

        if (v65)
        {
          v67 = "IPv4";
        }

        else
        {
          v67 = "IPv6";
        }

        v68 = inet_ntop(v66, a3, v108, 0x2Eu);
        v69 = __rev16(a5);
        v70 = __rev16(a6);
        v71 = inet_ntop(v66, a4, v107, 0x2Eu);
        v72 = "";
        v94 = "validate_tcp_cksum";
        v73 = "-fallback";
        *buf = 136448515;
        if (!v17)
        {
          v73 = "";
        }

        v95 = 2085;
        *v96 = v68;
        if (v92)
        {
          v72 = "partial";
        }

        *&v96[8] = 1024;
        *v97 = v69;
        *&v97[4] = 2085;
        v98 = v71;
        *v99 = 1024;
        *&v99[2] = v70;
        *v100 = 2082;
        *&v100[2] = v67;
        v101 = 2082;
        v102 = v73;
        v103 = 2082;
        *v104 = v72;
        *&v104[8] = 1024;
        *v105 = v90;
        *&v105[4] = 1024;
        v106 = a2;
        v41 = "%{public}s TCP %{sensitive}s:%d -> %{sensitive}s:%d incorrect %{public}s-TCP manual%{public}s %{public}s checksum 0x%x tlen %d";
        v42 = v64;
        v43 = OS_LOG_TYPE_INFO;
        v44 = 86;
        goto LABEL_99;
      }

      v59 = __nwlog_obj();
      result = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v94 = "validate_tcp_cksum";
      v41 = "%{public}s Frame buffer no longer valid for TCP";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v94 = "validate_tcp_cksum";
      v41 = "%{public}s Frame buffer no longer valid";
    }

    v42 = v59;
    v43 = OS_LOG_TYPE_INFO;
    v44 = 12;
    goto LABEL_99;
  }

  v14 = v16;
  v17 = 0;
  if (!*(a1 + 32))
  {
    goto LABEL_9;
  }

LABEL_40:
  v31 = 1;
  if ((*(a1 + 204) & 0x100) != 0 && g_channel_check_validity)
  {
    v31 = g_channel_check_validity(a1, *(a1 + 88));
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  if (v31)
  {
    v33 = *(a1 + 204);
    *buf = 136448002;
    v94 = "validate_tcp_cksum";
    v95 = 1024;
    *v96 = (v33 >> 8) & 1;
    *&v96[4] = 1024;
    *&v96[6] = (v33 >> 6) & 1;
    *v97 = 1024;
    *&v97[2] = (v33 >> 12) & 1;
    LOWORD(v98) = 1024;
    *(&v98 + 2) = (v33 >> 13) & 1;
    HIWORD(v98) = 1024;
    *v99 = v92;
    *&v99[4] = 1024;
    *v100 = v90;
    *&v100[4] = 1024;
    *&v100[6] = v14;
    LODWORD(v83) = 54;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s super packet checksum not validated or offloaded: channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d", buf, v83);
    v108[0] = 16;
    v107[0] = 0;
    if (!__nwlog_fault(v34, v108, v107))
    {
      goto LABEL_76;
    }

    if (v108[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      v36 = v108[0];
      if (!os_log_type_enabled(gLogObj, v108[0]))
      {
        goto LABEL_76;
      }

      v37 = *(a1 + 204);
      *buf = 136448002;
      v94 = "validate_tcp_cksum";
      v95 = 1024;
      *v96 = (v37 >> 8) & 1;
      *&v96[4] = 1024;
      *&v96[6] = (v37 >> 6) & 1;
      *v97 = 1024;
      *&v97[2] = (v37 >> 12) & 1;
      LOWORD(v98) = 1024;
      *(&v98 + 2) = (v37 >> 13) & 1;
      HIWORD(v98) = 1024;
      *v99 = v92;
      *&v99[4] = 1024;
      *v100 = v90;
      *&v100[4] = 1024;
      *&v100[6] = v14;
      v38 = "%{public}s super packet checksum not validated or offloaded: channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d";
    }

    else if (v107[0] == 1)
    {
      v45 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      v36 = v108[0];
      v46 = os_log_type_enabled(gLogObj, v108[0]);
      if (v45)
      {
        if (v46)
        {
          v47 = *(a1 + 204);
          *buf = 136448258;
          v94 = "validate_tcp_cksum";
          v95 = 1024;
          *v96 = (v47 >> 8) & 1;
          *&v96[4] = 1024;
          *&v96[6] = (v47 >> 6) & 1;
          *v97 = 1024;
          *&v97[2] = (v47 >> 12) & 1;
          LOWORD(v98) = 1024;
          *(&v98 + 2) = (v47 >> 13) & 1;
          HIWORD(v98) = 1024;
          *v99 = v92;
          *&v99[4] = 1024;
          *v100 = v90;
          *&v100[4] = 1024;
          *&v100[6] = v14;
          v101 = 2082;
          v102 = v45;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s super packet checksum not validated or offloaded: channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v45);
        goto LABEL_76;
      }

      if (!v46)
      {
LABEL_76:
        if (v34)
        {
          free(v34);
        }

        return 1;
      }

      v60 = *(a1 + 204);
      *buf = 136448002;
      v94 = "validate_tcp_cksum";
      v95 = 1024;
      *v96 = (v60 >> 8) & 1;
      *&v96[4] = 1024;
      *&v96[6] = (v60 >> 6) & 1;
      *v97 = 1024;
      *&v97[2] = (v60 >> 12) & 1;
      LOWORD(v98) = 1024;
      *(&v98 + 2) = (v60 >> 13) & 1;
      HIWORD(v98) = 1024;
      *v99 = v92;
      *&v99[4] = 1024;
      *v100 = v90;
      *&v100[4] = 1024;
      *&v100[6] = v14;
      v38 = "%{public}s super packet checksum not validated or offloaded: channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      v36 = v108[0];
      if (!os_log_type_enabled(gLogObj, v108[0]))
      {
        goto LABEL_76;
      }

      v48 = *(a1 + 204);
      *buf = 136448002;
      v94 = "validate_tcp_cksum";
      v95 = 1024;
      *v96 = (v48 >> 8) & 1;
      *&v96[4] = 1024;
      *&v96[6] = (v48 >> 6) & 1;
      *v97 = 1024;
      *&v97[2] = (v48 >> 12) & 1;
      LOWORD(v98) = 1024;
      *(&v98 + 2) = (v48 >> 13) & 1;
      HIWORD(v98) = 1024;
      *v99 = v92;
      *&v99[4] = 1024;
      *v100 = v90;
      *&v100[4] = 1024;
      *&v100[6] = v14;
      v38 = "%{public}s super packet checksum not validated or offloaded: channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x36u);
    goto LABEL_76;
  }

  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v40 = *(a1 + 204);
    *buf = 136448002;
    v94 = "validate_tcp_cksum";
    v95 = 1024;
    *v96 = (v40 >> 8) & 1;
    *&v96[4] = 1024;
    *&v96[6] = (v40 >> 6) & 1;
    *v97 = 1024;
    *&v97[2] = (v40 >> 12) & 1;
    LOWORD(v98) = 1024;
    *(&v98 + 2) = (v40 >> 13) & 1;
    HIWORD(v98) = 1024;
    *v99 = v92;
    *&v99[4] = 1024;
    *v100 = v90;
    *&v100[4] = 1024;
    *&v100[6] = v14;
    v41 = "%{public}s super packet invalid, channel_frame: %d packet_chain_member: %d csum_data_valid: %d csum_pseudo_hdr %d partial %u tcp_sum %x error: %d";
    v42 = v32;
    v43 = OS_LOG_TYPE_DEFAULT;
    v44 = 54;
LABEL_99:
    _os_log_impl(&dword_181A37000, v42, v43, v41, buf, v44);
    return 0;
  }

  return result;
}

void nw_protocol_default_input_flush(nw_protocol *a1, nw_protocol *a2)
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
        input_flush = callbacks->input_flush;
        if (input_flush)
        {

          input_flush();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_default_input_flush";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_input_flush";
      v9 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_input_flush";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_default_input_flush";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_input_flush";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_output_available_quiet(void *a1, uint64_t a2)
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

  v5 = *(v3 + 72);
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

uint64_t nw_protocol_downcast(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1 == &nw_protocol_ref_counted_handle)
    {
      result += 96;
    }

    else if (v1 == &nw_protocol_ref_counted_additional_handle)
    {
      return *(result + 64) + 96;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 56) - *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    v6 = *(a1 + 40);
    if (a5 + a3 > v6)
    {
      v7 = v6 - a3;
      if (v6 < a3)
      {
        v7 = 0;
      }

      if (v5 >= a5 - v7)
      {
        v8 = (a5 - v7);
      }

      else
      {
        v8 = v5;
      }

      memcpy((*(a1 + 48) + a3 - v6 + v7), (a4 + v7), v8);
      *(*(*(a1 + 32) + 8) + 24) += v8;
    }
  }

  return 1;
}

void nw_connection_async_client_if_needed_with_override(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (nw_parameters_is_persona_set(v7[2]))
  {
    v10 = v7[2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __nw_connection_async_client_if_needed_with_override_block_invoke;
    v11[3] = &unk_1E6A36198;
    v12 = v7;
    v13 = v8;
    v15 = v5;
    v14 = v9;
    nw_utilities_execute_block_as_persona_from_parameters(v10, v11);
  }

  else
  {
    __nw_connection_async_client_if_needed_with_override(v7, v8, v5, v9);
  }
}

void __nw_connection_async_client_if_needed_with_override(void *a1, void *a2, dispatch_qos_class_t a3, void *a4)
{
  v12 = a1;
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v9 = dispatch_block_create_with_qos_class(0, a3, 0, v8);
    dispatch_async(v7, v9);
LABEL_5:

    goto LABEL_6;
  }

  v10 = v12[25];
  if (v10)
  {
    v9 = v10;
    v11 = dispatch_block_create_with_qos_class(0, a3, 0, v8);
    dispatch_async(v9, v11);

    goto LABEL_5;
  }

  if (!v12[5])
  {
    v8[2](v8);
  }

LABEL_6:
}

void nw_write_request_report(void *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ((v5[128] & 2) != 0)
  {
    goto LABEL_60;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (v7 || (v8 = v5[128], (v8 & 1) != 0))
  {
    nw_content_context_mark_completed_send(*(v5 + 8), v7);
    v8 = v5[128];
  }

  v5[128] = v8 | 2;
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    v48 = *(v5 + 7);
    if (v48)
    {
      dispatch_data_get_size(v48);
    }

    v49 = *(v5 + 8);
    if (v49)
    {
      nw_content_context_get_is_final(v49);
    }

    kdebug_trace();
  }

  if (!*(v5 + 9))
  {
    v10 = (v5 + 24);
    v22 = *(v5 + 3);
    if (!v22)
    {
      goto LABEL_60;
    }

    if (!*(v5 + 5))
    {
      (*(v22 + 16))(v22, v7);
LABEL_59:
      v47 = *v10;
      *v10 = 0;

      goto LABEL_60;
    }

    if (!v7)
    {
LABEL_58:
      v43 = _Block_copy(*(v5 + 3));
      v44 = *(v5 + 5);
      v45 = *(v5 + 12);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = ___ZL23nw_write_request_reportP27NWConcrete_nw_write_requestPU28objcproto17OS_dispatch_queue8NSObjectPU22objcproto11OS_nw_errorS1__block_invoke;
      v54[3] = &unk_1E6A3D710;
      v56 = v43;
      v55 = v7;
      v46 = v43;
      nw_connection_async_client_if_needed_with_override(v44, v6, v45, v54);

      goto LABEL_59;
    }

    v23 = v7;
    v24 = v23[2];

    if (v24 == 1 && (v25 = v23, v26 = v25[3], v25, v26 == 89))
    {
      v27 = *(*(v5 + 5) + 16);
      if (!v27 || _nw_parameters_get_logging_disabled(v27))
      {
        goto LABEL_58;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v28 = gconnectionLogObj;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      v29 = *(*(v5 + 5) + 448);
      *buf = 136446466;
      v58 = "nw_write_request_report";
      v59 = 1024;
      v60 = v29;
      v30 = "%{public}s [C%u] Send cancelled";
      v31 = v28;
      v32 = OS_LOG_TYPE_INFO;
      v33 = 18;
    }

    else
    {
      v41 = *(*(v5 + 5) + 16);
      if (!v41 || _nw_parameters_get_logging_disabled(v41))
      {
        goto LABEL_58;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v28 = gconnectionLogObj;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      v42 = *(*(v5 + 5) + 448);
      *buf = 136446722;
      v58 = "nw_write_request_report";
      v59 = 1024;
      v60 = v42;
      v61 = 2114;
      v62 = v23;
      v30 = "%{public}s [C%u] Send failed with error %{public}@";
      v31 = v28;
      v32 = OS_LOG_TYPE_ERROR;
      v33 = 28;
    }

    _os_log_impl(&dword_181A37000, v31, v32, v30, buf, v33);
LABEL_57:

    goto LABEL_58;
  }

  v10 = (v5 + 32);
  v9 = *(v5 + 4);
  if (v9)
  {
    if (!*(v5 + 5))
    {
      (*(v9 + 16))(v9, *(v5 + 14), v7 == 0, v7);
      goto LABEL_47;
    }

    if (!v7)
    {
LABEL_46:
      v36 = _Block_copy(*(v5 + 4));
      v37 = *(v5 + 5);
      v38 = *(v5 + 12);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = ___ZL23nw_write_request_reportP27NWConcrete_nw_write_requestPU28objcproto17OS_dispatch_queue8NSObjectPU22objcproto11OS_nw_errorS1__block_invoke_96;
      v50[3] = &unk_1E6A39AE8;
      v53 = v36;
      v51 = v5;
      v52 = v7;
      v39 = v36;
      nw_connection_async_client_if_needed_with_override(v37, v6, v38, v50);

LABEL_47:
      v40 = *(v5 + 10);
      if (v40)
      {
        nw_queue_cancel_source(v40);
        *(v5 + 10) = 0;
      }

      goto LABEL_59;
    }

    v11 = v7;
    v12 = v11[2];

    if (v12 == 1 && (v13 = v11, v14 = v13[3], v13, v14 == 89))
    {
      v15 = *(*(v5 + 5) + 16);
      if (!v15 || _nw_parameters_get_logging_disabled(v15))
      {
        goto LABEL_46;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      v17 = *(*(v5 + 5) + 448);
      *buf = 136446466;
      v58 = "nw_write_request_report";
      v59 = 1024;
      v60 = v17;
      v18 = "%{public}s [C%u] Send cancelled";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 18;
    }

    else
    {
      v34 = *(*(v5 + 5) + 16);
      if (!v34 || _nw_parameters_get_logging_disabled(v34))
      {
        goto LABEL_46;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v35 = *(*(v5 + 5) + 448);
      *buf = 136446722;
      v58 = "nw_write_request_report";
      v59 = 1024;
      v60 = v35;
      v61 = 2114;
      v62 = v11;
      v18 = "%{public}s [C%u] Send failed with error %{public}@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 28;
    }

    _os_log_impl(&dword_181A37000, v19, v20, v18, buf, v21);
LABEL_45:

    goto LABEL_46;
  }

LABEL_60:
}

void *nw_write_request_list_remove_head(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_write_request_list_remove_head";
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
          v21 = "nw_write_request_list_remove_head";
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
            v21 = "nw_write_request_list_remove_head";
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
          v21 = "nw_write_request_list_remove_head";
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
          v21 = "nw_write_request_list_remove_head";
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
  v21 = "nw_write_request_list_remove_head";
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

_BYTE *nw_write_request_list_prune(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    do
    {
      if ((v3[16] & 2) == 0)
      {
        if (v3[9])
        {
          if ((v3[16] & 0x10) == 0)
          {
            break;
          }
        }

        else if (v3[7])
        {
          break;
        }

        if (v3 != v2 && (v3[16] & 8) != 0)
        {
          break;
        }

        nw_write_request_report(v3, 0, 0);
        if ((v3[16] & 2) == 0)
        {
          break;
        }
      }

      v4 = nw_write_request_list_remove_head(v3);

      v3 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t nw_flow_handle_send_complete(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_flow_protocol *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  output_handler = a3->protocol.output_handler;
  write_requests = a3->write_requests;
  if (write_requests && (v9 = write_requests, v10 = *(v9 + 128), v9, (v10 & 8) != 0) || (v11 = a3->initial_write_requests) != 0 && (v12 = v11, v13 = *(v12 + 128), v12, (v13 & 8) != 0))
  {
    initial_write_requests = a3->initial_write_requests;
    if (initial_write_requests)
    {
      nw_write_request_consume_bytes(initial_write_requests, 0);
    }

    v16 = a3->write_requests;
    if (v16)
    {
      nw_write_request_consume_bytes(v16, 0);
    }

    output_finished = output_handler->callbacks->output_finished;
    if (output_finished)
    {
      output_finished(output_handler, a3);
    }

    else if ((nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v5);
        v20 = nw_endpoint_handler_dry_run_string(v5);
        v21 = nw_endpoint_handler_copy_endpoint(v5);
        v22 = v21;
        v37 = v20;
        if (v21)
        {
          logging_description = _nw_endpoint_get_logging_description(v21);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v23 = nw_endpoint_handler_state_string(v5);
        v24 = nw_endpoint_handler_mode_string(v5);
        v25 = nw_endpoint_handler_copy_current_path(v5);
        identifier = output_handler->identifier;
        *buf = 136448002;
        v41 = "nw_flow_handle_send_complete";
        v42 = 2082;
        v43 = id_string;
        v44 = 2082;
        v45 = v37;
        v46 = 2082;
        v47 = logging_description;
        v48 = 2082;
        v49 = v23;
        v50 = 2082;
        v51 = v24;
        v52 = 2114;
        v53 = v25;
        v54 = 2082;
        v55 = identifier;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Protocol %{public}s does not support output_finished", buf, 0x52u);
      }
    }

    v27 = nw_write_request_list_prune(a3->initial_write_requests);
    v28 = a3->initial_write_requests;
    a3->initial_write_requests = v27;

    v29 = nw_write_request_list_prune(a3->write_requests);
    v30 = a3->write_requests;
    a3->write_requests = v29;

    if (&v6->shared_protocol == a3)
    {
      if (v6->client_queue)
      {
        write_close_handler = v6->write_close_handler;
        if (write_close_handler)
        {
          v33 = _Block_copy(write_close_handler);
          client_queue = v6->client_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___ZL28nw_flow_handle_send_completeP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP16nw_flow_protocol_block_invoke;
          block[3] = &unk_1E6A3CE48;
          v39 = v33;
          v35 = v33;
          dispatch_async(client_queue, block);
        }
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_181AF0634(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_write_request;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void nw_endpoint_handler_service_reads(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_handler_service_reads";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v8, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_reads";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v25 != 1)
      {
        v9 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_reads";
          _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_service_reads";
          _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v23)
      {
        *buf = 136446466;
        v28 = "nw_endpoint_handler_service_reads";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v8)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v8);
    goto LABEL_38;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 2)
  {
    v5 = nw_endpoint_handler_copy_flow(v3);
    nw_flow_service_reads(v3, v5, &v5->shared_protocol, 0);

    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (mode > 5)
  {
    v7 = "unknown-mode";
  }

  else
  {
    v7 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v28 = "nw_endpoint_handler_service_reads";
  v29 = 2082;
  v30 = v7;
  v31 = 2082;
  v32 = "flow";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v8, &type, &v25))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      if (mode > 5)
      {
        v11 = "unknown-mode";
      }

      else
      {
        v11 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_reads";
      v29 = 2082;
      v30 = v11;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v25 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v9, type))
    {
      if (mode > 5)
      {
        v17 = "unknown-mode";
      }

      else
      {
        v17 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_reads";
      v29 = 2082;
      v30 = v17;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v13 = type;
  v14 = os_log_type_enabled(v9, type);
  if (!v12)
  {
    if (v14)
    {
      if (mode > 5)
      {
        v18 = "unknown-mode";
      }

      else
      {
        v18 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v28 = "nw_endpoint_handler_service_reads";
      v29 = 2082;
      v30 = v18;
      v31 = 2082;
      v32 = "flow";
      _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_35;
  }

  if (v14)
  {
    if (mode > 5)
    {
      v15 = "unknown-mode";
    }

    else
    {
      v15 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v28 = "nw_endpoint_handler_service_reads";
    v29 = 2082;
    v30 = v15;
    v31 = 2082;
    v32 = "flow";
    v33 = 2082;
    v34 = v12;
    _os_log_impl(&dword_181A37000, v9, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v12);
  if (v8)
  {
    goto LABEL_37;
  }

LABEL_38:
}

BOOL nw_flow_service_reads(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_flow_protocol *a3, int a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v126 = a1;
  v122 = a2;
  if (!a3)
  {
    v91 = __nwlog_obj();
    *buf = 136446210;
    v134 = "nw_flow_service_reads";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s called with null flow_protocol", buf, 12);

    LOBYTE(type.tqh_first) = 16;
    LOBYTE(v132) = 0;
    if (__nwlog_fault(v92, &type, &v132))
    {
      if (LOBYTE(type.tqh_first) == 17)
      {
        v93 = __nwlog_obj();
        tqh_first = type.tqh_first;
        if (os_log_type_enabled(v93, type.tqh_first))
        {
          *buf = 136446210;
          v134 = "nw_flow_service_reads";
          _os_log_impl(&dword_181A37000, v93, tqh_first, "%{public}s called with null flow_protocol", buf, 0xCu);
        }
      }

      else
      {
        if (v132 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v96 = __nwlog_obj();
          v97 = type.tqh_first;
          v98 = os_log_type_enabled(v96, type.tqh_first);
          if (backtrace_string)
          {
            if (v98)
            {
              *buf = 136446466;
              v134 = "nw_flow_service_reads";
              v135 = 2082;
              v136 = backtrace_string;
              _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v98)
            {
              *buf = 136446210;
              v134 = "nw_flow_service_reads";
              _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_140;
        }

        v93 = __nwlog_obj();
        v99 = type.tqh_first;
        if (os_log_type_enabled(v93, type.tqh_first))
        {
          *buf = 136446210;
          v134 = "nw_flow_service_reads";
          _os_log_impl(&dword_181A37000, v93, v99, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_140:
    if (v92)
    {
      free(v92);
    }

    goto LABEL_92;
  }

  output_handler = a3->protocol.output_handler;
  if (!output_handler)
  {
    if ((nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_endpoint_handler_get_id_string(v126);
        v12 = nw_endpoint_handler_dry_run_string(v126);
        v13 = nw_endpoint_handler_copy_endpoint(v126);
        v14 = v13;
        if (v13)
        {
          logging_description = _nw_endpoint_get_logging_description(v13);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v73 = nw_endpoint_handler_state_string(v126);
        v74 = nw_endpoint_handler_mode_string(v126);
        v75 = nw_endpoint_handler_copy_current_path(v126);
        *buf = 136447746;
        v134 = "nw_flow_service_reads";
        v135 = 2082;
        v136 = id_string;
        v137 = 2082;
        v138 = v12;
        v139 = 2082;
        v140 = logging_description;
        v141 = 2082;
        v142 = v73;
        v143 = 2082;
        v144 = v74;
        v145 = 2114;
        v146 = v75;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No output handler", buf, 0x48u);
      }
    }

LABEL_92:
    v119 = 0;
    goto LABEL_111;
  }

  v132 = 0;
  callbacks = output_handler->callbacks;
  v120 = output_handler;
  if (callbacks)
  {
    get_message_properties = callbacks->get_message_properties;
    if (get_message_properties)
    {
      get_message_properties();
    }
  }

  v123 = a4 && nw_endpoint_handler_get_state(v126) != 5 && (v132 & 0x100000000) == 0;
  v16 = *(a3 + 166);
  v119 = (v16 & 4) == 0;
  if ((v16 & 4) == 0)
  {
    *(a3 + 166) = v16 | 4;
    request_list_report = nw_read_request_list_report(a3->read_requests);
    read_requests = a3->read_requests;
    a3->read_requests = request_list_report;

    if (!a3->read_requests && gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v108 = gconnectionLogObj;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        v109 = nw_endpoint_handler_get_id_string(v126);
        v110 = nw_endpoint_handler_dry_run_string(v126);
        v111 = nw_endpoint_handler_copy_endpoint(v126);
        v112 = nw_endpoint_get_logging_description(v111);
        v113 = nw_endpoint_handler_state_string(v126);
        v114 = nw_endpoint_handler_mode_string(v126);
        v115 = nw_endpoint_handler_copy_current_path(v126);
        *buf = 136448002;
        v134 = "nw_flow_service_reads";
        v135 = 2082;
        v136 = v109;
        v137 = 2082;
        v138 = v110;
        v139 = 2082;
        v140 = v112;
        v141 = 2082;
        v142 = v113;
        v143 = 2082;
        v144 = v114;
        v145 = 2114;
        v146 = v115;
        v147 = 2048;
        *v148 = a3;
        _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %p No read requests, skipping read", buf, 0x52u);
      }
    }

    while (1)
    {
      if (a3->read_requests == 0 && !v123 && (*(a3 + 166) & 0x40) == 0)
      {
LABEL_103:
        if (v123 || (v85 = *(a3 + 166), (v85 & 0x40) != 0))
        {
          if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v100 = gconnectionLogObj;
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              v101 = nw_endpoint_handler_get_id_string(v126);
              v102 = nw_endpoint_handler_dry_run_string(v126);
              v103 = nw_endpoint_handler_copy_endpoint(v126);
              v104 = nw_endpoint_get_logging_description(v103);
              v105 = nw_endpoint_handler_state_string(v126);
              v106 = nw_endpoint_handler_mode_string(v126);
              v107 = nw_endpoint_handler_copy_current_path(v126);
              *buf = 136447746;
              v134 = "nw_flow_service_reads";
              v135 = 2082;
              v136 = v101;
              v137 = 2082;
              v138 = v102;
              v139 = 2082;
              v140 = v104;
              v141 = 2082;
              v142 = v105;
              v143 = 2082;
              v144 = v106;
              v145 = 2114;
              v146 = v107;
              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Handling remaining read requests", buf, 0x48u);
            }
          }

          last_error = a3->last_error;
          v87 = a3->read_requests;
          if (last_error)
          {
            nw_read_request_report_error_with_override(a3->read_requests, 0, last_error);
          }

          else
          {
            v88 = [[NWConcrete_nw_error alloc] initWithDomain:96 code:?];
            nw_read_request_report_error_with_override(v87, 0, v88);
          }

          v89 = a3->read_requests;
          a3->read_requests = 0;

          v85 = *(a3 + 166);
        }

        *(a3 + 166) = v85 & 0xFFFB;
        goto LABEL_111;
      }

      if (v123 || (*(a3 + 166) & 0x40) != 0)
      {
        v19 = BYTE4(v132) & 4;
        if ((v132 & 0x400000000) != 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0xFFFFFFFFLL;
        }

        if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v49 = gconnectionLogObj;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v50 = nw_endpoint_handler_get_id_string(v126);
            v51 = nw_endpoint_handler_dry_run_string(v126);
            loga = v49;
            v52 = nw_endpoint_handler_copy_endpoint(v126);
            v53 = nw_endpoint_get_logging_description(v52);
            v118 = nw_endpoint_handler_state_string(v126);
            v54 = nw_endpoint_handler_mode_string(v126);
            v55 = nw_endpoint_handler_copy_current_path(v126);
            *buf = 136448002;
            v134 = "nw_flow_service_reads";
            v135 = 2082;
            v136 = v50;
            v137 = 2082;
            v138 = v51;
            v139 = 2082;
            v140 = v53;
            v141 = 2082;
            v142 = v118;
            v143 = 2082;
            v144 = v54;
            v145 = 2114;
            v146 = v55;
            v147 = 2048;
            *v148 = v20;
            _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting min_length on final data read to %zu", buf, 0x52u);

            v49 = loga;
          }
        }

        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = ___ZL21nw_flow_service_readsP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP16nw_flow_protocolb_block_invoke;
        v128[3] = &unk_1E6A2DB90;
        v129 = v126;
        v130 = a3;
        v131 = v19 >> 2;
        v21 = nw_read_request_create(v20, 0xFFFFFFFFuLL, 0, 0, v128);
        request_list_append = nw_read_request_list_append(a3->read_requests, v21);
        v23 = a3->read_requests;
        a3->read_requests = request_list_append;
      }

      if (a3->pending_input_frames.tqh_first)
      {
        nw_flow_process_input_frames(v126, v122, &a3->protocol, &a3->pending_input_frames, BYTE4(v132) & 1, (v132 & 0x400000000) != 0, 0);
        v24 = a3->read_requests;
        if (!v24)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v24 = a3->read_requests;
      }

      v25 = v24;
      log = v25;
      if ((v132 & 0x100000000) != 0)
      {
        maximum_datagram_count = nw_read_request_get_maximum_datagram_count(v25);
        v27 = 0xFFFFFFFFLL;
        if (!maximum_datagram_count)
        {
          v76 = -1;
LABEL_93:
          if ((nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v77 = gconnectionLogObj;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = nw_endpoint_handler_get_id_string(v126);
              v79 = nw_endpoint_handler_dry_run_string(v126);
              v80 = nw_endpoint_handler_copy_endpoint(v126);
              v81 = v80;
              if (v80)
              {
                v121 = _nw_endpoint_get_logging_description(v80);
              }

              else
              {
                v121 = "<NULL>";
              }

              v82 = nw_endpoint_handler_state_string(v126);
              v83 = nw_endpoint_handler_mode_string(v126);
              v84 = nw_endpoint_handler_copy_current_path(v126);
              *buf = 136448258;
              v134 = "nw_flow_service_reads";
              v135 = 2082;
              v136 = v78;
              v137 = 2082;
              v138 = v79;
              v139 = 2082;
              v140 = v121;
              v141 = 2082;
              v142 = v82;
              v143 = 2082;
              v144 = v83;
              v145 = 2114;
              v146 = v84;
              v147 = 1024;
              *v148 = maximum_datagram_count;
              *&v148[4] = 1024;
              *&v148[6] = v76;
              _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Read request has %u frame count, %u byte count", buf, 0x54u);
            }
          }

          goto LABEL_103;
        }
      }

      else
      {
        next_max_size = nw_read_request_get_next_max_size(a3->read_requests);
        if (next_max_size > 0xFFFFFFFE)
        {
          v27 = 0xFFFFFFFFLL;
        }

        else
        {
          v27 = next_max_size;
        }

        if (v27)
        {
          maximum_datagram_count = -1;
        }

        else
        {
          v76 = 0;
          maximum_datagram_count = -1;
          if (!nw_read_request_is_metadata_only(log))
          {
            goto LABEL_93;
          }
        }
      }

      is_metadata_only = nw_read_request_is_metadata_only(log);
      if (is_metadata_only)
      {
        v30 = 1;
      }

      else
      {
        v30 = maximum_datagram_count;
      }

      type.tqh_first = 0;
      type.tqh_last = &type;
      v31 = (v120->callbacks->get_input_frames)(v120, a3, !is_metadata_only, v27, v30, &type);
      if (v30 == -1)
      {
        if (gLogDatapath & 1) == 0 || (nw_endpoint_handler_get_logging_disabled(v126))
        {
          goto LABEL_52;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v56 = nw_endpoint_handler_get_id_string(v126);
          v57 = nw_endpoint_handler_dry_run_string(v126);
          v58 = nw_endpoint_handler_copy_endpoint(v126);
          v59 = nw_endpoint_get_logging_description(v58);
          v60 = nw_endpoint_handler_state_string(v126);
          v61 = nw_endpoint_handler_mode_string(v126);
          v62 = nw_endpoint_handler_copy_current_path(v126);
          *buf = 136448002;
          v134 = "nw_flow_service_reads";
          v135 = 2082;
          v136 = v56;
          v137 = 2082;
          v138 = v57;
          v139 = 2082;
          v140 = v59;
          v141 = 2082;
          v142 = v60;
          v143 = 2082;
          v144 = v61;
          v145 = 2114;
          v146 = v62;
          v147 = 1024;
          *v148 = v31;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to read", buf, 0x4Eu);
        }
      }

      else
      {
        if (!gLogDatapath || (nw_endpoint_handler_get_logging_disabled(v126) & 1) != 0)
        {
          goto LABEL_52;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = nw_endpoint_handler_get_id_string(v126);
          v34 = nw_endpoint_handler_dry_run_string(v126);
          v117 = v32;
          v35 = nw_endpoint_handler_copy_endpoint(v126);
          v36 = nw_endpoint_get_logging_description(v35);
          v116 = nw_endpoint_handler_state_string(v126);
          v37 = nw_endpoint_handler_mode_string(v126);
          v38 = nw_endpoint_handler_copy_current_path(v126);
          *buf = 136448258;
          v134 = "nw_flow_service_reads";
          v135 = 2082;
          v136 = v33;
          v137 = 2082;
          v138 = v34;
          v139 = 2082;
          v140 = v36;
          v141 = 2082;
          v142 = v116;
          v143 = 2082;
          v144 = v37;
          v145 = 2114;
          v146 = v38;
          v147 = 1024;
          *v148 = v31;
          *&v148[4] = 1024;
          *&v148[6] = v30;
          _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to read, request wants %u frames", buf, 0x54u);

          v32 = v117;
        }
      }

LABEL_52:
      if (!type.tqh_first && v31 && (nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = nw_endpoint_handler_get_id_string(v126);
          v41 = nw_endpoint_handler_dry_run_string(v126);
          v42 = nw_endpoint_handler_copy_endpoint(v126);
          v43 = v42;
          if (v42)
          {
            v44 = _nw_endpoint_get_logging_description(v42);
          }

          else
          {
            v44 = "<NULL>";
          }

          v45 = nw_endpoint_handler_state_string(v126);
          v46 = nw_endpoint_handler_mode_string(v126);
          v47 = nw_endpoint_handler_copy_current_path(v126);
          *buf = 136448002;
          v134 = "nw_flow_service_reads";
          v135 = 2082;
          v136 = v40;
          v137 = 2082;
          v138 = v41;
          v139 = 2082;
          v140 = v44;
          v141 = 2082;
          v142 = v45;
          v143 = 2082;
          v144 = v46;
          v145 = 2114;
          v146 = v47;
          v147 = 1024;
          *v148 = v31;
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler reported %u frames to read, but array is empty", buf, 0x4Eu);
        }
      }

      v48 = nw_flow_process_input_frames(v126, v122, &a3->protocol, &type, BYTE4(v132) & 1, (v132 & 0x400000000) != 0, 1);

      if (!v48)
      {
        goto LABEL_103;
      }
    }
  }

  if ((v16 & 0x40) == 0)
  {
    if (v123)
    {
      v63 = 64;
    }

    else
    {
      v63 = 0;
    }

    *(a3 + 166) = v16 | v63;
  }

  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v126) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v64 = gconnectionLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v65 = nw_endpoint_handler_get_id_string(v126);
      v66 = nw_endpoint_handler_dry_run_string(v126);
      v67 = nw_endpoint_handler_copy_endpoint(v126);
      v68 = nw_endpoint_get_logging_description(v67);
      v69 = nw_endpoint_handler_state_string(v126);
      v70 = nw_endpoint_handler_mode_string(v126);
      v71 = nw_endpoint_handler_copy_current_path(v126);
      v72 = (*(a3 + 166) >> 6) & 1;
      *buf = 136448002;
      v134 = "nw_flow_service_reads";
      v135 = 2082;
      v136 = v65;
      v137 = 2082;
      v138 = v66;
      v139 = 2082;
      v140 = v68;
      v141 = 2082;
      v142 = v69;
      v143 = 2082;
      v144 = v70;
      v145 = 2114;
      v146 = v71;
      v147 = 1024;
      *v148 = v72;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already servicing reads, ignore read (deferred final read is %{BOOL}d)", buf, 0x4Eu);
    }
  }

LABEL_111:

  return v119;
}