void ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke(uint64_t a1)
{
  v165 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = *(v1 + 480);
  if (v3)
  {
    nw_http_connection_metadata_closed(*(v1 + 768));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v109 = __nwlog_obj();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        v110 = *(v2 + 488);
        v111 = *(*(v2 + 480) + 372);
        v112 = *(v2 + 860);
        if (v110)
        {
          LODWORD(v110) = *(v110 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v160 = " ";
        v161 = 1024;
        *v162 = v111;
        *&v162[4] = 1024;
        *&v162[6] = v112;
        *&v162[10] = 1024;
        *&v162[12] = v110;
        _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing unprocessed_input_frames", buf, 0x32u);
      }
    }

    v4 = (v2 + 616);
    if (gLogDatapath == 1)
    {
      v107 = __nwlog_obj();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v5 = *v4;
    if (*v4)
    {
      *(v5 + 40) = v151;
      v6 = *(v2 + 624);
      *v151 = v5;
      v152 = v6;
      *(v2 + 616) = 0;
      *(v2 + 624) = v4;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v160 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v161) = 0;
      do
      {
        v7 = *v151;
        if (!*v151)
        {
          break;
        }

        v8 = *(*v151 + 32);
        v9 = *(*v151 + 40);
        v10 = (v8 + 40);
        if (!v8)
        {
          v10 = &v152;
        }

        *v10 = v9;
        *v9 = v8;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v113 = __nwlog_obj();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        v114 = *(v2 + 488);
        v115 = *(*(v2 + 480) + 372);
        v116 = *(v2 + 860);
        if (v114)
        {
          LODWORD(v114) = *(v114 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v160 = " ";
        v161 = 1024;
        *v162 = v115;
        *&v162[4] = 1024;
        *&v162[6] = v116;
        *&v162[10] = 1024;
        *&v162[12] = v114;
        _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing processed_input_frames", buf, 0x32u);
      }
    }

    v11 = (v2 + 632);
    if (gLogDatapath == 1)
    {
      v108 = __nwlog_obj();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v12 = *v11;
    if (*v11)
    {
      *(v12 + 40) = v151;
      v13 = *(v2 + 640);
      *v151 = v12;
      v152 = v13;
      *(v2 + 632) = 0;
      *(v2 + 640) = v11;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v160 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v161) = 0;
      do
      {
        v14 = *v151;
        if (!*v151)
        {
          break;
        }

        v15 = *(*v151 + 32);
        v16 = *(*v151 + 40);
        v17 = (v15 + 40);
        if (!v15)
        {
          v17 = &v152;
        }

        *v17 = v16;
        *v16 = v15;
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v117 = __nwlog_obj();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        v118 = *(v2 + 488);
        v119 = *(*(v2 + 480) + 372);
        v120 = *(v2 + 860);
        if (v118)
        {
          LODWORD(v118) = *(v118 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v160 = " ";
        v161 = 1024;
        *v162 = v119;
        *&v162[4] = 1024;
        *&v162[6] = v120;
        *&v162[10] = 1024;
        *&v162[12] = v118;
        _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removing pending_output_frames", buf, 0x32u);
      }
    }

    *v151 = MEMORY[0x1E69E9820];
    v152 = 0x40000000;
    v153 = ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
    v154 = &__block_descriptor_tmp_57_42875;
    v155 = v2;
    v18 = *(v2 + 648);
    do
    {
      if (!v18)
      {
        break;
      }

      v19 = *(v18 + 32);
      v20 = v153(v151);
      v18 = v19;
    }

    while ((v20 & 1) != 0);
    nw_frame_cache_remove_all((v2 + 696));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v121 = __nwlog_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v122 = *(v2 + 488);
        v123 = *(*(v2 + 480) + 372);
        v124 = *(v2 + 860);
        if (v122)
        {
          LODWORD(v122) = *(v122 + 424);
        }

        v125 = *(v2 + 32);
        *buf = 136447746;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v160 = " ";
        v161 = 1024;
        *v162 = v123;
        *&v162[4] = 1024;
        *&v162[6] = v124;
        *&v162[10] = 1024;
        *&v162[12] = v122;
        *&v162[16] = 2048;
        *&v162[18] = v125;
        _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> calling remove input handler on output handler %p", buf, 0x3Cu);
      }
    }

    v21 = *(v3 + 336);
    *(v3 + 336) = v21 - 1;
    if (v21)
    {
LABEL_46:
      if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v126 = __nwlog_obj();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          v127 = *(v3 + 372);
          v128 = *(v3 + 336);
          *buf = 136447490;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 74;
          *&buf[22] = 2080;
          v160 = " ";
          v161 = 1024;
          *v162 = v127;
          *&v162[4] = 2048;
          *&v162[6] = v2;
          *&v162[14] = 1024;
          *&v162[16] = v128;
          _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed connection %p, now have %u connections", buf, 0x36u);
        }
      }

      if ((*(v2 + 872) & 0x800) == 0)
      {
LABEL_69:
        nw_protocol_remove_input_handler(*(v2 + 32), v2);
        nw_protocol_set_output_handler(v2, 0);
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v129 = __nwlog_obj();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
          {
            v130 = *(v2 + 488);
            v131 = *(*(v2 + 480) + 372);
            v132 = *(v2 + 860);
            if (v130)
            {
              LODWORD(v130) = *(v130 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 74;
            *&buf[22] = 2080;
            v160 = " ";
            v161 = 1024;
            *v162 = v131;
            *&v162[4] = 1024;
            *&v162[6] = v132;
            *&v162[10] = 1024;
            *&v162[12] = v130;
            *&v162[16] = 2048;
            *&v162[18] = v2;
            _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
          }
        }

        v45 = *(v2 + 760);
        if (v45)
        {
          v46 = *(v2 + 752);
          if (v46)
          {
            os_release(v46);
            v45 = *(v2 + 760);
          }
        }

        *(v2 + 752) = 0;
        *(v2 + 760) = v45 | 1;
        v47 = *(v2 + 744);
        if (v47)
        {
          v48 = *(v2 + 736);
          if (v48)
          {
            os_release(v48);
            v47 = *(v2 + 744);
          }
        }

        *(v2 + 736) = 0;
        *(v2 + 744) = v47 | 1;
        v49 = *(v2 + 488);
        if (!v49 || (v50 = *(v49 + 256), v50 != v2))
        {
LABEL_79:
          *(v2 + 488) = 0;
          if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v133 = __nwlog_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              v134 = *(v2 + 488);
              v135 = *(*(v2 + 480) + 372);
              v136 = *(v2 + 860);
              if (v134)
              {
                LODWORD(v134) = *(v134 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v2 + 74;
              *&buf[22] = 2080;
              v160 = " ";
              v161 = 1024;
              *v162 = v135;
              *&v162[4] = 1024;
              *&v162[6] = v136;
              *&v162[10] = 1024;
              *&v162[12] = v134;
              _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing frame arrays", buf, 0x32u);
            }
          }

          if (!*(v2 + 680))
          {
LABEL_103:
            if (!*(v2 + 664))
            {
LABEL_119:
              nw_frame_cache_destroy((v2 + 696));
              v77 = *(v2 + 528);
              if (v77)
              {
                v78 = *(v2 + 544);
                if (v78)
                {
                  nw_association_unregister(v77, v78);
                }
              }

              v79 = *(v2 + 800);
              if (v79)
              {
                free(v79);
                *(v2 + 800) = 0;
              }

              *(v2 + 840) = 0;
              v80 = *(v2 + 808);
              if (v80)
              {
                free(v80);
                *(v2 + 808) = 0;
              }

              *(v2 + 844) = 0;
              v81 = *(v2 + 816);
              if (v81)
              {
                free(v81);
                *(v2 + 816) = 0;
              }

              *(v2 + 848) = 0;
              v82 = *(v2 + 824);
              if (v82)
              {
                free(v82);
                *(v2 + 824) = 0;
              }

              *(v2 + 852) = 0;
              v83 = *(v2 + 832);
              if (v83)
              {
                free(v83);
                *(v2 + 832) = 0;
              }

              *(v2 + 856) = 0;
              (*(*(v2 + 608) + 16))();
              v84 = *(v2 + 608);
              if (v84)
              {
                _Block_release(v84);
                *(v2 + 608) = 0;
              }

              nw_http1_connection::~nw_http1_connection(v2);
              free(v85);
              if (!*(v3 + 336) && !*(v3 + 344))
              {
                nw_protocol_http1_destroy(v3, v3);
              }

              return;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_destroy";
            LODWORD(v150) = 12;
            v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s input frame array is not empty when http1 connection is destroyed", buf, v150);
            type[0] = OS_LOG_TYPE_ERROR;
            v156 = 0;
            if (__nwlog_fault(v67, type, &v156))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v68 = gLogObj;
                v69 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_117;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v70 = "%{public}s input frame array is not empty when http1 connection is destroyed";
LABEL_115:
                v75 = v68;
                v76 = v69;
LABEL_116:
                _os_log_impl(&dword_181A37000, v75, v76, v70, buf, 0xCu);
                goto LABEL_117;
              }

              if (v156 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v68 = gLogObj;
                v69 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_117;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v70 = "%{public}s input frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
                goto LABEL_115;
              }

              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v72 = gLogObj;
              v73 = type[0];
              v74 = os_log_type_enabled(gLogObj, type[0]);
              if (backtrace_string)
              {
                if (v74)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_destroy";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v72, v73, "%{public}s input frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_117;
              }

              if (v74)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v70 = "%{public}s input frame array is not empty when http1 connection is destroyed, no backtrace";
                v75 = v72;
                v76 = v73;
                goto LABEL_116;
              }
            }

LABEL_117:
            if (v67)
            {
              free(v67);
            }

            goto LABEL_119;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_destroy";
          LODWORD(v150) = 12;
          v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s output frame array is not empty when http1 connection is destroyed", buf, v150);
          type[0] = OS_LOG_TYPE_ERROR;
          v156 = 0;
          if (__nwlog_fault(v51, type, &v156))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v53 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_101;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v54 = "%{public}s output frame array is not empty when http1 connection is destroyed";
LABEL_99:
              v65 = v52;
              v66 = v53;
LABEL_100:
              _os_log_impl(&dword_181A37000, v65, v66, v54, buf, 0xCu);
              goto LABEL_101;
            }

            if (v156 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v53 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_101;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v54 = "%{public}s output frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
              goto LABEL_99;
            }

            v55 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v56 = gLogObj;
            v57 = type[0];
            v58 = os_log_type_enabled(gLogObj, type[0]);
            if (v55)
            {
              if (v58)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_destroy";
                *&buf[12] = 2082;
                *&buf[14] = v55;
                _os_log_impl(&dword_181A37000, v56, v57, "%{public}s output frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v55);
              goto LABEL_101;
            }

            if (v58)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v54 = "%{public}s output frame array is not empty when http1 connection is destroyed, no backtrace";
              v65 = v56;
              v66 = v57;
              goto LABEL_100;
            }
          }

LABEL_101:
          if (v51)
          {
            free(v51);
          }

          goto LABEL_103;
        }

        if (*(v49 + 248))
        {
          if (v50[61] == v49)
          {
            if ((*(v49 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v86 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v87 = *(v49 + 256);
                v88 = *(*(v49 + 248) + 372);
                if (v87)
                {
                  LODWORD(v87) = *(v87 + 860);
                }

                v89 = *(v49 + 424);
                *buf = 136448002;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2082;
                *&buf[14] = v49 + 74;
                *&buf[22] = 2080;
                v160 = " ";
                v161 = 1024;
                *v162 = v88;
                *&v162[4] = 1024;
                *&v162[6] = v87;
                *&v162[10] = 1024;
                *&v162[12] = v89;
                *&v162[16] = 2048;
                *&v162[18] = v49;
                v163 = 2048;
                v164 = v2;
                _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
              }
            }

            v90 = v50 + 79;
            if (gLogDatapath == 1)
            {
              v149 = __nwlog_obj();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            v91 = *v90;
            if (*v90)
            {
              *(v91 + 40) = type;
              v92 = v50[80];
              *type = v91;
              v158 = v92;
              v50[79] = 0;
              v50[80] = v90;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v160 = &__block_descriptor_tmp_21_49595;
              LOBYTE(v161) = 0;
              do
              {
                v93 = *type;
                if (!*type)
                {
                  break;
                }

                v94 = *(*type + 32);
                v95 = *(*type + 40);
                v96 = (v94 + 40);
                if (!v94)
                {
                  v96 = &v158;
                }

                *v96 = v95;
                *v95 = v94;
                *(v93 + 32) = 0;
                *(v93 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            *(v49 + 256) = 0;
            v50[61] = 0;
            nw_protocol_set_output_handler(v49, 0);
            nw_protocol_set_input_handler(v50, 0);
            goto LABEL_79;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = v50[61];
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v2;
          *&buf[22] = 2048;
          v160 = v49;
          v161 = 2048;
          *v162 = v59;
          LODWORD(v150) = 42;
          v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p does not already have stream %p, has %p", buf, v150);
          type[0] = OS_LOG_TYPE_ERROR;
          v156 = 0;
          if (__nwlog_fault(v60, type, &v156))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              v62 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_165;
              }

              v63 = v50[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v160 = v49;
              v161 = 2048;
              *v162 = v63;
              v64 = "%{public}s Connection %p does not already have stream %p, has %p";
              goto LABEL_164;
            }

            if (v156 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              v62 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_165;
              }

              v100 = v50[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v160 = v49;
              v161 = 2048;
              *v162 = v100;
              v64 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
              goto LABEL_164;
            }

            v97 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v61 = gLogObj;
            v62 = type[0];
            v98 = os_log_type_enabled(gLogObj, type[0]);
            if (v97)
            {
              if (v98)
              {
                v99 = v50[61];
                *buf = 136447234;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2048;
                *&buf[14] = v2;
                *&buf[22] = 2048;
                v160 = v49;
                v161 = 2048;
                *v162 = v99;
                *&v162[8] = 2082;
                *&v162[10] = v97;
                _os_log_impl(&dword_181A37000, v61, v62, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v97);
              goto LABEL_165;
            }

            if (v98)
            {
              v101 = v50[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v160 = v49;
              v161 = 2048;
              *v162 = v101;
              v64 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_164:
              _os_log_impl(&dword_181A37000, v61, v62, v64, buf, 0x2Au);
            }
          }

LABEL_165:
          if (v60)
          {
            free(v60);
          }

          goto LABEL_79;
        }

        v142 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        LODWORD(v150) = 12;
        v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v150);
        type[0] = OS_LOG_TYPE_ERROR;
        v156 = 0;
        if (__nwlog_fault(v143, type, &v156))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v144 = __nwlog_obj();
            v145 = type[0];
            if (!os_log_type_enabled(v144, type[0]))
            {
              goto LABEL_231;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v146 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_230;
          }

          if (v156 != 1)
          {
            v144 = __nwlog_obj();
            v145 = type[0];
            if (!os_log_type_enabled(v144, type[0]))
            {
              goto LABEL_231;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v146 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_230;
          }

          v147 = __nw_create_backtrace_string();
          v144 = __nwlog_obj();
          v145 = type[0];
          v148 = os_log_type_enabled(v144, type[0]);
          if (v147)
          {
            if (v148)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v147;
              _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v147);
            goto LABEL_231;
          }

          if (v148)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v146 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
LABEL_230:
            _os_log_impl(&dword_181A37000, v144, v145, v146, buf, 0xCu);
          }
        }

LABEL_231:
        if (v143)
        {
          free(v143);
        }

        goto LABEL_79;
      }

      v33 = *(v3 + 368);
      *(v3 + 368) = v33 - 1;
      if (v33)
      {
LABEL_67:
        if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v139 = __nwlog_obj();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
          {
            v140 = *(v3 + 372);
            v141 = *(v3 + 368) + *(v3 + 364);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 74;
            *&buf[22] = 2080;
            v160 = " ";
            v161 = 1024;
            *v162 = v140;
            *&v162[4] = 1024;
            *&v162[6] = v141;
            *&v162[10] = 2048;
            *&v162[12] = v2;
            _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> decreased connection pool width to %u after removing non-reusable connection %p", buf, 0x36u);
          }
        }

        goto LABEL_69;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = *(v3 + 368);
      *buf = 136446978;
      *&buf[4] = "nw_http1_remove_connection";
      *&buf[12] = 2082;
      *&buf[14] = "http1->nonresuable_connections";
      *&buf[22] = 2048;
      v160 = 1;
      v161 = 2048;
      *v162 = v34;
      LODWORD(v150) = 42;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v150);
      type[0] = OS_LOG_TYPE_ERROR;
      v156 = 0;
      if (__nwlog_fault(v35, type, &v156))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v38 = *(v3 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v160 = 1;
            v161 = 2048;
            *v162 = v38;
            v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_63:
            _os_log_impl(&dword_181A37000, v36, v37, v39, buf, 0x2Au);
          }
        }

        else if (v156 == 1)
        {
          v40 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type[0];
          v41 = os_log_type_enabled(gLogObj, type[0]);
          if (v40)
          {
            if (v41)
            {
              v42 = *(v3 + 368);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              v160 = 1;
              v161 = 2048;
              *v162 = v42;
              *&v162[8] = 2082;
              *&v162[10] = v40;
              _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v40);
            goto LABEL_64;
          }

          if (v41)
          {
            v44 = *(v3 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v160 = 1;
            v161 = 2048;
            *v162 = v44;
            v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_63;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v43 = *(v3 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v160 = 1;
            v161 = 2048;
            *v162 = v43;
            v39 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_63;
          }
        }
      }

LABEL_64:
      if (v35)
      {
        free(v35);
      }

      *(v3 + 368) = 0;
      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = *(v3 + 336);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->connections_count";
    *&buf[22] = 2048;
    v160 = 1;
    v161 = 2048;
    *v162 = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v156 = 0;
    if (__nwlog_fault(v23, type, &v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v26 = *(v3 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v160 = 1;
          v161 = 2048;
          *v162 = v26;
          v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_42:
          _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x2Au);
        }
      }

      else if (v156 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        v29 = os_log_type_enabled(gLogObj, type[0]);
        if (v28)
        {
          if (v29)
          {
            v30 = *(v3 + 336);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v160 = 1;
            v161 = 2048;
            *v162 = v30;
            *&v162[8] = 2082;
            *&v162[10] = v28;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v28);
          goto LABEL_43;
        }

        if (v29)
        {
          v32 = *(v3 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v160 = 1;
          v161 = 2048;
          *v162 = v32;
          v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_42;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v31 = *(v3 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v160 = 1;
          v161 = 2048;
          *v162 = v31;
          v27 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    if (v23)
    {
      free(v23);
    }

    *(v3 + 336) = 0;
    goto LABEL_46;
  }

  v102 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_tear_down_connection";
  v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null http1", buf, 12);
  v151[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v103, v151, type))
  {
    if (v151[0] == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v105 = v151[0];
      if (!os_log_type_enabled(v104, v151[0]))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1";
      goto LABEL_221;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v104 = __nwlog_obj();
      v105 = v151[0];
      if (!os_log_type_enabled(v104, v151[0]))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1, backtrace limit exceeded";
      goto LABEL_221;
    }

    v137 = __nw_create_backtrace_string();
    v104 = __nwlog_obj();
    v105 = v151[0];
    v138 = os_log_type_enabled(v104, v151[0]);
    if (v137)
    {
      if (v138)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v137;
        _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v137);
      goto LABEL_222;
    }

    if (v138)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v106 = "%{public}s called with null http1, no backtrace";
LABEL_221:
      _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
    }
  }

LABEL_222:
  if (v103)
  {
    free(v103);
  }
}

uint64_t ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 32) + 656);
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
  a2[10] = 0;
  a2[11] = 0;
  nw_frame_cache_return_frame(*(a1 + 32) + 696, a2);
  return 1;
}

void nw_http1_connection::~nw_http1_connection(nw_http1_connection *this)
{
  if (*(this + 776))
  {
    v2 = *(this + 96);
    if (v2)
    {
      os_release(v2);
    }
  }

  *(this + 96) = 0;
  if (*(this + 760))
  {
    v3 = *(this + 94);
    if (v3)
    {
      os_release(v3);
    }
  }

  *(this + 94) = 0;
  if (*(this + 744))
  {
    v4 = *(this + 92);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(this + 92) = 0;
  if (*(this + 584))
  {
    v5 = *(this + 72);
    if (v5)
    {
      os_release(v5);
    }
  }

  *(this + 72) = 0;
  if (*(this + 568))
  {
    v6 = *(this + 70);
    if (v6)
    {
      os_release(v6);
    }
  }

  *(this + 70) = 0;
  if (*(this + 552))
  {
    v7 = *(this + 68);
    if (v7)
    {
      os_release(v7);
    }
  }

  *(this + 68) = 0;
  if (*(this + 536))
  {
    v8 = *(this + 66);
    if (v8)
    {
      os_release(v8);
    }
  }

  *(this + 66) = 0;
  if (*(this + 520))
  {
    v9 = *(this + 64);
    if (v9)
    {
      os_release(v9);
    }
  }

  *(this + 64) = 0;
  if (*(this + 504))
  {
    v10 = *(this + 62);
    if (v10)
    {
      os_release(v10);
    }
  }

  *(this + 62) = 0;
}

void nw_protocol_http1_destroy(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a2 + 344) || *(a2 + 336))
  {
    if ((*(a2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a2 + 372);
        v18 = *(a2 + 344);
        v19 = *(a2 + 336);
        v20 = 136447746;
        v21 = "nw_protocol_http1_destroy";
        v22 = 2082;
        v23 = a2 + 74;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v17;
        v28 = 2048;
        v29 = a2;
        v30 = 1024;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> not destroying http1 %p, still have %u input handlers and %u output handlers", &v20, 0x3Cu);
      }
    }
  }

  else
  {
    if ((*(a2 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v5 = *(a2 + 372);
        v20 = 136446978;
        v21 = "nw_protocol_http1_destroy";
        v22 = 2082;
        v23 = a2 + 74;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> no more input handlers or output handlers, destroying", &v20, 0x26u);
      }
    }

    v6 = *(a2 + 328);
    if (v6)
    {
      (*(*v6 + 8))(v6, a2, 0);
    }

    nw_protocol_remove_instance(a1);
    v7 = *(a2 + 288);
    if (v7)
    {
      v8 = *(a2 + 280);
      if (v8)
      {
        os_release(v8);
        v7 = *(a2 + 288);
      }
    }

    *(a2 + 280) = 0;
    *(a2 + 288) = v7 | 1;
    v9 = *(a2 + 272);
    if (v9)
    {
      v10 = *(a2 + 264);
      if (v10)
      {
        os_release(v10);
        v9 = *(a2 + 272);
      }
    }

    *(a2 + 264) = 0;
    *(a2 + 272) = v9 | 1;
    *(a2 + 40) = 0;
    (*(*(a2 + 200) + 16))();
    v11 = *(a2 + 200);
    if (v11)
    {
      _Block_release(v11);
      *(a2 + 200) = 0;
    }

    if (*(a2 + 320))
    {
      v12 = *(a2 + 312);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a2 + 312) = 0;
    if (*(a2 + 304))
    {
      v13 = *(a2 + 296);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a2 + 296) = 0;
    if (*(a2 + 288))
    {
      v14 = *(a2 + 280);
      if (v14)
      {
        os_release(v14);
      }
    }

    *(a2 + 280) = 0;
    if (*(a2 + 272))
    {
      v15 = *(a2 + 264);
      if (v15)
      {
        os_release(v15);
      }
    }

    free(a2);
  }
}

uint64_t __Block_byref_object_copy__42960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__42961(uint64_t result)
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

void ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_tls(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
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

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v12 = outbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = *(a1 + 32);
      v15 = v14 + 74;
      v16 = *(v14 + 256);
      v17 = *(*(v14 + 248) + 372);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 860);
      }

      v18 = *(v14 + 424);
      *buf = 136447746;
      v65 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v66 = 2082;
      v67 = v15;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v17;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v18;
      v76 = 2048;
      v77 = v12;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished sending {body_bytes=%llu}";
      goto LABEL_36;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v41 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_2;
      v63[3] = &__block_descriptor_tmp_48_43332;
      v63[4] = *(a1 + 32);
      v42 = v21;
      v43 = v63;
      _nw_http_request_access_method(v42, v43);
    }

    if (v41)
    {
      v25 = v41;
      status_code = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = v45 + 74;
      v47 = *(v45 + 256);
      v48 = *(*(v45 + 248) + 372);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 860);
      }

      v49 = *(v45 + 424);
      *buf = 136447746;
      v65 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v66 = 2082;
      v67 = v46;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v47;
      v74 = 1024;
      v75 = v49;
      v76 = 1024;
      LODWORD(v77) = status_code;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> sending response header {status=%hu}";
      goto LABEL_47;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 0x40000000;
        v58 = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_51;
        v59 = &__block_descriptor_tmp_52_43338;
        v5 = *(a1 + 32);
        v60 = a2;
        v61 = v5;
        v6 = nw_http_transaction_metadata_get_outbound_message(a2);
        v7 = v6;
        if (v6)
        {
          v8 = nw_http_metadata_copy_request(v6);
          v9 = nw_http_metadata_copy_response(v7);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_57;
          }

          if (v8)
          {
            if (v9)
            {
              goto LABEL_58;
            }

LABEL_56:
            v9 = nw_http_metadata_copy_response(inbound_message);
LABEL_57:
            if (!v9)
            {
              v52 = 0;
              if (!v8)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }

LABEL_58:
            v9 = v9;
            v52 = _nw_http_response_get_status_code(v9);

            if (!v8)
            {
LABEL_72:
              v58(v57, "", v52);
              v53 = 0;
              if (!inbound_message)
              {
LABEL_63:
                if (v7)
                {
                  os_release(v7);
                }

                if (v9)
                {
                  os_release(v9);
                }

                if (v53)
                {
                  v50 = v53;
                  goto LABEL_69;
                }

                return;
              }

LABEL_62:
              os_release(inbound_message);
              goto LABEL_63;
            }

LABEL_61:
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 0x40000000;
            v55[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_53;
            v55[3] = &unk_1E6A32830;
            v55[4] = v57;
            v56 = v52;
            v53 = v8;
            v54 = v55;
            _nw_http_request_access_method(v53, v54);

            if (!inbound_message)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v51 = nw_http_transaction_metadata_get_inbound_message(a2);
          v9 = 0;
          if (!v51)
          {
            v52 = 0;
            inbound_message = 0;
            goto LABEL_72;
          }

          inbound_message = v51;
        }

        v8 = nw_http_metadata_copy_request(inbound_message);
        if (v9)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v35 = inbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v36 = *(a1 + 32);
      v37 = v36 + 74;
      v38 = *(v36 + 256);
      v39 = *(*(v36 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v36 + 424);
      *buf = 136447746;
      v65 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v66 = 2082;
      v67 = v37;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      v74 = 1024;
      v75 = v40;
      v76 = 2048;
      v77 = v35;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished receiving {body_bytes=%llu}";
LABEL_36:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v19, buf, 0x3Cu);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v22 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_49;
      v62[3] = &__block_descriptor_tmp_50_43335;
      v62[4] = *(a1 + 32);
      v23 = v21;
      v24 = v62;
      _nw_http_request_access_method(v23, v24);
    }

    if (v22)
    {
      v25 = v22;
      v26 = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v28 = *(a1 + 32);
      v29 = v28 + 74;
      v30 = *(v28 + 256);
      v31 = *(*(v28 + 248) + 372);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 860);
      }

      v32 = *(v28 + 424);
      *buf = 136447746;
      v65 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v66 = 2082;
      v67 = v29;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v31;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v32;
      v76 = 1024;
      LODWORD(v77) = v26;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> receiving response header {status=%hu}";
LABEL_47:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v33, buf, 0x38u);
LABEL_48:
      os_release(v25);
    }
  }

  if (v21)
  {
    os_release(v21);
  }

  if (outbound_message)
  {
    v50 = outbound_message;
LABEL_69:
    os_release(v50);
  }
}

void nw_http1_connection::nw_http1_connection(nw_http1_connection *this)
{
  *(this + 62) = 0;
  *(this + 504) &= ~1u;
  *(this + 64) = 0;
  *(this + 520) &= ~1u;
  *(this + 66) = 0;
  *(this + 536) &= ~1u;
  *(this + 68) = 0;
  *(this + 552) &= ~1u;
  *(this + 70) = 0;
  *(this + 568) &= ~1u;
  *(this + 72) = 0;
  *(this + 584) &= ~1u;
  *(this + 92) = 0;
  *(this + 744) &= ~1u;
  *(this + 94) = 0;
  *(this + 760) &= ~1u;
  *(this + 96) = 0;
  *(this + 776) &= ~1u;
}

void ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v1 + 488);
        v4 = *(*(v1 + 480) + 372);
        v5 = *(v1 + 860);
        if (v3)
        {
          LODWORD(v3) = *(v3 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_cancel";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 74;
        *&buf[22] = 2080;
        v74 = " ";
        *v75 = 1024;
        *&v75[2] = v4;
        *&v75[6] = 1024;
        *&v75[8] = v5;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v3;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> cancelling http1 connection", buf, 0x32u);
      }
    }

    if ((*(v1 + 872) & 0x100) != 0)
    {
      if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v1 + 488);
          v16 = *(*(v1 + 480) + 372);
          v17 = *(v1 + 860);
          if (v15)
          {
            LODWORD(v15) = *(v15 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v1 + 74;
          *&buf[22] = 2080;
          v74 = " ";
          *v75 = 1024;
          *&v75[2] = v16;
          *&v75[6] = 1024;
          *&v75[8] = v17;
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v15;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
        }
      }

      goto LABEL_48;
    }

    *(v1 + 872) |= 0x100u;
    if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v52 = __nwlog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(v1 + 488);
        v54 = *(*(v1 + 480) + 372);
        v55 = *(v1 + 860);
        if (v53)
        {
          LODWORD(v53) = *(v53 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 74;
        *&buf[22] = 2080;
        v74 = " ";
        *v75 = 1024;
        *&v75[2] = v54;
        *&v75[6] = 1024;
        *&v75[8] = v55;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v53;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v6 = *(v1 + 480);
    if (!v6)
    {
      v45 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null http1", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v72 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v46, type, &v72))
      {
        goto LABEL_133;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = type[0];
        if (!os_log_type_enabled(v47, type[0]))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v49 = "%{public}s called with null http1";
      }

      else if (v72 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = type[0];
        v58 = os_log_type_enabled(v47, type[0]);
        if (backtrace_string)
        {
          if (v58)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_133;
        }

        if (!v58)
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v49 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = type[0];
        if (!os_log_type_enabled(v47, type[0]))
        {
          goto LABEL_133;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v49 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v69 = buf;
LABEL_132:
      _os_log_impl(&dword_181A37000, v47, v48, v49, v69, 0xCu);
      goto LABEL_133;
    }

    if ((*(v1 + 872) & 0x800) != 0)
    {
      if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v18 = __nwlog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(v1 + 488);
          v20 = *(*(v1 + 480) + 372);
          v21 = *(v1 + 860);
          if (v19)
          {
            LODWORD(v19) = *(v19 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v1 + 74;
          *&buf[22] = 2080;
          v74 = " ";
          *v75 = 1024;
          *&v75[2] = v20;
          *&v75[6] = 1024;
          *&v75[8] = v21;
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v19;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_47;
    }

    *(v1 + 872) |= 0x800u;
    v7 = *(v6 + 368) + 1;
    *(v6 + 368) = v7;
    if (v7 == v7 << 31 >> 31)
    {
LABEL_42:
      if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v59 = __nwlog_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(v1 + 488);
          v61 = *(*(v1 + 480) + 372);
          v62 = *(v1 + 860);
          if (v60)
          {
            LODWORD(v60) = *(v60 + 424);
          }

          v63 = *(v6 + 368) + *(v6 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v1 + 74;
          *&buf[22] = 2080;
          v74 = " ";
          *v75 = 1024;
          *&v75[2] = v61;
          *&v75[6] = 1024;
          *&v75[8] = v62;
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v60;
          HIWORD(v76) = 1024;
          v77 = v63;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v27 = *(v1 + 496);
      if (!v27)
      {
        v56 = __nwlog_obj();
        *type = 136446210;
        v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v70) = 12;
        v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null http1_connection->context", type, v70);
        v72 = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (!__nwlog_fault(v46, &v72, &v71))
        {
          goto LABEL_133;
        }

        if (v72 == OS_LOG_TYPE_FAULT)
        {
          v47 = __nwlog_obj();
          v48 = v72;
          if (!os_log_type_enabled(v47, v72))
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1_connection->context";
LABEL_131:
          v69 = type;
          goto LABEL_132;
        }

        if (v71 != 1)
        {
          v47 = __nwlog_obj();
          v48 = v72;
          if (!os_log_type_enabled(v47, v72))
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_131;
        }

        v65 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = v72;
        v66 = os_log_type_enabled(v47, v72);
        if (!v65)
        {
          if (!v66)
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_131;
        }

        if (v66)
        {
          *type = 136446466;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v80 = 2082;
          v81 = v65;
          v67 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_112:
          _os_log_impl(&dword_181A37000, v47, v48, v67, type, 0x16u);
        }

LABEL_113:
        free(v65);
        if (!v46)
        {
LABEL_47:
          if (!*(v1 + 488))
          {
            v33 = *(v1 + 784);
            if (v33)
            {
              if (*v33)
              {
                dispatch_source_set_timer(*v33, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
              }

              else
              {
                *(v33 + 32) = xmmword_182B08D40;
                if (*(v33 + 48) == 1 && *(v33 + 49) == 1)
                {
                  nw_queue_source_run_timer(v33);
                }
              }
            }

            else
            {
              if ((*(v1 + 158) & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v34 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v35 = *(v1 + 488);
                  v36 = *(*(v1 + 480) + 372);
                  v37 = *(v1 + 860);
                  if (v35)
                  {
                    LODWORD(v35) = *(v35 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v1 + 74;
                  *&buf[22] = 2080;
                  v74 = " ";
                  *v75 = 1024;
                  *&v75[2] = v36;
                  *&v75[6] = 1024;
                  *&v75[8] = v37;
                  LOWORD(v76) = 1024;
                  *(&v76 + 2) = v35;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v38 = *(v1 + 608);
              v39 = *(v1 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              v74 = &unk_1E6A32780;
              *v75 = v38;
              nw_queue_context_async(v39, buf);
            }
          }

LABEL_48:
          v30 = *(v1 + 488);
          if (v30)
          {
            nw_protocol_error(*(v30 + 48), v30);
            v31 = *(v1 + 488);
            if (v31)
            {
              v32 = *(v31 + 48);
            }

            else
            {
              v32 = 0;
            }

            nw_protocol_disconnected(v32, v31);
          }

          return;
        }

LABEL_134:
        free(v46);
        goto LABEL_47;
      }

      v28 = *(v1 + 480);
      if (v28)
      {
        v29 = *(v28 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        v74 = &unk_1E6A327A8;
        *v75 = v29;
        nw_queue_context_async(v27, buf);
        goto LABEL_47;
      }

      v64 = __nwlog_obj();
      *type = 136446210;
      v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v70) = 12;
      v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s called with null http1", type, v70);
      v72 = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v46, &v72, &v71))
      {
        if (v72 == OS_LOG_TYPE_FAULT)
        {
          v47 = __nwlog_obj();
          v48 = v72;
          if (!os_log_type_enabled(v47, v72))
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1";
          goto LABEL_131;
        }

        if (v71 != 1)
        {
          v47 = __nwlog_obj();
          v48 = v72;
          if (!os_log_type_enabled(v47, v72))
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_131;
        }

        v65 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = v72;
        v68 = os_log_type_enabled(v47, v72);
        if (!v65)
        {
          if (!v68)
          {
            goto LABEL_133;
          }

          *type = 136446210;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v49 = "%{public}s called with null http1, no backtrace";
          goto LABEL_131;
        }

        if (v68)
        {
          *type = 136446466;
          v79 = "nw_http1_match_idle_connection_with_pending_stream_async";
          v80 = 2082;
          v81 = v65;
          v67 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_112;
        }

        goto LABEL_113;
      }

LABEL_133:
      if (!v46)
      {
        goto LABEL_47;
      }

      goto LABEL_134;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = *(v6 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    v74 = 1;
    *v75 = 2048;
    *&v75[2] = v8;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v72 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v9, type, &v72))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v12 = *(v6 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v74 = 1;
          *v75 = 2048;
          *&v75[2] = v12;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_38:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

      else if (v72 == OS_LOG_TYPE_INFO)
      {
        v22 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        v23 = os_log_type_enabled(gLogObj, type[0]);
        if (v22)
        {
          if (v23)
          {
            v24 = *(v6 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v74 = 1;
            *v75 = 2048;
            *&v75[2] = v24;
            *&v75[10] = 2082;
            v76 = v22;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v22);
          goto LABEL_39;
        }

        if (v23)
        {
          v26 = *(v6 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v74 = 1;
          *v75 = 2048;
          *&v75[2] = v26;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_38;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v25 = *(v6 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v74 = 1;
          *v75 = 2048;
          *&v75[2] = v25;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_38;
        }
      }
    }

LABEL_39:
    if (v9)
    {
      free(v9);
    }

    *(v6 + 368) = -1;
    goto LABEL_42;
  }

  v40 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_connection_cancel";
  v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null http1_connection", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v72 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v41, type, &v72))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (!os_log_type_enabled(v42, type[0]))
      {
        goto LABEL_118;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_cancel";
      v44 = "%{public}s called with null http1_connection";
      goto LABEL_117;
    }

    if (v72 != OS_LOG_TYPE_INFO)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (!os_log_type_enabled(v42, type[0]))
      {
        goto LABEL_118;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_cancel";
      v44 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_117;
    }

    v50 = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v43 = type[0];
    v51 = os_log_type_enabled(v42, type[0]);
    if (v50)
    {
      if (v51)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_cancel";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
      goto LABEL_118;
    }

    if (v51)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_cancel";
      v44 = "%{public}s called with null http1_connection, no backtrace";
LABEL_117:
      _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
    }
  }

LABEL_118:
  if (v41)
  {
    free(v41);
  }
}

uint64_t ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_tls(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
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

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

BOOL ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2(uint64_t a1, char *__s1)
{
  v3 = strcmp(__s1, "http/1.1");
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 == 0;
}

void ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v2 = v1;
      v3 = __nwlog_obj();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      v1 = v2;
      if (v4)
      {
        v5 = *(v2 + 256);
        v6 = *(*(v2 + 248) + 372);
        if (v5)
        {
          LODWORD(v5) = *(v5 + 860);
        }

        v7 = *(v2 + 424);
        v8 = 136447490;
        v9 = "nw_http1_establish_new_connection_for_stream_block_invoke";
        v10 = 2082;
        v11 = v2 + 74;
        v12 = 2080;
        v13 = " ";
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new output handler from rebuild_stack", &v8, 0x32u);
        v1 = v2;
      }
    }

    nw_protocol_notify(*(v1 + 48), v1, 19);
  }
}

void ___ZL36nw_protocol_http1_set_up_associationP19nw_http1_connectionP13nw_parameters_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v127 = *MEMORY[0x1E69E9840];
  handle = nw_protocol_instance_stub_get_handle(a2);
  if (!handle)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, type, &v117))
    {
      goto LABEL_144;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null protocol";
    }

    else if (v117 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = type[0];
      v78 = os_log_type_enabled(v67, type[0]);
      if (backtrace_string)
      {
        if (v78)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_144:
        if (!v66)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

      if (!v78)
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_143;
  }

  v5 = *(handle + 40);
  if (!v5)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, type, &v117))
    {
      goto LABEL_144;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v117 != OS_LOG_TYPE_INFO)
      {
        v67 = __nwlog_obj();
        v68 = type[0];
        if (!os_log_type_enabled(v67, type[0]))
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v69 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_143;
      }

      v79 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = type[0];
      v80 = os_log_type_enabled(v67, type[0]);
      if (!v79)
      {
        if (!v80)
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v69 = "%{public}s called with null handle, no backtrace";
        goto LABEL_143;
      }

      if (v80)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v79;
        v81 = "%{public}s called with null handle, dumping backtrace:%{public}s";
LABEL_125:
        _os_log_impl(&dword_181A37000, v67, v68, v81, buf, 0x16u);
      }

LABEL_126:
      free(v79);
      if (!v66)
      {
        goto LABEL_146;
      }

LABEL_145:
      free(v66);
      goto LABEL_146;
    }

    v67 = __nwlog_obj();
    v68 = type[0];
    if (!os_log_type_enabled(v67, type[0]))
    {
      goto LABEL_144;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v69 = "%{public}s called with null handle";
LABEL_143:
    _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
    goto LABEL_144;
  }

  v6 = *(v5 + 24);
  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_146;
    }

    v7 = (v5 + 16);
    goto LABEL_8;
  }

  v8 = *(v5 + 8);
  if (!v8)
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, type, &v117))
    {
      goto LABEL_144;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null handle->http1_stream";
      goto LABEL_143;
    }

    if (v117 != OS_LOG_TYPE_INFO)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_143;
    }

    v79 = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = type[0];
    v83 = os_log_type_enabled(v67, type[0]);
    if (!v79)
    {
      if (!v83)
      {
        goto LABEL_144;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      v69 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_143;
    }

    if (v83)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_connection_for_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v79;
      v81 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  v7 = (v8 + 256);
LABEL_8:
  v9 = *v7;
  if (*v7)
  {
    if ((*(v9 + 872) & 0x900) != 0)
    {
      return;
    }

    v10 = nw_path_copy_for_flow_registration(a3, *(v9 + 560));
    v11 = v10;
    if (!v10)
    {
      goto LABEL_76;
    }

    if (*(v9 + 512) != v10)
    {
      v12 = os_retain(v10);
      v13 = *(v9 + 520);
      if ((v13 & 1) != 0 && *(v9 + 512))
      {
        v14 = v12;
        os_release(*(v9 + 512));
        v12 = v14;
        v13 = *(v9 + 520);
      }

      *(v9 + 512) = v12;
      *(v9 + 520) = v13 | 1;
    }

    v15 = *(v9 + 576);
    if (v15)
    {
      has_proxy_config = nw_path_has_proxy_config(v11, v15);
      v17 = *(v9 + 872);
      if ((has_proxy_config & 1) == 0 && (*(v9 + 872) & 0x400) == 0)
      {
        if ((*(v9 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v19 = *(v9 + 488);
            v20 = *(*(v9 + 480) + 372);
            v21 = *(v9 + 860);
            if (v19)
            {
              LODWORD(v19) = *(v19 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v9 + 74;
            *&buf[22] = 2080;
            v119 = " ";
            *v120 = 1024;
            *&v120[2] = v20;
            *&v120[6] = 1024;
            *&v120[8] = v21;
            LOWORD(v121) = 1024;
            *(&v121 + 2) = v19;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Effective proxy configuration lost, marking do-not-reuse", buf, 0x32u);
          }
        }

        v22 = *(v9 + 872);
        *(v9 + 872) = v22 | 0x400;
        v23 = *(v9 + 480);
        if (v23)
        {
          if ((v22 & 0x800) == 0)
          {
            *(v9 + 872) = v22 | 0xC00;
            v24 = *(v23 + 368) + 1;
            *(v23 + 368) = v24;
            if (v24 == v24 << 31 >> 31)
            {
              goto LABEL_71;
            }

            v25 = __nwlog_obj();
            v26 = *(v23 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v119 = 1;
            *v120 = 2048;
            *&v120[2] = v26;
            v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
            type[0] = OS_LOG_TYPE_ERROR;
            v117 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v27, type, &v117))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v28 = __nwlog_obj();
                v29 = type[0];
                if (os_log_type_enabled(v28, type[0]))
                {
                  v30 = *(v23 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  v119 = 1;
                  *v120 = 2048;
                  *&v120[2] = v30;
                  v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_67:
                  _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x2Au);
                }
              }

              else if (v117 == OS_LOG_TYPE_INFO)
              {
                v52 = __nw_create_backtrace_string();
                v28 = __nwlog_obj();
                v29 = type[0];
                v53 = os_log_type_enabled(v28, type[0]);
                if (v52)
                {
                  if (v53)
                  {
                    v54 = *(v23 + 368);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    v119 = 1;
                    *v120 = 2048;
                    *&v120[2] = v54;
                    *&v120[10] = 2082;
                    v121 = v52;
                    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v52);
                  goto LABEL_68;
                }

                if (v53)
                {
                  v59 = *(v23 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  v119 = 1;
                  *v120 = 2048;
                  *&v120[2] = v59;
                  v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_67;
                }
              }

              else
              {
                v28 = __nwlog_obj();
                v29 = type[0];
                if (os_log_type_enabled(v28, type[0]))
                {
                  v55 = *(v23 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  v119 = 1;
                  *v120 = 2048;
                  *&v120[2] = v55;
                  v31 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_67;
                }
              }
            }

LABEL_68:
            if (v27)
            {
              free(v27);
            }

            *(v23 + 368) = -1;
LABEL_71:
            if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v98 = __nwlog_obj();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v99 = *(v9 + 488);
                v100 = *(*(v9 + 480) + 372);
                v101 = *(v9 + 860);
                if (v99)
                {
                  LODWORD(v99) = *(v99 + 424);
                }

                v102 = *(v23 + 368) + *(v23 + 364);
                *buf = 136447746;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v9 + 74;
                *&buf[22] = 2080;
                v119 = " ";
                *v120 = 1024;
                *&v120[2] = v100;
                *&v120[6] = 1024;
                *&v120[8] = v101;
                LOWORD(v121) = 1024;
                *(&v121 + 2) = v99;
                HIWORD(v121) = 1024;
                v122 = v102;
                _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
              }
            }

            v60 = *(v9 + 496);
            if (v60)
            {
              v61 = *(v9 + 480);
              if (v61)
              {
LABEL_75:
                v62 = *(v61 + 200);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                v119 = &unk_1E6A327A8;
                *v120 = v62;
                nw_queue_context_async(v60, buf);
LABEL_76:
                v63 = *(v9 + 488);
                if (v63)
                {
                  nw_protocol_notify_quiet(*(v63 + 48), v63, 29);
                }

                if (v11)
                {
                  os_release(v11);
                }

                return;
              }

LABEL_100:
              v72 = __nwlog_obj();
              *type = 136446210;
              v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
              LODWORD(v115) = 12;
              v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null http1", type, v115);
              v117 = OS_LOG_TYPE_ERROR;
              v116 = 0;
              if (!__nwlog_fault(v73, &v117, &v116))
              {
                goto LABEL_211;
              }

              if (v117 == OS_LOG_TYPE_FAULT)
              {
                v74 = __nwlog_obj();
                v75 = v117;
                if (!os_log_type_enabled(v74, v117))
                {
                  goto LABEL_211;
                }

                *type = 136446210;
                v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
                v76 = "%{public}s called with null http1";
LABEL_209:
                v114 = type;
                goto LABEL_210;
              }

              if (v116 != 1)
              {
                v74 = __nwlog_obj();
                v75 = v117;
                if (!os_log_type_enabled(v74, v117))
                {
                  goto LABEL_211;
                }

                *type = 136446210;
                v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
                v76 = "%{public}s called with null http1, backtrace limit exceeded";
                goto LABEL_209;
              }

              v103 = __nw_create_backtrace_string();
              v74 = __nwlog_obj();
              v75 = v117;
              v106 = os_log_type_enabled(v74, v117);
              if (!v103)
              {
                if (!v106)
                {
                  goto LABEL_211;
                }

                *type = 136446210;
                v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
                v76 = "%{public}s called with null http1, no backtrace";
                goto LABEL_209;
              }

              if (v106)
              {
                *type = 136446466;
                v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
                v125 = 2082;
                v126 = v103;
                v105 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                goto LABEL_180;
              }

              goto LABEL_182;
            }

            goto LABEL_164;
          }

LABEL_47:
          if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v48 = __nwlog_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v49 = *(v9 + 488);
              v50 = *(*(v9 + 480) + 372);
              v51 = *(v9 + 860);
              if (v49)
              {
                LODWORD(v49) = *(v49 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v9 + 74;
              *&buf[22] = 2080;
              v119 = " ";
              *v120 = 1024;
              *&v120[2] = v50;
              *&v120[6] = 1024;
              *&v120[8] = v51;
              LOWORD(v121) = 1024;
              *(&v121 + 2) = v49;
              _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
            }
          }

          goto LABEL_76;
        }

        v84 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s called with null http1", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v117 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v73, type, &v117))
        {
          goto LABEL_211;
        }

        if (type[0] != OS_LOG_TYPE_FAULT)
        {
          if (v117 == OS_LOG_TYPE_INFO)
          {
            v85 = __nw_create_backtrace_string();
            v74 = __nwlog_obj();
            v75 = type[0];
            v86 = os_log_type_enabled(v74, type[0]);
            if (v85)
            {
              if (v86)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v85;
                _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v85);
LABEL_211:
              if (!v73)
              {
                goto LABEL_76;
              }

LABEL_212:
              free(v73);
              goto LABEL_76;
            }

LABEL_202:
            if (!v86)
            {
              goto LABEL_211;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            v76 = "%{public}s called with null http1, no backtrace";
            goto LABEL_204;
          }

LABEL_196:
          v74 = __nwlog_obj();
          v75 = type[0];
          if (!os_log_type_enabled(v74, type[0]))
          {
            goto LABEL_211;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          v76 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_204;
        }

        goto LABEL_186;
      }
    }

    else
    {
      v17 = *(v9 + 872);
    }

    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    v32 = v11;
    is_viable = _nw_path_is_viable(v32);

    if ((is_viable & 1) != 0 || (*(v9 + 872) & 0x400) != 0)
    {
      goto LABEL_76;
    }

    if ((*(v9 + 158) & 1) == 0)
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(v9 + 488);
        v36 = *(*(v9 + 480) + 372);
        v37 = *(v9 + 860);
        if (v35)
        {
          LODWORD(v35) = *(v35 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        v119 = " ";
        *v120 = 1024;
        *&v120[2] = v36;
        *&v120[6] = 1024;
        *&v120[8] = v37;
        LOWORD(v121) = 1024;
        *(&v121 + 2) = v35;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Path became nonviable, marking do-not-reuse", buf, 0x32u);
      }
    }

    v38 = *(v9 + 872);
    *(v9 + 872) = v38 | 0x400;
    v39 = *(v9 + 480);
    if (!v39)
    {
      v108 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null http1", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v117 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v73, type, &v117))
      {
        goto LABEL_211;
      }

      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v117 == OS_LOG_TYPE_INFO)
        {
          v103 = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v75 = type[0];
          v86 = os_log_type_enabled(v74, type[0]);
          if (v103)
          {
            if (v86)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v103;
              v105 = "%{public}s called with null http1, dumping backtrace:%{public}s";
              v107 = buf;
              goto LABEL_181;
            }

            goto LABEL_182;
          }

          goto LABEL_202;
        }

        goto LABEL_196;
      }

LABEL_186:
      v74 = __nwlog_obj();
      v75 = type[0];
      if (!os_log_type_enabled(v74, type[0]))
      {
        goto LABEL_211;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v76 = "%{public}s called with null http1";
LABEL_204:
      v114 = buf;
LABEL_210:
      _os_log_impl(&dword_181A37000, v74, v75, v76, v114, 0xCu);
      goto LABEL_211;
    }

    if ((v38 & 0x800) != 0)
    {
      goto LABEL_47;
    }

    *(v9 + 872) = v38 | 0xC00;
    v40 = *(v39 + 368) + 1;
    *(v39 + 368) = v40;
    if (v40 == v40 << 31 >> 31)
    {
LABEL_96:
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v109 = __nwlog_obj();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v110 = *(v9 + 488);
          v111 = *(*(v9 + 480) + 372);
          v112 = *(v9 + 860);
          if (v110)
          {
            LODWORD(v110) = *(v110 + 424);
          }

          v113 = *(v39 + 368) + *(v39 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          v119 = " ";
          *v120 = 1024;
          *&v120[2] = v111;
          *&v120[6] = 1024;
          *&v120[8] = v112;
          LOWORD(v121) = 1024;
          *(&v121 + 2) = v110;
          HIWORD(v121) = 1024;
          v122 = v113;
          _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v60 = *(v9 + 496);
      if (v60)
      {
        v61 = *(v9 + 480);
        if (v61)
        {
          goto LABEL_75;
        }

        goto LABEL_100;
      }

LABEL_164:
      v97 = __nwlog_obj();
      *type = 136446210;
      v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v115) = 12;
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null http1_connection->context", type, v115);
      v117 = OS_LOG_TYPE_ERROR;
      v116 = 0;
      if (!__nwlog_fault(v73, &v117, &v116))
      {
        goto LABEL_211;
      }

      if (v117 == OS_LOG_TYPE_FAULT)
      {
        v74 = __nwlog_obj();
        v75 = v117;
        if (!os_log_type_enabled(v74, v117))
        {
          goto LABEL_211;
        }

        *type = 136446210;
        v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
        v76 = "%{public}s called with null http1_connection->context";
        goto LABEL_209;
      }

      if (v116 != 1)
      {
        v74 = __nwlog_obj();
        v75 = v117;
        if (!os_log_type_enabled(v74, v117))
        {
          goto LABEL_211;
        }

        *type = 136446210;
        v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
        v76 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
        goto LABEL_209;
      }

      v103 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = v117;
      v104 = os_log_type_enabled(v74, v117);
      if (!v103)
      {
        if (!v104)
        {
          goto LABEL_211;
        }

        *type = 136446210;
        v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
        v76 = "%{public}s called with null http1_connection->context, no backtrace";
        goto LABEL_209;
      }

      if (v104)
      {
        *type = 136446466;
        v124 = "nw_http1_match_idle_connection_with_pending_stream_async";
        v125 = 2082;
        v126 = v103;
        v105 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_180:
        v107 = type;
LABEL_181:
        _os_log_impl(&dword_181A37000, v74, v75, v105, v107, 0x16u);
      }

LABEL_182:
      free(v103);
      if (!v73)
      {
        goto LABEL_76;
      }

      goto LABEL_212;
    }

    v41 = __nwlog_obj();
    v42 = *(v39 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    v119 = 1;
    *v120 = 2048;
    *&v120[2] = v42;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v43, type, &v117))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          v46 = *(v39 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v119 = 1;
          *v120 = 2048;
          *&v120[2] = v46;
          v47 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_92:
          _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x2Au);
        }
      }

      else if (v117 == OS_LOG_TYPE_INFO)
      {
        v56 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v57 = os_log_type_enabled(v44, type[0]);
        if (v56)
        {
          if (v57)
          {
            v58 = *(v39 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v119 = 1;
            *v120 = 2048;
            *&v120[2] = v58;
            *&v120[10] = 2082;
            v121 = v56;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v56);
          goto LABEL_93;
        }

        if (v57)
        {
          v71 = *(v39 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v119 = 1;
          *v120 = 2048;
          *&v120[2] = v71;
          v47 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_92;
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          v64 = *(v39 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          v119 = 1;
          *v120 = 2048;
          *&v120[2] = v64;
          v47 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_92;
        }
      }
    }

LABEL_93:
    if (v43)
    {
      free(v43);
    }

    *(v39 + 368) = -1;
    goto LABEL_96;
  }

LABEL_146:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
  LODWORD(v115) = 12;
  v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null update_http1_connection", buf, v115);
  type[0] = OS_LOG_TYPE_ERROR;
  v117 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v87, type, &v117))
  {
    goto LABEL_159;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    v89 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_159;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
    v90 = "%{public}s called with null update_http1_connection";
LABEL_157:
    v95 = v88;
    v96 = v89;
LABEL_158:
    _os_log_impl(&dword_181A37000, v95, v96, v90, buf, 0xCu);
    goto LABEL_159;
  }

  if (v117 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    v89 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_159;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
    v90 = "%{public}s called with null update_http1_connection, backtrace limit exceeded";
    goto LABEL_157;
  }

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
      *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v91;
      _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null update_http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v91);
    goto LABEL_159;
  }

  if (v94)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_set_up_association_block_invoke";
    v90 = "%{public}s called with null update_http1_connection, no backtrace";
    v95 = v92;
    v96 = v93;
    goto LABEL_158;
  }

LABEL_159:
  if (v87)
  {
    free(v87);
  }
}

uint64_t nw_http1_on_chunk_complete(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http1_on_chunk_complete";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &type, &v13))
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
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null parser";
LABEL_35:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }

LABEL_36:
      if (v3)
      {
        free(v3);
      }

      return 0xFFFFFFFFLL;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null parser, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v9)
    {
      *buf = 136446466;
      v16 = "nw_http1_on_chunk_complete";
      v17 = 2082;
      v18 = backtrace_string;
      v10 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v4, v5, v10, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_36;
  }

  if (!*(a1 + 48))
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http1_on_chunk_complete";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &type, &v13))
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
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null http1_connection";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v11 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_http1_on_chunk_complete";
        v6 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v16 = "nw_http1_on_chunk_complete";
      v17 = 2082;
      v18 = backtrace_string;
      v10 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (*(a1 + 64) || gLogDatapath != 1)
  {
    return 0;
  }

  v12 = __nwlog_obj();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    v16 = "nw_http1_on_chunk_complete";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s this is the final chunk of the body", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t nw_http1_on_chunk_header(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_http1_on_chunk_header";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_chunk_header";
      v6 = "%{public}s called with null parser";
    }

    else
    {
      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v15 = "nw_http1_on_chunk_header";
        v6 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_31;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v9 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_http1_on_chunk_header";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parser, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v3)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_33;
      }

      if (!v9)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_chunk_header";
      v6 = "%{public}s called with null parser, no backtrace";
    }

LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_32;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http1_on_chunk_header";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null http1_connection", buf, 12);
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
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_chunk_header";
      v6 = "%{public}s called with null http1_connection";
      goto LABEL_31;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_chunk_header";
      v6 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_31;
    }

    v10 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v11 = os_log_type_enabled(v4, type);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_chunk_header";
      v6 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_31;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_http1_on_chunk_header";
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_32:
  if (v3)
  {
LABEL_33:
    free(v3);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_body(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_http1_on_body";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null parser";
      goto LABEL_18;
    }

    if (v28 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null parser, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v25 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null parser, no backtrace";
      goto LABEL_18;
    }

    if (v25)
    {
      *buf = 136446466;
      v31 = "nw_http1_on_body";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v9, v10, v26, buf, 0x16u);
    }

LABEL_47:
    free(backtrace_string);
    goto LABEL_20;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_http1_on_body";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null http1_connection";
      goto LABEL_18;
    }

    if (v28 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v27 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v31 = "nw_http1_on_body";
      v11 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_18;
    }

    if (v27)
    {
      *buf = 136446466;
      v31 = "nw_http1_on_body";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v3 + 488);
      v22 = *(*(v3 + 480) + 372);
      v23 = *(v3 + 860);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 424);
      }

      *buf = 136448002;
      v31 = "nw_http1_on_body";
      v32 = 2082;
      v33 = (v3 + 74);
      v34 = 2080;
      v35 = " ";
      v36 = 1024;
      v37 = v22;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = v21;
      v42 = 2048;
      v43 = a2;
      v44 = 1024;
      v45 = a3;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> body segment found at (%p, %u bytes)", buf, 0x42u);
    }
  }

  v6 = *(v3 + 792);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v31 = "nw_http1_on_body";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s no body block found", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v8, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v31 = "nw_http1_on_body";
        v11 = "%{public}s no body block found";
LABEL_18:
        v16 = v9;
        v17 = v10;
LABEL_19:
        _os_log_impl(&dword_181A37000, v16, v17, v11, buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
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
          v31 = "nw_http1_on_body";
          v32 = 2082;
          v33 = v12;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s no body block found, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v12);
        goto LABEL_20;
      }

      if (v15)
      {
        *buf = 136446210;
        v31 = "nw_http1_on_body";
        v11 = "%{public}s no body block found, no backtrace";
        v16 = v13;
        v17 = v14;
        goto LABEL_19;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v31 = "nw_http1_on_body";
        v11 = "%{public}s no body block found, backtrace limit exceeded";
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_header_value(uint64_t a1, const char *a2, size_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_header_value";
          v10 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_header_value";
          v10 = "%{public}s called with null parser, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_header_value";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v10 = "%{public}s called with null parser";
LABEL_57:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_58;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_header_value";
          v10 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v17 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_header_value";
          v10 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_header_value";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v10 = "%{public}s called with null http1_connection";
    goto LABEL_57;
  }

  v4 = *(v3 + 488);
  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v23 = "nw_http1_on_header_value";
      v10 = "%{public}s called with null http1_stream";
      goto LABEL_57;
    }

    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_header_value";
        v10 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_header_value";
        v10 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    v23 = "nw_http1_on_header_value";
    v24 = 2082;
    v25 = backtrace_string;
    v16 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_39:
    _os_log_impl(&dword_181A37000, v8, v9, v16, buf, 0x16u);
    goto LABEL_40;
  }

  if (*(v4 + 400))
  {
    nw_http1_append_bytes((v3 + 808), (v3 + 844), a2, a3);
    return 0;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http1_on_header_value";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null parsed_fields", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_58;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_header_value";
        v10 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_header_value";
        v10 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_http1_on_header_value";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

LABEL_40:
    free(backtrace_string);
    goto LABEL_58;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v23 = "nw_http1_on_header_value";
    v10 = "%{public}s called with null parsed_fields";
    goto LABEL_57;
  }

LABEL_58:
  if (v7)
  {
    free(v7);
  }

  return 0xFFFFFFFFLL;
}

void nw_http1_append_bytes(char **a1, unsigned int *a2, const char *a3, size_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_append_bytes";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null value", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v24, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null value";
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v31 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v42 = "nw_http1_append_bytes";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null value, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v24)
        {
          return;
        }

        goto LABEL_76;
      }

      if (!v31)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null value, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null value, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  if (!a2)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_append_bytes";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null value_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v24, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (!os_log_type_enabled(v25, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_append_bytes";
        v27 = "%{public}s called with null value_length, backtrace limit exceeded";
        goto LABEL_74;
      }

      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v33 = os_log_type_enabled(v25, type);
      if (!v32)
      {
        if (!v33)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_append_bytes";
        v27 = "%{public}s called with null value_length, no backtrace";
        goto LABEL_74;
      }

      if (v33)
      {
        *buf = 136446466;
        v42 = "nw_http1_append_bytes";
        v43 = 2082;
        v44 = v32;
        v34 = "%{public}s called with null value_length, dumping backtrace:%{public}s";
LABEL_54:
        _os_log_impl(&dword_181A37000, v25, v26, v34, buf, 0x16u);
      }

LABEL_55:
      free(v32);
      if (!v24)
      {
        return;
      }

LABEL_76:
      free(v24);
      return;
    }

    v25 = __nwlog_obj();
    v26 = type;
    if (!os_log_type_enabled(v25, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v42 = "nw_http1_append_bytes";
    v27 = "%{public}s called with null value_length";
LABEL_74:
    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_75;
  }

  if (!a3)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_append_bytes";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null at", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v24, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null at";
      goto LABEL_74;
    }

    if (v39 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null at, backtrace limit exceeded";
      goto LABEL_74;
    }

    v32 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v35 = os_log_type_enabled(v25, type);
    if (!v32)
    {
      if (!v35)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_append_bytes";
      v27 = "%{public}s called with null at, no backtrace";
      goto LABEL_74;
    }

    if (v35)
    {
      *buf = 136446466;
      v42 = "nw_http1_append_bytes";
      v43 = 2082;
      v44 = v32;
      v34 = "%{public}s called with null at, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (a4)
  {
    v8 = *a2;
    v9 = v8 + a4;
    *a2 = v8 + a4;
    if (!__CFADD__(v8, a4) && !HIDWORD(v9))
    {
LABEL_27:
      v22 = nw_reallocf_type<char *>(*a1, v9);
      *a1 = v22;
      memcpy(&v22[v8], a3, a4);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = *a2;
    *buf = 136446978;
    v42 = "nw_http1_append_bytes";
    v43 = 2082;
    v44 = "*value_length";
    v45 = 2048;
    v46 = a4;
    v47 = 2048;
    v48 = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v11, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v14 = *a2;
          *buf = 136446978;
          v42 = "nw_http1_append_bytes";
          v43 = 2082;
          v44 = "*value_length";
          v45 = 2048;
          v46 = a4;
          v47 = 2048;
          v48 = v14;
          v15 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_23:
          _os_log_impl(&dword_181A37000, v12, v13, v15, buf, 0x2Au);
        }
      }

      else if (v39 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        v18 = os_log_type_enabled(gLogObj, type);
        if (v17)
        {
          if (v18)
          {
            v19 = *a2;
            *buf = 136447234;
            v42 = "nw_http1_append_bytes";
            v43 = 2082;
            v44 = "*value_length";
            v45 = 2048;
            v46 = a4;
            v47 = 2048;
            v48 = v19;
            v49 = 2082;
            v50 = v17;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v17);
          goto LABEL_24;
        }

        if (v18)
        {
          v21 = *a2;
          *buf = 136446978;
          v42 = "nw_http1_append_bytes";
          v43 = 2082;
          v44 = "*value_length";
          v45 = 2048;
          v46 = a4;
          v47 = 2048;
          v48 = v21;
          v15 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_23;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v20 = *a2;
          *buf = 136446978;
          v42 = "nw_http1_append_bytes";
          v43 = 2082;
          v44 = "*value_length";
          v45 = 2048;
          v46 = a4;
          v47 = 2048;
          v48 = v20;
          v15 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    if (v11)
    {
      free(v11);
    }

    v9 = 0xFFFFFFFFLL;
    *a2 = -1;
    goto LABEL_27;
  }

  if (!*a1)
  {
    v16 = strdup("");
    if (!v16)
    {
      v36 = __nwlog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      *buf = 136446210;
      v42 = "strict_strdup";
      v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s strdup() failed", buf, 12);
      if (__nwlog_should_abort(v38))
      {
        __break(1u);
        return;
      }

      free(v38);
      v16 = 0;
    }

    *a1 = v16;
  }
}

uint64_t nw_http1_on_header_field_complete(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      result = 0;
      *(v1 + 872) |= 2u;
      return result;
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http1_on_header_field_complete";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http1_on_header_field_complete";
        v7 = "%{public}s called with null http1_connection";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http1_on_header_field_complete";
        v7 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_http1_on_header_field_complete";
        v7 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_http1_on_header_field_complete";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http1_on_header_field_complete";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null parser", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http1_on_header_field_complete";
        v7 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http1_on_header_field_complete";
        v7 = "%{public}s called with null parser, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_http1_on_header_field_complete";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_http1_on_header_field_complete";
    v7 = "%{public}s called with null parser";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_header_field(uint64_t a1, char *a2, size_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      *(v3 + 872) &= ~2u;
      nw_http1_append_bytes((v3 + 800), (v3 + 840), a2, a3);
      return 0;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http1_on_header_field";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_http1_on_header_field";
        v9 = "%{public}s called with null http1_connection";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_http1_on_header_field";
        v9 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_http1_on_header_field";
        v9 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_http1_on_header_field";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http1_on_header_field";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parser", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_http1_on_header_field";
        v9 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_http1_on_header_field";
        v9 = "%{public}s called with null parser, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_http1_on_header_field";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "nw_http1_on_header_field";
    v9 = "%{public}s called with null parser";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_status_complete(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = __nwlog_obj();
    *__str = 136446210;
    v40 = "nw_http1_on_status_complete";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null parser", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v20, &type, &v37))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null parser";
      goto LABEL_86;
    }

    if (v37 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null parser, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v28 = os_log_type_enabled(v21, type);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null parser, no backtrace";
      goto LABEL_86;
    }

    if (!v28)
    {
      goto LABEL_64;
    }

    *__str = 136446466;
    v40 = "nw_http1_on_status_complete";
    v41 = 2082;
    v42 = backtrace_string;
    v29 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_63:
    _os_log_impl(&dword_181A37000, v21, v22, v29, __str, 0x16u);
    goto LABEL_64;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v24 = __nwlog_obj();
    *__str = 136446210;
    v40 = "nw_http1_on_status_complete";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null http1_connection", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v20, &type, &v37))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_connection";
      goto LABEL_86;
    }

    if (v37 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v30 = os_log_type_enabled(v21, type);
    if (!backtrace_string)
    {
      if (!v30)
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_86;
    }

    if (!v30)
    {
      goto LABEL_64;
    }

    *__str = 136446466;
    v40 = "nw_http1_on_status_complete";
    v41 = 2082;
    v42 = backtrace_string;
    v29 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
    goto LABEL_63;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    v25 = __nwlog_obj();
    *__str = 136446210;
    v40 = "nw_http1_on_status_complete";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null http1_stream", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v20, &type, &v37))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_stream";
      goto LABEL_86;
    }

    if (v37 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v31 = os_log_type_enabled(v21, type);
    if (!backtrace_string)
    {
      if (!v31)
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_86;
    }

    if (!v31)
    {
      goto LABEL_64;
    }

    *__str = 136446466;
    v40 = "nw_http1_on_status_complete";
    v41 = 2082;
    v42 = backtrace_string;
    v29 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
    goto LABEL_63;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    v26 = __nwlog_obj();
    *__str = 136446210;
    v40 = "nw_http1_on_status_complete";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null parsed_fields", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v20, &type, &v37))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null parsed_fields";
      goto LABEL_86;
    }

    if (v37 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *__str = 136446210;
      v40 = "nw_http1_on_status_complete";
      v23 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v32 = os_log_type_enabled(v21, type);
    if (backtrace_string)
    {
      if (v32)
      {
        *__str = 136446466;
        v40 = "nw_http1_on_status_complete";
        v41 = 2082;
        v42 = backtrace_string;
        v29 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
        goto LABEL_63;
      }

LABEL_64:
      free(backtrace_string);
      goto LABEL_87;
    }

    if (!v32)
    {
      goto LABEL_87;
    }

    *__str = 136446210;
    v40 = "nw_http1_on_status_complete";
    v23 = "%{public}s called with null parsed_fields, no backtrace";
LABEL_86:
    _os_log_impl(&dword_181A37000, v21, v22, v23, __str, 0xCu);
LABEL_87:
    if (v20)
    {
      free(v20);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 84) > 0x3E7u)
  {
    if ((*(v1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v1 + 488);
        v14 = *(*(v1 + 480) + 372);
        v15 = *(v1 + 860);
        if (v13)
        {
          LODWORD(v13) = *(v13 + 424);
        }

        *__str = 136447490;
        v40 = "nw_http1_on_status_complete";
        v41 = 2082;
        v42 = (v1 + 74);
        v43 = 2080;
        v44 = " ";
        v45 = 1024;
        v46 = v14;
        v47 = 1024;
        v48 = v15;
        v49 = 1024;
        v50 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> invalid status code", __str, 0x32u);
      }
    }

    return 0xFFFFFFFFLL;
  }

  snprintf(__str, 4uLL, "%03d", *(a1 + 84));
  v4 = v3;
  _nw_http_parsed_fields_add(v4, ":status", -1, __str, 3uLL, 1);

  v5 = *(v1 + 832);
  if (v5)
  {
    if (*(v2 + 416))
    {
      free(*(v2 + 416));
      *(v2 + 416) = 0;
      v5 = *(v1 + 832);
      v6 = (v1 + 856);
      v7 = *(v1 + 856);
      if (!v5)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        *__str = 136446210;
        v40 = "strict_strndup";
        v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_strndup called with NULL string", __str, 12);
        result = __nwlog_should_abort(v10);
        if (result)
        {
          goto LABEL_89;
        }

        free(v10);
        v5 = 0;
      }
    }

    else
    {
      v6 = (v1 + 856);
      v7 = *(v1 + 856);
    }

    v16 = strndup(v5, v7);
    if (v16)
    {
LABEL_22:
      v17 = *(v2 + 416);
      if (v17 != v16)
      {
        if (v17)
        {
          free(v17);
        }

        *(v2 + 416) = v16;
      }

      v18 = *(v1 + 832);
      if (v18)
      {
        free(v18);
        *(v1 + 832) = 0;
      }

      *v6 = 0;
      goto LABEL_29;
    }

    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *__str = 136446210;
    v40 = "strict_strndup";
    LODWORD(v36) = 12;
    v35 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s strndup() failed", __str, v36);
    result = __nwlog_should_abort(v35);
    if (!result)
    {
      free(v35);
      goto LABEL_22;
    }

LABEL_89:
    __break(1u);
    return result;
  }

LABEL_29:
  result = 0;
  *(v1 + 872) |= 1u;
  return result;
}

uint64_t nw_http1_on_status(uint64_t a1, char *a2, size_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      if (a3)
      {
        if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v13 = __nwlog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(v3 + 488);
            v15 = *(*(v3 + 480) + 372);
            v16 = *(v3 + 860);
            if (v14)
            {
              LODWORD(v14) = *(v14 + 424);
            }

            *buf = 136448002;
            v24 = "nw_http1_on_status";
            v25 = 2082;
            v26 = (v3 + 74);
            v27 = 2080;
            v28 = " ";
            v29 = 1024;
            v30 = v15;
            v31 = 1024;
            v32 = v16;
            v33 = 1024;
            v34 = v14;
            v35 = 1040;
            v36 = a3;
            v37 = 2080;
            v38 = a2;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> status: %.*s", buf, 0x42u);
          }
        }
      }

      nw_http1_append_bytes((v3 + 832), (v3 + 856), a2, a3);
      return 0;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http1_on_status";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_http1_on_status";
        v11 = "%{public}s called with null http1_connection";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_http1_on_status";
        v11 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_http1_on_status";
        v11 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      *buf = 136446466;
      v24 = "nw_http1_on_status";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http1_on_status";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null parser", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_http1_on_status";
        v11 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v18 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_http1_on_status";
        v11 = "%{public}s called with null parser, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_http1_on_status";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_28:
      _os_log_impl(&dword_181A37000, v9, v10, v19, buf, 0x16u);
    }

LABEL_29:
    free(backtrace_string);
    goto LABEL_39;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v24 = "nw_http1_on_status";
    v11 = "%{public}s called with null parser";
LABEL_38:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_39:
  if (v8)
  {
    free(v8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_url_complete(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_68;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v33 = "nw_http1_on_url_complete";
          v14 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v25 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v33 = "nw_http1_on_url_complete";
          v14 = "%{public}s called with null parser, no backtrace";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (!v25)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v33 = "nw_http1_on_url_complete";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v14 = "%{public}s called with null parser";
LABEL_67:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_68;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_68;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v33 = "nw_http1_on_url_complete";
          v14 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v27 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v33 = "nw_http1_on_url_complete";
          v14 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (!v27)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v33 = "nw_http1_on_url_complete";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v14 = "%{public}s called with null http1_connection";
    goto LABEL_67;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v33 = "nw_http1_on_url_complete";
      v14 = "%{public}s called with null http1_stream";
      goto LABEL_67;
    }

    if (v30 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v33 = "nw_http1_on_url_complete";
        v14 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v28 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v33 = "nw_http1_on_url_complete";
        v14 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (!v28)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v33 = "nw_http1_on_url_complete";
    v34 = 2082;
    v35 = backtrace_string;
    v26 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v12, v13, v26, buf, 0x16u);
    goto LABEL_50;
  }

  v3 = *(v2 + 400);
  if (v3)
  {
    if (*(v1 + 852))
    {
      if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v18 = __nwlog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(v1 + 488);
          v20 = *(*(v1 + 480) + 372);
          v21 = *(v1 + 860);
          if (v19)
          {
            LODWORD(v19) = *(v19 + 424);
          }

          v22 = *(v1 + 852);
          v23 = *(v1 + 824);
          *buf = 136448002;
          v33 = "nw_http1_on_url_complete";
          v34 = 2082;
          v35 = (v1 + 74);
          v36 = 2080;
          v37 = " ";
          v38 = 1024;
          v39 = v20;
          v40 = 1024;
          v41 = v21;
          v42 = 1024;
          v43 = v19;
          v44 = 1040;
          v45 = v22;
          v46 = 2080;
          v47 = v23;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> url complete:  %.*s", buf, 0x42u);
        }
      }
    }

    v4 = *(v1 + 824);
    if (v4)
    {
      v5 = *(v1 + 852);
      v6 = v3;
      v7 = _nw_http_parsed_fields_add(v6, ":path", -1, v4, v5, 1);

      v4 = (v7 - 1);
      v8 = *(v1 + 824);
      if (v8)
      {
        free(v8);
        *(v1 + 824) = 0;
      }
    }

    *(v1 + 852) = 0;
    *(v1 + 872) |= 1u;
    return v4;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_http1_on_url_complete";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null parsed_fields", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v11, &type, &v30))
  {
    goto LABEL_68;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v30 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v33 = "nw_http1_on_url_complete";
        v14 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v29 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v33 = "nw_http1_on_url_complete";
        v14 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (v29)
    {
      *buf = 136446466;
      v33 = "nw_http1_on_url_complete";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

LABEL_50:
    free(backtrace_string);
    goto LABEL_68;
  }

  v12 = __nwlog_obj();
  v13 = type;
  if (os_log_type_enabled(v12, type))
  {
    *buf = 136446210;
    v33 = "nw_http1_on_url_complete";
    v14 = "%{public}s called with null parsed_fields";
    goto LABEL_67;
  }

LABEL_68:
  if (v11)
  {
    free(v11);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_url(uint64_t a1, char *a2, size_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_url";
          v10 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_url";
          v10 = "%{public}s called with null parser, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_url";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v10 = "%{public}s called with null parser";
LABEL_57:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_58;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_url";
          v10 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v17 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_url";
          v10 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_url";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v10 = "%{public}s called with null http1_connection";
    goto LABEL_57;
  }

  v4 = *(v3 + 488);
  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v23 = "nw_http1_on_url";
      v10 = "%{public}s called with null http1_stream";
      goto LABEL_57;
    }

    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_url";
        v10 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_url";
        v10 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    v23 = "nw_http1_on_url";
    v24 = 2082;
    v25 = backtrace_string;
    v16 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_39:
    _os_log_impl(&dword_181A37000, v8, v9, v16, buf, 0x16u);
    goto LABEL_40;
  }

  if (*(v4 + 400))
  {
    nw_http1_append_bytes((v3 + 824), (v3 + 852), a2, a3);
    return 0;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http1_on_url";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null parsed_fields", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_58;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_url";
        v10 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_url";
        v10 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_http1_on_url";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

LABEL_40:
    free(backtrace_string);
    goto LABEL_58;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v23 = "nw_http1_on_url";
    v10 = "%{public}s called with null parsed_fields";
    goto LABEL_57;
  }

LABEL_58:
  if (v7)
  {
    free(v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_method_complete(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_on_method_complete";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v14, &type, &v34))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parser";
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v28 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v37 = "nw_http1_on_method_complete";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null parser, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v14)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_76:
        free(v14);
        return 0xFFFFFFFFLL;
      }

      if (!v28)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parser, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parser, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_on_method_complete";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v14, &type, &v34))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v37 = "nw_http1_on_method_complete";
        v17 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_74;
      }

      v29 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v30 = os_log_type_enabled(v15, type);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v37 = "nw_http1_on_method_complete";
        v17 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_74;
      }

      if (!v30)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v37 = "nw_http1_on_method_complete";
      v38 = 2082;
      v39 = v29;
      v31 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v37 = "nw_http1_on_method_complete";
    v17 = "%{public}s called with null http1_connection";
LABEL_74:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_75;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_on_method_complete";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v14, &type, &v34))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null http1_stream";
      goto LABEL_74;
    }

    if (v34 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_74;
    }

    v29 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v32 = os_log_type_enabled(v15, type);
    if (!v29)
    {
      if (!v32)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_74;
    }

    if (!v32)
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    v37 = "nw_http1_on_method_complete";
    v38 = 2082;
    v39 = v29;
    v31 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_55:
    _os_log_impl(&dword_181A37000, v15, v16, v31, buf, 0x16u);
    goto LABEL_56;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_on_method_complete";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null parsed_fields", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v14, &type, &v34))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parsed_fields";
      goto LABEL_74;
    }

    if (v34 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
      goto LABEL_74;
    }

    v29 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v33 = os_log_type_enabled(v15, type);
    if (!v29)
    {
      if (!v33)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v37 = "nw_http1_on_method_complete";
      v17 = "%{public}s called with null parsed_fields, no backtrace";
      goto LABEL_74;
    }

    if (v33)
    {
      *buf = 136446466;
      v37 = "nw_http1_on_method_complete";
      v38 = 2082;
      v39 = v29;
      v31 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

LABEL_56:
    free(v29);
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_76;
  }

  if (*(v1 + 852))
  {
    if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v1 + 488);
        v23 = *(*(v1 + 480) + 372);
        v24 = *(v1 + 860);
        if (v22)
        {
          LODWORD(v22) = *(v22 + 424);
        }

        v25 = *(v1 + 852);
        v26 = *(v1 + 824);
        *buf = 136448002;
        v37 = "nw_http1_on_method_complete";
        v38 = 2082;
        v39 = (v1 + 74);
        v40 = 2080;
        v41 = " ";
        v42 = 1024;
        v43 = v23;
        v44 = 1024;
        v45 = v24;
        v46 = 1024;
        v47 = v22;
        v48 = 1040;
        v49 = v25;
        v50 = 2080;
        v51 = v26;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> url complete:  %.*s", buf, 0x42u);
      }
    }
  }

  v4 = *(v1 + 816);
  if (!v4)
  {
    *(v1 + 848) = 0;
    goto LABEL_14;
  }

  v5 = *(v1 + 848);
  v6 = v3;
  v7 = _nw_http_parsed_fields_add(v6, ":method", -1, v4, v5, 1);

  v8 = *(v1 + 816);
  if (!v8)
  {
    *(v1 + 848) = 0;
    if (v7)
    {
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  free(v8);
  *(v1 + 816) = 0;
  *(v1 + 848) = 0;
  if ((v7 & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_14:
  if ((*(*(v1 + 480) + 376) & 2) != 0)
  {
    v9 = "https";
  }

  else
  {
    v9 = "http";
  }

  v10 = v3;
  v11 = _nw_http_parsed_fields_add(v10, ":scheme", -1, v9, 0xFFFFFFFFFFFFFFFFLL, 1);

  return (v11 - 1);
}

uint64_t nw_http1_on_method(uint64_t a1, char *a2, size_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_method";
          v10 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_method";
          v10 = "%{public}s called with null parser, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_method";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v10 = "%{public}s called with null parser";
LABEL_57:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_58;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v23 = "nw_http1_on_method";
          v10 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v17 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_http1_on_method";
          v10 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      v23 = "nw_http1_on_method";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v10 = "%{public}s called with null http1_connection";
    goto LABEL_57;
  }

  v4 = *(v3 + 488);
  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v23 = "nw_http1_on_method";
      v10 = "%{public}s called with null http1_stream";
      goto LABEL_57;
    }

    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_method";
        v10 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_method";
        v10 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    v23 = "nw_http1_on_method";
    v24 = 2082;
    v25 = backtrace_string;
    v16 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_39:
    _os_log_impl(&dword_181A37000, v8, v9, v16, buf, 0x16u);
    goto LABEL_40;
  }

  if (*(v4 + 400))
  {
    nw_http1_append_bytes((v3 + 816), (v3 + 848), a2, a3);
    return 0;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http1_on_method";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null parsed_fields", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_58;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http1_on_method";
        v10 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_http1_on_method";
        v10 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_http1_on_method";
      v24 = 2082;
      v25 = backtrace_string;
      v16 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

LABEL_40:
    free(backtrace_string);
    goto LABEL_58;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v23 = "nw_http1_on_method";
    v10 = "%{public}s called with null parsed_fields";
    goto LABEL_57;
  }

LABEL_58:
  if (v7)
  {
    free(v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_reset(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v1 + 488);
          v16 = *(*(v1 + 480) + 372);
          v17 = *(v1 + 860);
          if (v15)
          {
            LODWORD(v15) = *(v15 + 424);
          }

          *buf = 136447490;
          v25 = "nw_http1_on_reset";
          v26 = 2082;
          v27 = (v1 + 74);
          v28 = 2080;
          v29 = " ";
          v30 = 1024;
          v31 = v16;
          v32 = 1024;
          v33 = v17;
          v34 = 1024;
          v35 = v15;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> parser sees more data after message_complete, pausing", buf, 0x32u);
        }
      }

      if (*(*(v1 + 480) + 376))
      {
        v6 = *(v1 + 872);
      }

      else
      {
        if ((*(v1 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v2 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v3 = *(v1 + 488);
            v4 = *(*(v1 + 480) + 372);
            v5 = *(v1 + 860);
            if (v3)
            {
              LODWORD(v3) = *(v3 + 424);
            }

            *buf = 136447490;
            v25 = "nw_http1_on_reset";
            v26 = 2082;
            v27 = (v1 + 74);
            v28 = 2080;
            v29 = " ";
            v30 = 1024;
            v31 = v4;
            v32 = 1024;
            v33 = v5;
            v34 = 1024;
            v35 = v3;
            _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> extra bytes after a complete response, not allowing reuse", buf, 0x32u);
          }
        }

        v6 = *(v1 + 872) & 0xFFF7;
      }

      *(v1 + 872) = v6 | 0x10;
      return 21;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_http1_on_reset";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_http1_on_reset";
        v12 = "%{public}s called with null http1_connection";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_http1_on_reset";
        v12 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v25 = "nw_http1_on_reset";
        v12 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v21)
    {
      *buf = 136446466;
      v25 = "nw_http1_on_reset";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_http1_on_reset";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null parser", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_46;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_http1_on_reset";
        v12 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v19 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_http1_on_reset";
        v12 = "%{public}s called with null parser, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_http1_on_reset";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_35:
      _os_log_impl(&dword_181A37000, v10, v11, v20, buf, 0x16u);
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_46;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v25 = "nw_http1_on_reset";
    v12 = "%{public}s called with null parser";
LABEL_45:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
  }

LABEL_46:
  if (v9)
  {
    free(v9);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nw_http1_on_message_begin(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_http1_on_message_begin";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_message_begin";
      v6 = "%{public}s called with null parser";
    }

    else
    {
      if (v12 != 1)
      {
        v4 = __nwlog_obj();
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v15 = "nw_http1_on_message_begin";
        v6 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_31;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v9 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_http1_on_message_begin";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parser, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v3)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_33;
      }

      if (!v9)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_message_begin";
      v6 = "%{public}s called with null parser, no backtrace";
    }

LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_32;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http1_on_message_begin";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null http1_connection", buf, 12);
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
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_message_begin";
      v6 = "%{public}s called with null http1_connection";
      goto LABEL_31;
    }

    if (v12 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_message_begin";
      v6 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_31;
    }

    v10 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v11 = os_log_type_enabled(v4, type);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "nw_http1_on_message_begin";
      v6 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_31;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_http1_on_message_begin";
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_32:
  if (v3)
  {
LABEL_33:
    free(v3);
  }

  return 0xFFFFFFFFLL;
}

void ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke_2";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> sending request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_49(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> receiving request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke_51(uint64_t a1, uint64_t a2, int a3)
{
  v67 = *MEMORY[0x1E69E9840];
  start_reason = nw_http_transaction_metadata_get_start_reason(*(a1 + 32));
  start_time = nw_http_transaction_metadata_get_start_time(*(a1 + 32));
  end_time = nw_http_transaction_metadata_get_end_time(*(a1 + 32));
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(*(a1 + 32));
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(*(a1 + 32));
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(*(a1 + 32));
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(*(a1 + 32));
  outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(*(a1 + 32));
  inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(*(a1 + 32));
  if ((*(*(a1 + 40) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v12 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a3;
      v13 = *(a1 + 40);
      v14 = *(v13 + 256);
      if (v14)
      {
        v30 = *(v14 + 860);
      }

      else
      {
        v30 = 0;
      }

      if ((start_reason - 1) > 3)
      {
        v15 = "initial";
      }

      else
      {
        v15 = off_1E6A3AE00[start_reason - 1];
      }

      v29 = v15;
      v27 = *(*(v13 + 248) + 372);
      v28 = *(v13 + 424);
      v16 = -1;
      if (start_time && end_time)
      {
        v17 = nw_delta_nanos(start_time, end_time);
        if (v17 > 0xF423FFFFFFFFFLL)
        {
          v16 = -1;
        }

        else
        {
          v16 = v17 / 0xF4240;
        }
      }

      v18 = -1;
      if (start_time && outbound_message_start_time)
      {
        v19 = nw_delta_nanos(start_time, outbound_message_start_time);
        if (v19 > 0xF423FFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v19 / 0xF4240;
        }
      }

      v20 = -1;
      if (outbound_message_start_time && outbound_message_end_time)
      {
        v21 = nw_delta_nanos(outbound_message_start_time, outbound_message_end_time);
        if (v21 > 0xF423FFFFFFFFFLL)
        {
          v20 = -1;
        }

        else
        {
          v20 = v21 / 0xF4240;
        }
      }

      v22 = v13 + 74;
      v23 = -1;
      if (start_time && inbound_message_start_time)
      {
        v24 = nw_delta_nanos(start_time, inbound_message_start_time);
        if (v24 > 0xF423FFFFFFFFFLL)
        {
          v23 = -1;
        }

        else
        {
          v23 = v24 / 0xF4240;
        }
      }

      LODWORD(v25) = -1;
      if (inbound_message_start_time && inbound_message_end_time)
      {
        v26 = nw_delta_nanos(inbound_message_start_time, inbound_message_end_time);
        v25 = v26 / 0xF4240;
        if (v26 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v25) = -1;
        }
      }

      *buf = 136450050;
      v36 = "nw_http1_match_idle_connection_with_pending_stream_block_invoke";
      v37 = 2082;
      v38 = v22;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v28;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      v50 = v16;
      v51 = 2082;
      v52 = a2;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v25;
      v63 = 2048;
      v64 = outbound_body_size;
      v65 = 2048;
      v66 = inbound_body_size;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> transaction summary {start_reason=%s, duration_ms=%d, request_method=%{public}s, response_status=%hu, outbound_start_ms=%d, outbound_duration_ms=%d, inbound_start_ms=%d, inbound_duration_ms=%d, outbound_body_bytes=%llu, inbound_body_bytes=%llu}", buf, 0x7Eu);
    }
  }
}

void nw_protocol_http1_stream_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v9, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol";
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v37 = "nw_http1_get_http1_protocol";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_66:
        if (!v9)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (!v15)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_65;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v9, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v37 = "nw_http1_get_http1_protocol";
        v12 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_65;
      }

      v16 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!v16)
      {
        if (!v17)
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v37 = "nw_http1_get_http1_protocol";
        v12 = "%{public}s called with null handle, no backtrace";
        goto LABEL_65;
      }

      if (!v17)
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v37 = "nw_http1_get_http1_protocol";
      v38 = 2082;
      v39 = v16;
      v18 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_66;
    }

    *buf = 136446210;
    v37 = "nw_http1_get_http1_protocol";
    v12 = "%{public}s called with null handle";
LABEL_65:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_66;
  }

  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_68;
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      v3 = v5 + 480;
      goto LABEL_10;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v9, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection";
      goto LABEL_65;
    }

    if (v34 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_65;
    }

    v16 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v22 = os_log_type_enabled(v10, type);
    if (!v16)
    {
      if (!v22)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_65;
    }

    if (v22)
    {
      *buf = 136446466;
      v37 = "nw_http1_get_http1_protocol";
      v38 = 2082;
      v39 = v16;
      v18 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

LABEL_31:
    free(v16);
    if (!v9)
    {
      goto LABEL_68;
    }

LABEL_67:
    free(v9);
    goto LABEL_68;
  }

  v6 = *(v3 + 8);
  if (!v6)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v9, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream";
      goto LABEL_65;
    }

    if (v34 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_65;
    }

    v16 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v16)
    {
      if (!v21)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v37 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_65;
    }

    if (!v21)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v37 = "nw_http1_get_http1_protocol";
    v38 = 2082;
    v39 = v16;
    v18 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v10, v11, v18, buf, 0x16u);
    goto LABEL_31;
  }

  v3 = v6 + 248;
LABEL_10:
  if (*v3)
  {
    if (a3)
    {
      v7 = a3[1] & 0xFFFFFFF8;
      *a3 = -1;
      a3[1] = v7;
    }

    return;
  }

LABEL_68:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v37 = "nw_protocol_http1_stream_get_message_properties";
  LODWORD(v33) = 12;
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v33);
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v23, &type, &v34))
  {
    goto LABEL_81;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v37 = "nw_protocol_http1_stream_get_message_properties";
    v26 = "%{public}s called with null http1";
LABEL_79:
    v31 = v24;
    v32 = v25;
LABEL_80:
    _os_log_impl(&dword_181A37000, v31, v32, v26, buf, 0xCu);
    goto LABEL_81;
  }

  if (v34 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v37 = "nw_protocol_http1_stream_get_message_properties";
    v26 = "%{public}s called with null http1, backtrace limit exceeded";
    goto LABEL_79;
  }

  v27 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  v29 = type;
  v30 = os_log_type_enabled(gLogObj, type);
  if (v27)
  {
    if (v30)
    {
      *buf = 136446466;
      v37 = "nw_protocol_http1_stream_get_message_properties";
      v38 = 2082;
      v39 = v27;
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v27);
    goto LABEL_81;
  }

  if (v30)
  {
    *buf = 136446210;
    v37 = "nw_protocol_http1_stream_get_message_properties";
    v26 = "%{public}s called with null http1, no backtrace";
    v31 = v28;
    v32 = v29;
    goto LABEL_80;
  }

LABEL_81:
  if (v23)
  {
    free(v23);
  }
}

void nw_protocol_http1_get_remote_endpoint(nw_protocol *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol";
    }

    else if (v54 == 1)
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
          v57 = "nw_http1_get_http1_protocol";
          v58 = 2082;
          v59 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_81:
        if (!v7)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (!v13)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_80;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v54 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_81;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v10 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_80;
      }

      v14 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_81;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v10 = "%{public}s called with null handle, no backtrace";
        goto LABEL_80;
      }

      if (!v15)
      {
        goto LABEL_35;
      }

      *buf = 136446466;
      v57 = "nw_http1_get_http1_protocol";
      v58 = 2082;
      v59 = v14;
      v16 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v10 = "%{public}s called with null handle";
LABEL_80:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_81;
  }

  v2 = handle[6];
  v3 = a1->handle;
  if (v2 == 1)
  {
    goto LABEL_10;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      goto LABEL_83;
    }

    v4 = *(handle + 2);
    if (v4)
    {
      v3 = (v4 + 480);
      goto LABEL_10;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection";
      goto LABEL_80;
    }

    if (v54 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_80;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v25 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v25)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_80;
    }

    if (v25)
    {
      *buf = 136446466;
      v57 = "nw_http1_get_http1_protocol";
      v58 = 2082;
      v59 = v14;
      v16 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(v14);
    if (!v7)
    {
      goto LABEL_83;
    }

LABEL_82:
    free(v7);
    goto LABEL_83;
  }

  v5 = *(handle + 1);
  if (!v5)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream";
      goto LABEL_80;
    }

    if (v54 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_80;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v24 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_80;
    }

    if (!v24)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v57 = "nw_http1_get_http1_protocol";
    v58 = 2082;
    v59 = v14;
    v16 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v8, v9, v16, buf, 0x16u);
    goto LABEL_35;
  }

  v3 = (v5 + 248);
LABEL_10:
  if (*v3)
  {
    if (v2 == 2)
    {
      goto LABEL_14;
    }

    if (v2 != 3)
    {
      return;
    }

    if (*(handle + 2))
    {
LABEL_14:
      if (v2 != 2)
      {
        return;
      }

      goto LABEL_108;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_stream_for_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v20, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection";
LABEL_103:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
        goto LABEL_104;
      }

      if (v54 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_103;
      }

      v26 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v27 = os_log_type_enabled(v21, type);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_103;
      }

      if (v27)
      {
        *buf = 136446466;
        v57 = "nw_http1_get_stream_for_protocol";
        v58 = 2082;
        v59 = v26;
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v26);
    }

LABEL_104:
    if (v20)
    {
      free(v20);
    }

    handle = a1->handle;
    if (handle)
    {
      v38 = handle[6];
      if (v38 != 2)
      {
        return;
      }

LABEL_108:
      if (*(handle + 1))
      {
        return;
      }

      v39 = __nwlog_obj();
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      LODWORD(v52) = 12;
      v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null handle->http1_stream", buf, v52);
      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (!__nwlog_fault(v40, &type, &v54))
      {
        goto LABEL_123;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream";
      }

      else if (v54 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v45 = os_log_type_enabled(v41, type);
        if (v44)
        {
          if (v45)
          {
            *buf = 136446466;
            v57 = "nw_http1_get_connection_for_protocol";
            v58 = 2082;
            v59 = v44;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v44);
          goto LABEL_123;
        }

        if (!v45)
        {
LABEL_123:
          if (v40)
          {
            free(v40);
          }

          return;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream, no backtrace";
      }

      else
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      goto LABEL_123;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_connection_for_protocol";
    LODWORD(v52) = 12;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null handle", buf, v52);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    __nwlog_fault(v47, &type, &v54);
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      v50 = "%{public}s called with null handle";
    }

    else
    {
      if (v54 == 1)
      {
        v51 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = type;
        if (!v51)
        {
          *buf = 136446210;
          v57 = "nw_http1_get_connection_for_protocol";
          v50 = "%{public}s called with null handle, no backtrace";
          goto LABEL_133;
        }

        *buf = 136446466;
        v57 = "nw_http1_get_connection_for_protocol";
        v58 = 2082;
        v59 = v51;
        _os_log_impl(&dword_181A37000, v48, type, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        __break(1u);
      }

      v48 = __nwlog_obj();
      v49 = type;
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      v50 = "%{public}s called with null handle, backtrace limit exceeded";
    }

LABEL_133:
    _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
    __break(1u);
    return;
  }

LABEL_83:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v57 = "nw_protocol_http1_get_remote_endpoint";
  LODWORD(v52) = 12;
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v52);
  type = OS_LOG_TYPE_ERROR;
  v54 = 0;
  if (!__nwlog_fault(v28, &type, &v54))
  {
    goto LABEL_96;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v57 = "nw_protocol_http1_get_remote_endpoint";
    v31 = "%{public}s called with null http1";
LABEL_94:
    v36 = v29;
    v37 = v30;
LABEL_95:
    _os_log_impl(&dword_181A37000, v36, v37, v31, buf, 0xCu);
    goto LABEL_96;
  }

  if (v54 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v57 = "nw_protocol_http1_get_remote_endpoint";
    v31 = "%{public}s called with null http1, backtrace limit exceeded";
    goto LABEL_94;
  }

  v32 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  v34 = type;
  v35 = os_log_type_enabled(gLogObj, type);
  if (v32)
  {
    if (v35)
    {
      *buf = 136446466;
      v57 = "nw_protocol_http1_get_remote_endpoint";
      v58 = 2082;
      v59 = v32;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v32);
    goto LABEL_96;
  }

  if (v35)
  {
    *buf = 136446210;
    v57 = "nw_protocol_http1_get_remote_endpoint";
    v31 = "%{public}s called with null http1, no backtrace";
    v36 = v33;
    v37 = v34;
    goto LABEL_95;
  }

LABEL_96:
  if (v28)
  {
    free(v28);
  }
}

void nw_protocol_http1_get_parameters(nw_protocol *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol";
    }

    else if (v54 == 1)
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
          v57 = "nw_http1_get_http1_protocol";
          v58 = 2082;
          v59 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_81:
        if (!v7)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (!v13)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_80;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v54 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_81;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v10 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_80;
      }

      v14 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_81;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v10 = "%{public}s called with null handle, no backtrace";
        goto LABEL_80;
      }

      if (!v15)
      {
        goto LABEL_35;
      }

      *buf = 136446466;
      v57 = "nw_http1_get_http1_protocol";
      v58 = 2082;
      v59 = v14;
      v16 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_81;
    }

    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v10 = "%{public}s called with null handle";
LABEL_80:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_81;
  }

  v2 = handle[6];
  v3 = a1->handle;
  if (v2 == 1)
  {
    goto LABEL_10;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      goto LABEL_83;
    }

    v4 = *(handle + 2);
    if (v4)
    {
      v3 = (v4 + 480);
      goto LABEL_10;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection";
      goto LABEL_80;
    }

    if (v54 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_80;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v25 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v25)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_80;
    }

    if (v25)
    {
      *buf = 136446466;
      v57 = "nw_http1_get_http1_protocol";
      v58 = 2082;
      v59 = v14;
      v16 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(v14);
    if (!v7)
    {
      goto LABEL_83;
    }

LABEL_82:
    free(v7);
    goto LABEL_83;
  }

  v5 = *(handle + 1);
  if (!v5)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v7, &type, &v54))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream";
      goto LABEL_80;
    }

    if (v54 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_80;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v24 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v10 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_80;
    }

    if (!v24)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v57 = "nw_http1_get_http1_protocol";
    v58 = 2082;
    v59 = v14;
    v16 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v8, v9, v16, buf, 0x16u);
    goto LABEL_35;
  }

  v3 = (v5 + 248);
LABEL_10:
  if (*v3)
  {
    if (v2 == 2)
    {
      goto LABEL_14;
    }

    if (v2 != 3)
    {
      return;
    }

    if (*(handle + 2))
    {
LABEL_14:
      if (v2 != 2)
      {
        return;
      }

      goto LABEL_108;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_stream_for_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v20, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection";
LABEL_103:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
        goto LABEL_104;
      }

      if (v54 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_103;
      }

      v26 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v27 = os_log_type_enabled(v21, type);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v23 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_103;
      }

      if (v27)
      {
        *buf = 136446466;
        v57 = "nw_http1_get_stream_for_protocol";
        v58 = 2082;
        v59 = v26;
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v26);
    }

LABEL_104:
    if (v20)
    {
      free(v20);
    }

    handle = a1->handle;
    if (handle)
    {
      v38 = handle[6];
      if (v38 != 2)
      {
        return;
      }

LABEL_108:
      if (*(handle + 1))
      {
        return;
      }

      v39 = __nwlog_obj();
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      LODWORD(v52) = 12;
      v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null handle->http1_stream", buf, v52);
      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (!__nwlog_fault(v40, &type, &v54))
      {
        goto LABEL_123;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream";
      }

      else if (v54 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v45 = os_log_type_enabled(v41, type);
        if (v44)
        {
          if (v45)
          {
            *buf = 136446466;
            v57 = "nw_http1_get_connection_for_protocol";
            v58 = 2082;
            v59 = v44;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v44);
          goto LABEL_123;
        }

        if (!v45)
        {
LABEL_123:
          if (v40)
          {
            free(v40);
          }

          return;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream, no backtrace";
      }

      else
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_connection_for_protocol";
        v43 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
      goto LABEL_123;
    }

    v46 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_connection_for_protocol";
    LODWORD(v52) = 12;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null handle", buf, v52);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    __nwlog_fault(v47, &type, &v54);
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      v50 = "%{public}s called with null handle";
    }

    else
    {
      if (v54 == 1)
      {
        v51 = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = type;
        if (!v51)
        {
          *buf = 136446210;
          v57 = "nw_http1_get_connection_for_protocol";
          v50 = "%{public}s called with null handle, no backtrace";
          goto LABEL_133;
        }

        *buf = 136446466;
        v57 = "nw_http1_get_connection_for_protocol";
        v58 = 2082;
        v59 = v51;
        _os_log_impl(&dword_181A37000, v48, type, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        __break(1u);
      }

      v48 = __nwlog_obj();
      v49 = type;
      *buf = 136446210;
      v57 = "nw_http1_get_connection_for_protocol";
      v50 = "%{public}s called with null handle, backtrace limit exceeded";
    }

LABEL_133:
    _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
    __break(1u);
    return;
  }

LABEL_83:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v57 = "nw_protocol_http1_get_parameters";
  LODWORD(v52) = 12;
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v52);
  type = OS_LOG_TYPE_ERROR;
  v54 = 0;
  if (!__nwlog_fault(v28, &type, &v54))
  {
    goto LABEL_96;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v57 = "nw_protocol_http1_get_parameters";
    v31 = "%{public}s called with null http1";
LABEL_94:
    v36 = v29;
    v37 = v30;
LABEL_95:
    _os_log_impl(&dword_181A37000, v36, v37, v31, buf, 0xCu);
    goto LABEL_96;
  }

  if (v54 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    v30 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v57 = "nw_protocol_http1_get_parameters";
    v31 = "%{public}s called with null http1, backtrace limit exceeded";
    goto LABEL_94;
  }

  v32 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  v34 = type;
  v35 = os_log_type_enabled(gLogObj, type);
  if (v32)
  {
    if (v35)
    {
      *buf = 136446466;
      v57 = "nw_protocol_http1_get_parameters";
      v58 = 2082;
      v59 = v32;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v32);
    goto LABEL_96;
  }

  if (v35)
  {
    *buf = 136446210;
    v57 = "nw_protocol_http1_get_parameters";
    v31 = "%{public}s called with null http1, no backtrace";
    v36 = v33;
    v37 = v34;
    goto LABEL_95;
  }

LABEL_96:
  if (v28)
  {
    free(v28);
  }
}