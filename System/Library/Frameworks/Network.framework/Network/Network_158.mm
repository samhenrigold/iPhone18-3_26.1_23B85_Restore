uint64_t ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 32) + 8) + 24) += a2 + 4;
  if (a5)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v5;
  return 1;
}

uint64_t ___ZL28nw_masque_send_demux_optionsP9nw_masqueP19nw_protocol_optionsb_block_invoke_2(uint64_t a1, size_t __n, __int16 a3, void *__src, const void *a5)
{
  **(*(*(a1 + 32) + 8) + 24) = __n;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  **(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  v7 = __n;
  memcpy(*(*(*(a1 + 32) + 8) + 24), __src, __n);
  *(*(*(a1 + 32) + 8) + 24) += v7;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (a5)
  {
    *v8 = 1;
    memcpy(++*(*(*(a1 + 32) + 8) + 24), a5, v7);
  }

  else
  {
    *v8 = 0;
    v7 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v7;
  return 1;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_120(uint64_t a1, uint64_t a2)
{
  v164 = *MEMORY[0x1E69E9840];
  v138 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v138);
  finalizer_context = nw_frame_get_finalizer_context(a2);
  v6 = *(a1 + 32);
  if (finalizer_context == v6)
  {
    *v156 = 0;
    *&v156[8] = v156;
    v21 = *(a1 + 40);
    v22 = *(*(a1 + 48) + 32);
    if (*(v6 + 192))
    {
      v23 = *(v6 + 376);
      if (v23)
      {
        size = dispatch_data_get_size(v23);
        if (size + 1 < v138)
        {
          v25 = size;
          v26 = *(v6 + 392);
          if ((!v26 || dispatch_data_get_size(v26) == v25) && *v4 >= 64)
          {
            v27 = dispatch_data_create(v4 + 1, v25, 0, *MEMORY[0x1E69E9658]);
            if (nw_dispatch_data_is_equal(v27, *(*(a1 + 32) + 376)))
            {
              v28 = *(a1 + 32);
              if ((!v28 || (*(v28 + 505) & 1) == 0) && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v90 = gprivacy_proxyLogObj;
                v91 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                v28 = *(a1 + 32);
                if (v91)
                {
                  v92 = v28 == 0;
                  if (v28)
                  {
                    v93 = (v28 + 507);
                  }

                  else
                  {
                    v93 = "";
                  }

                  *v159 = 136446978;
                  *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                  *&v159[12] = 2082;
                  *&v159[14] = v93;
                  if (v92)
                  {
                    v94 = "";
                  }

                  else
                  {
                    v94 = " ";
                  }

                  *&v159[22] = 2080;
                  v160 = v94;
                  LOWORD(v161) = 1024;
                  *(&v161 + 2) = v138;
                  _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux", v159, 0x26u);
                  v28 = *(a1 + 32);
                }
              }

              v29 = *(v28 + 392);
              if (v29)
              {
                nw_dispatch_data_copyout(v29, (v4 + 1), v25);
                v28 = *(a1 + 32);
                if ((!v28 || (*(v28 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v100 = gprivacy_proxyLogObj;
                  v101 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v28 = *(a1 + 32);
                  if (v101)
                  {
                    v102 = "";
                    v103 = v28 == 0;
                    if (v28)
                    {
                      v104 = (v28 + 507);
                    }

                    else
                    {
                      v104 = "";
                    }

                    *v159 = 136446722;
                    *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                    if (!v103)
                    {
                      v102 = " ";
                    }

                    *&v159[12] = 2082;
                    *&v159[14] = v104;
                    *&v159[22] = 2080;
                    v160 = v102;
                    _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with virtual CID before forwarding", v159, 0x20u);
                    v28 = *(a1 + 32);
                  }
                }
              }

              v22 = *(v28 + 192);
              v21 = *(a1 + 56);
            }

            if (v27)
            {
              dispatch_release(v27);
            }
          }
        }
      }

      else if ((*(v6 + 504) & 4) != 0)
      {
        v42 = *(v6 + 432);
        if (v42)
        {
          if (v4)
          {
            if (v138)
            {
              *type = 0;
              v140 = type;
              v141 = 0x2000000000;
              LOBYTE(v142) = 0;
              *v159 = MEMORY[0x1E69E9820];
              *&v159[8] = 0x40000000;
              *&v159[16] = ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke;
              v160 = &unk_1E6A2FAC8;
              v162 = v138;
              v163 = v4;
              v161 = type;
              nw_demux_options_enumerate_patterns(v42, v159);
              v43 = *(v140 + 24);
              _Block_object_dispose(type, 8);
              if (v43 == 1)
              {
                v44 = *(a1 + 32);
                if ((!v44 || (*(v44 + 505) & 1) == 0) && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v105 = gprivacy_proxyLogObj;
                  v106 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v44 = *(a1 + 32);
                  if (v106)
                  {
                    v107 = v44 == 0;
                    if (v44)
                    {
                      v108 = (v44 + 507);
                    }

                    else
                    {
                      v108 = "";
                    }

                    *v159 = 136446978;
                    *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                    *&v159[12] = 2082;
                    *&v159[14] = v108;
                    if (v107)
                    {
                      v109 = "";
                    }

                    else
                    {
                      v109 = " ";
                    }

                    *&v159[22] = 2080;
                    v160 = v109;
                    LOWORD(v161) = 1024;
                    *(&v161 + 2) = v138;
                    _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v159, 0x26u);
                    v44 = *(a1 + 32);
                  }
                }

                v22 = *(v44 + 192);
                v21 = *(a1 + 56);
              }
            }
          }
        }
      }
    }

    if ((*(*(v22 + 24) + 88))(v22, *(a1 + 48), v138, v138, 1, v156))
    {
      *v159 = 0;
      *&v159[8] = v159;
      *&v159[16] = 0x2000000000;
      LOBYTE(v160) = 0;
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 0x40000000;
      v129 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_121;
      v130 = &unk_1E6A2FA30;
      v137 = v138;
      v45 = *(a1 + 32);
      v131 = v159;
      v132 = v156;
      v133 = v45;
      v134 = v4;
      v135 = *(a1 + 48);
      v136 = v21;
      v46 = *v156;
      do
      {
        if (!v46)
        {
          break;
        }

        v47 = *(v46 + 32);
        v48 = (v129)(v128);
        v46 = v47;
      }

      while ((v48 & 1) != 0);
      goto LABEL_102;
    }

    v49 = *(a1 + 32);
    if (v49 && (*(v49 + 505) & 1) != 0)
    {
      goto LABEL_114;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v50 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v51 = *(a1 + 32);
    v52 = "";
    v53 = v51 == 0;
    if (v51)
    {
      v54 = (v51 + 507);
    }

    else
    {
      v54 = "";
    }

    v55 = v138;
    *v159 = 136446722;
    if (!v53)
    {
      v52 = " ";
    }

LABEL_113:
    *&v159[4] = v54;
    *&v159[12] = 2080;
    *&v159[14] = v52;
    *&v159[22] = 1024;
    LODWORD(v160) = v55;
    _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes", v159, 0x1Cu);
    goto LABEL_114;
  }

  v7 = *(v6 + 503);
  if ((v7 & 0x800000) == 0)
  {
    if ((*(v6 + 503) & 0x6000) != 0x2000)
    {
      goto LABEL_156;
    }

    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v8 = nw_protocol_copy_http_definition_http_definition;
    v9 = nw_frame_copy_metadata_for_protocol(a2, v8);
    if (v8)
    {
      os_release(v8);
    }

    if (!v9)
    {
      goto LABEL_156;
    }

    v10 = *(a1 + 32);
    if ((!v10 || (*(v10 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v83 = gprivacy_proxyLogObj;
      v84 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v10 = *(a1 + 32);
      if (v84)
      {
        v85 = "";
        v86 = v10 == 0;
        if (v10)
        {
          v87 = (v10 + 507);
        }

        else
        {
          v87 = "";
        }

        *v159 = 136446722;
        *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
        if (!v86)
        {
          v85 = " ";
        }

        *&v159[12] = 2082;
        *&v159[14] = v87;
        *&v159[22] = 2080;
        v160 = v85;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSending oblivious HTTP message to proxy", v159, 0x20u);
        v10 = *(a1 + 32);
      }
    }

    *(v10 + 503) |= 0x4000u;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = mach_continuous_time();
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      *(v11 + 272) = v13;
      v14 = nw_http_metadata_copy_request(v9);
      if (!v14)
      {
        if ((*(v11 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v68 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *v159 = 136446466;
            *&v159[4] = v11 + 507;
            *&v159[12] = 2080;
            *&v159[14] = " ";
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s%sHTTP message is not a request", v159, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v11, 22);
        goto LABEL_155;
      }

      v15 = v14;
      has_method = _nw_http_request_has_method(v15, "POST");

      if ((has_method & 1) == 0)
      {
        if ((*(v11 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v69 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
          {
            *v159 = 136446466;
            *&v159[4] = v11 + 507;
            *&v159[12] = 2080;
            *&v159[14] = " ";
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s%sUnsupported method", v159, 0x16u);
          }
        }

        nw_masque_mark_failed_with_error(v11, 45);
        goto LABEL_154;
      }

      v17 = *(v11 + 328);
      if (v17)
      {
        v18 = _nw_protocol_options_copy_proxy_endpoint(v17);
        if (v18)
        {
          v19 = v18;
          if (nw_endpoint_get_type(v18) == nw_endpoint_type_url)
          {
            *v159 = 0;
            *&v159[8] = v159;
            *&v159[16] = 0x3802000000;
            v160 = __Block_byref_object_copy__129;
            v161 = __Block_byref_object_dispose__130;
            v162 = 0;
            LOBYTE(v163) = -1;
            v146 = 0;
            v147 = &v146;
            v148 = 0x2000000000;
            v149 = 0;
            *type = MEMORY[0x1E69E9820];
            v140 = 0x40000000;
            v141 = ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke;
            v142 = &unk_1E6A2FAF0;
            v144 = v159;
            v145 = v19;
            v143 = &v146;
            nw_http_request_access_path(v15, type);
            if (v147[3])
            {
              *v156 = MEMORY[0x1E69E9820];
              *&v156[8] = 0x40000000;
              *&v156[16] = ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke_135;
              v157 = &unk_1E6A2FB18;
              v158 = v159;
              nw_http_request_access_extended_connect_protocol(v15, v156);
              nw_http_request_set_header_fields(*(*&v159[8] + 40), v15);
              if (nw_masque_add_extra_headers_to_request(v11, *(*&v159[8] + 40), 0, 0))
              {
                nw_http_metadata_set_request(v9, *(*&v159[8] + 40));
                os_release(v19);
                if ((*(v11 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v20 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v151 = "nw_masque_modify_proxied_oblivious_message";
                    v152 = 2082;
                    v153 = v11 + 507;
                    v154 = 2080;
                    v155 = " ";
                    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sModified oblivious request", buf, 0x20u);
                  }
                }
              }
            }

            else
            {
              if ((*(v11 + 505) & 1) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v75 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
                {
                  *v156 = 136446466;
                  *&v156[4] = v11 + 507;
                  *&v156[12] = 2080;
                  *&v156[14] = " ";
                  _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_ERROR, "%{public}s%sPath missing from message", v156, 0x16u);
                }
              }

              nw_masque_mark_failed_with_error(v11, 22);
              os_release(v19);
            }

            _Block_object_dispose(&v146, 8);
            _Block_object_dispose(v159, 8);
            if ((v163 & 1) == 0)
            {
              goto LABEL_154;
            }

            v74 = v162;
            if (!v162)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if ((*(v11 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v72 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                logging_description = nw_endpoint_get_logging_description(v19);
                *v159 = 136446722;
                *&v159[4] = v11 + 507;
                *&v159[12] = 2080;
                *&v159[14] = " ";
                *&v159[22] = 2082;
                v160 = logging_description;
                _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s%sProxy endpoint %{public}s is not of type URL", v159, 0x20u);
              }
            }

            nw_masque_mark_failed_with_error(v11, 22);
            v74 = v19;
          }

          os_release(v74);
LABEL_154:
          os_release(v15);
LABEL_155:
          os_release(v9);
LABEL_156:
          v59 = *(a1 + 40);
LABEL_157:
          *(a2 + 32) = 0;
          v76 = *(v59 + 8);
          *(a2 + 40) = v76;
          *v76 = a2;
          *(v59 + 8) = a2 + 32;
          return 1;
        }

        if (*(v11 + 505))
        {
          goto LABEL_138;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v70 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
LABEL_138:
          nw_masque_mark_failed_with_error(v11, 22);
          goto LABEL_154;
        }

        *v159 = 136446466;
        *&v159[4] = v11 + 507;
        *&v159[12] = 2080;
        *&v159[14] = " ";
        v71 = "%{public}s%sProxy endpoint not found";
      }

      else
      {
        if (*(v11 + 505))
        {
          goto LABEL_138;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v70 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_138;
        }

        *v159 = 136446466;
        *&v159[4] = v11 + 507;
        *&v159[12] = 2080;
        *&v159[14] = " ";
        v71 = "%{public}s%sOptions not found";
      }

      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, v71, v159, 0x16u);
      goto LABEL_138;
    }

    v78 = __nwlog_obj();
    *v159 = 136446210;
    *&v159[4] = "nw_masque_modify_proxied_oblivious_message";
    v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null masque", v159, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v156[0] = 0;
    if (__nwlog_fault(v79, type, v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_202;
        }

        *v159 = 136446210;
        *&v159[4] = "nw_masque_modify_proxied_oblivious_message";
        v82 = "%{public}s called with null masque";
        goto LABEL_201;
      }

      if (v156[0] != 1)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (!os_log_type_enabled(v80, type[0]))
        {
          goto LABEL_202;
        }

        *v159 = 136446210;
        *&v159[4] = "nw_masque_modify_proxied_oblivious_message";
        v82 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = type[0];
      v89 = os_log_type_enabled(v80, type[0]);
      if (backtrace_string)
      {
        if (v89)
        {
          *v159 = 136446466;
          *&v159[4] = "nw_masque_modify_proxied_oblivious_message";
          *&v159[12] = 2082;
          *&v159[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null masque, dumping backtrace:%{public}s", v159, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_202;
      }

      if (v89)
      {
        *v159 = 136446210;
        *&v159[4] = "nw_masque_modify_proxied_oblivious_message";
        v82 = "%{public}s called with null masque, no backtrace";
LABEL_201:
        _os_log_impl(&dword_181A37000, v80, v81, v82, v159, 0xCu);
      }
    }

LABEL_202:
    if (v79)
    {
      free(v79);
    }

    goto LABEL_155;
  }

  if (!*(v6 + 192))
  {
    goto LABEL_98;
  }

  v30 = *(v6 + 376);
  if (!v30)
  {
    if ((v7 & 0x400) != 0)
    {
      v56 = *(v6 + 432);
      if (v56)
      {
        if (v4)
        {
          if (v138)
          {
            *type = 0;
            v140 = type;
            v141 = 0x2000000000;
            LOBYTE(v142) = 0;
            *v159 = MEMORY[0x1E69E9820];
            *&v159[8] = 0x40000000;
            *&v159[16] = ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke;
            v160 = &unk_1E6A2FAC8;
            v162 = v138;
            v163 = v4;
            v161 = type;
            nw_demux_options_enumerate_patterns(v56, v159);
            v57 = *(v140 + 24);
            _Block_object_dispose(type, 8);
            if (v57 == 1)
            {
              v58 = *(a1 + 32);
              if ((!v58 || (*(v58 + 505) & 1) == 0) && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v115 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v116 = *(a1 + 32);
                  v117 = (v116 + 507);
                  v118 = "";
                  if (!v116)
                  {
                    v117 = "";
                  }

                  *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
                  *&v159[12] = 2082;
                  *v159 = 136446978;
                  if (v116)
                  {
                    v118 = " ";
                  }

                  *&v159[14] = v117;
                  *&v159[22] = 2080;
                  v160 = v118;
                  LOWORD(v161) = 1024;
                  *(&v161 + 2) = v138;
                  _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v159, 0x26u);
                }
              }

              v59 = *(a1 + 56);
              goto LABEL_157;
            }
          }
        }
      }
    }

    goto LABEL_98;
  }

  v31 = dispatch_data_get_size(v30);
  if (v31 + 1 >= v138)
  {
    goto LABEL_98;
  }

  v32 = v31;
  v33 = *(v6 + 392);
  if (v33)
  {
    if (dispatch_data_get_size(v33) != v32)
    {
      goto LABEL_98;
    }
  }

  if (*v4 < 64)
  {
    goto LABEL_98;
  }

  v34 = dispatch_data_create(v4 + 1, v32, 0, *MEMORY[0x1E69E9658]);
  is_equal = nw_dispatch_data_is_equal(v34, *(*(a1 + 32) + 376));
  v36 = is_equal;
  if (is_equal)
  {
    v37 = *(a1 + 32);
    if ((!v37 || (*(v37 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v95 = gprivacy_proxyLogObj;
      v96 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v37 = *(a1 + 32);
      if (v96)
      {
        v97 = v37 == 0;
        if (v37)
        {
          v98 = (v37 + 507);
        }

        else
        {
          v98 = "";
        }

        *v159 = 136446978;
        *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
        *&v159[12] = 2082;
        *&v159[14] = v98;
        if (v97)
        {
          v99 = "";
        }

        else
        {
          v99 = " ";
        }

        *&v159[22] = 2080;
        v160 = v99;
        LOWORD(v161) = 1024;
        *(&v161 + 2) = v138;
        _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected packet of length %u to forward directly to demux (fast path)", v159, 0x26u);
        v37 = *(a1 + 32);
      }
    }

    v38 = *(v37 + 392);
    if (v38)
    {
      nw_dispatch_data_copyout(v38, (v4 + 1), v32);
      v39 = *(a1 + 32);
      if ((!v39 || (*(v39 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v110 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v111 = *(a1 + 32);
          v112 = "";
          v113 = v111 == 0;
          if (v111)
          {
            v114 = (v111 + 507);
          }

          else
          {
            v114 = "";
          }

          *v159 = 136446722;
          *&v159[4] = "nw_protocol_masque_finalize_output_frames_block_invoke";
          if (!v113)
          {
            v112 = " ";
          }

          *&v159[12] = 2082;
          *&v159[14] = v114;
          *&v159[22] = 2080;
          v160 = v112;
          _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReplacing with virtual CID before forwarding", v159, 0x20u);
        }
      }
    }

    v40 = *(a1 + 56);
    *(a2 + 32) = 0;
    v41 = *(v40 + 8);
    *(a2 + 40) = v41;
    *v41 = a2;
    *(v40 + 8) = a2 + 32;
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  if ((v36 & 1) == 0)
  {
LABEL_98:
    v60 = *(*(a1 + 48) + 32);
    *type = 0;
    v140 = type;
    if ((*(*(v60 + 24) + 88))())
    {
      *v159 = 0;
      *&v159[8] = v159;
      *&v159[16] = 0x2000000000;
      LOBYTE(v160) = 0;
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 0x40000000;
      v120 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_123;
      v121 = &unk_1E6A2FA58;
      v127 = v138;
      v61 = *(a1 + 32);
      v122 = v159;
      v123 = type;
      v124 = v61;
      v125 = v4;
      v126 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v62 = *type;
      do
      {
        if (!v62)
        {
          break;
        }

        v63 = *(v62 + 32);
        v64 = (v120)(v119);
        v62 = v63;
      }

      while ((v64 & 1) != 0);
LABEL_102:
      _Block_object_dispose(v159, 8);
LABEL_114:
      nw_frame_finalize(a2);
      return 1;
    }

    v65 = *(a1 + 32);
    if (v65 && (*(v65 + 505) & 1) != 0)
    {
      goto LABEL_114;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v50 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v66 = *(a1 + 32);
    v52 = "";
    v67 = v66 == 0;
    if (v66)
    {
      v54 = (v66 + 507);
    }

    else
    {
      v54 = "";
    }

    v55 = v138;
    *v159 = 136446722;
    if (!v67)
    {
      v52 = " ";
    }

    goto LABEL_113;
  }

  return 1;
}

BOOL ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5)
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

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_121(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v22);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  v8 = (*(a1 + 40) + 8);
  if (v5)
  {
    v8 = (v5 + 40);
  }

  *v8 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 80);
  if (v22 >= v9 && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    memcpy(v4, *(a1 + 56), v9);
    nw_frame_claim(a2, v10, *(a1 + 80), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v11, *(a1 + 80), 0);
    v12 = *(a1 + 72);
    v13 = *(v12 + 8);
    *(a2 + 32) = 0;
    *(a2 + 40) = v13;
    *v13 = a2;
    *(v12 + 8) = v7;
  }

  else
  {
    v14 = *(a1 + 48);
    if (!v14 || (*(v14 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        v17 = (v16 + 507);
        v18 = v16 == 0;
        v19 = " ";
        v20 = *(a1 + 80);
        if (v18)
        {
          v17 = "";
          v19 = "";
        }

        *buf = 136446978;
        v24 = v17;
        v25 = 2080;
        v26 = v19;
        v27 = 1024;
        v28 = v20;
        v29 = 1024;
        v30 = v22;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes, only received %u bytes", buf, 0x22u);
      }
    }

    nw_frame_finalize(a2);
  }

  return 1;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_123(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v22);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  v8 = (*(a1 + 40) + 8);
  if (v5)
  {
    v8 = (v5 + 40);
  }

  *v8 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 80);
  if (v22 >= v9 && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    memcpy(v4, *(a1 + 56), v9);
    nw_frame_claim(a2, v10, *(a1 + 80), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v11, *(a1 + 80), 0);
    v12 = *(a1 + 72);
    v13 = *(v12 + 8);
    *(a2 + 32) = 0;
    *(a2 + 40) = v13;
    *v13 = a2;
    *(v12 + 8) = v7;
  }

  else
  {
    v14 = *(a1 + 48);
    if (!v14 || (*(v14 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        v17 = (v16 + 507);
        v18 = v16 == 0;
        v19 = " ";
        v20 = *(a1 + 80);
        if (v18)
        {
          v17 = "";
          v19 = "";
        }

        *buf = 136446978;
        v24 = v17;
        v25 = 2080;
        v26 = v19;
        v27 = 1024;
        v28 = v20;
        v29 = 1024;
        v30 = v22;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes, only received %u bytes", buf, 0x22u);
      }
    }

    nw_frame_finalize(a2);
  }

  return 1;
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__130(uint64_t result)
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

void ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v13 = 0;
    port = nw_endpoint_get_port(*(a1 + 48));
    if (port == 443)
    {
      hostname = nw_endpoint_get_hostname(*(a1 + 48));
    }

    else
    {
      v6 = port;
      v7 = nw_endpoint_get_hostname(*(a1 + 48));
      asprintf(&v13, "%s:%u", v7, v6);
      hostname = v13;
    }

    url_scheme = nw_endpoint_get_url_scheme(*(a1 + 48));
    v9 = _nw_http_request_create("POST", url_scheme, hostname, a2);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 48);
    if ((v11 & 1) != 0 && *(v10 + 40))
    {
      v12 = v9;
      os_release(*(v10 + 40));
      v9 = v12;
      v11 = *(v10 + 48);
    }

    *(v10 + 40) = v9;
    *(v10 + 48) = v11 | 1;
    if (v13)
    {
      free(v13);
    }
  }
}

void nw_masque_add_require_interface_header_to_request(uint64_t a1, void *a2)
{
  v3 = nw_parameters_get_next_hop_required_interface_type(a1) - 1;
  if (v3 <= 2)
  {
    v4 = *off_1E6A2FE90[v3];
    if (v4)
    {

      nw_http_fields_append(a2, "Require-Interface", v4);
    }
  }
}

void nw_masque_add_prohibit_interface_header_to_request(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  prohibit_expensive = nw_parameters_get_prohibit_expensive(*(a1 + 304));
  v5 = prohibit_expensive;
  v6 = 0;
  if (prohibit_expensive)
  {
    v55[3] += 9;
    v6 = "expensive";
  }

  prohibit_constrained = nw_parameters_get_prohibit_constrained(*(a1 + 304));
  v8 = prohibit_constrained;
  if (prohibit_constrained)
  {
    v9 = v55[3];
    v10 = v9 + 12;
    v11 = v9 == 0;
    v12 = 11;
    if (!v11)
    {
      v12 = v10;
    }

    v55[3] = v12;
    v13 = "constrained";
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 304);
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 0x40000000;
  iterate_block[2] = ___ZL50nw_masque_add_prohibit_interface_header_to_requestP9nw_masqueP14nw_http_fields_block_invoke;
  iterate_block[3] = &unk_1E6A2F980;
  iterate_block[4] = &v54;
  iterate_block[5] = &v58;
  iterate_block[6] = &v62;
  nw_parameters_iterate_prohibited_interface_types(v14, iterate_block);
  v15 = v55[3];
  if (!v15)
  {
    goto LABEL_91;
  }

  v55[3] = v15 + 1;
  v16 = nw_calloc_type<unsigned char>(v15 + 1);
  v17 = v16;
  *v16 = 0;
  v18 = v59[3];
  if (!v18)
  {
    v21 = v63[3];
    if (!v21)
    {
      if (!v5)
      {
        if (v8)
        {
LABEL_79:
          v41 = v55[3];
          if (v41)
          {
            v42 = v17;
            while (*v42)
            {
              ++v42;
              if (!--v41)
              {
                goto LABEL_90;
              }
            }

            if (v41 < 2)
            {
LABEL_89:
              *v42 = 0;
            }

            else
            {
              v43 = 0;
              v44 = v41 - 1;
              while (1)
              {
                v45 = v13[v43];
                v42[v43] = v45;
                if (!v45)
                {
                  break;
                }

                if (v44 == ++v43)
                {
                  v42 += v43;
                  goto LABEL_89;
                }
              }
            }
          }
        }

LABEL_90:
        nw_http_fields_append(a2, "Prohibit-Interface", v17);
        free(v17);
LABEL_91:
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
        _Block_object_dispose(&v62, 8);
        return;
      }

      goto LABEL_59;
    }

    goto LABEL_29;
  }

  v19 = v55[3];
  if (v19)
  {
    v20 = v16;
    while (*v20)
    {
      ++v20;
      if (!--v19)
      {
        goto LABEL_23;
      }
    }

    if (v19 < 2)
    {
LABEL_22:
      *v20 = 0;
    }

    else
    {
      while (1)
      {
        v22 = *v18;
        *v20 = v22;
        if (!v22)
        {
          break;
        }

        ++v20;
        ++v18;
        if (--v19 <= 1)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  v21 = v63[3];
  if (!v21)
  {
    goto LABEL_50;
  }

  v23 = v55[3];
  if (!v23)
  {
LABEL_29:
    v25 = v55[3];
    v26 = v21 == 0;
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_39:
    if (v26)
    {
      v28 = __nwlog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v66 = 136446210;
      v67 = "_strict_strlcpy";
      LODWORD(v52) = 12;
      v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s strict_strlcpy called with NULL src", &v66, v52);
      if (__nwlog_should_abort(v30))
      {
        goto LABEL_104;
      }

      free(v30);
    }

LABEL_50:
    if (!v5)
    {
      goto LABEL_70;
    }

    v32 = v55[3];
    if (v32)
    {
      v33 = v17;
      while (*v33)
      {
        ++v33;
        if (!--v32)
        {
          goto LABEL_59;
        }
      }

      if (v32 >= 2)
      {
        *v33++ = 44;
      }

      *v33 = 0;
    }

LABEL_59:
    v34 = v55[3];
    if (v34)
    {
      v35 = v17;
      while (*v35)
      {
        ++v35;
        if (!--v34)
        {
          goto LABEL_70;
        }
      }

      if (v34 < 2)
      {
LABEL_69:
        *v35 = 0;
      }

      else
      {
        v36 = 0;
        v37 = v34 - 1;
        while (1)
        {
          v38 = v6[v36];
          v35[v36] = v38;
          if (!v38)
          {
            break;
          }

          if (v37 == ++v36)
          {
            v35 += v36;
            goto LABEL_69;
          }
        }
      }
    }

LABEL_70:
    if (v8)
    {
      v39 = v55[3];
      if (v39)
      {
        v40 = v17;
        while (*v40)
        {
          ++v40;
          if (!--v39)
          {
            goto LABEL_79;
          }
        }

        if (v39 >= 2)
        {
          *v40++ = 44;
        }

        *v40 = 0;
      }

      goto LABEL_79;
    }

    goto LABEL_90;
  }

  v24 = v16;
  while (*v24)
  {
    ++v24;
    if (!--v23)
    {
      goto LABEL_34;
    }
  }

  if (v23 >= 2)
  {
    *v24++ = 44;
  }

  *v24 = 0;
  v21 = v63[3];
LABEL_34:
  v25 = v55[3];
  v26 = v21 == 0;
  if (!v21)
  {
    v46 = __nwlog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v66 = 136446210;
    v67 = "_strict_strlcat";
    v48 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s strict_strlcat called with NULL src", &v66, 12);
    if (__nwlog_should_abort(v48))
    {
      goto LABEL_104;
    }

    free(v48);
    if (v25)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

LABEL_36:
  v27 = v17;
  while (*v27)
  {
    ++v27;
    if (!--v25)
    {
      goto LABEL_39;
    }
  }

  if (!v26)
  {
    if (v25 >= 2)
    {
      goto LABEL_47;
    }

LABEL_49:
    *v27 = 0;
    goto LABEL_50;
  }

  v49 = __nwlog_obj();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v50 = 3;
  }

  else
  {
    v50 = 2;
  }

  v66 = 136446210;
  v67 = "_strict_strlcpy";
  LODWORD(v52) = 12;
  v51 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s strict_strlcpy called with NULL src", &v66, v52);
  if (!__nwlog_should_abort(v51))
  {
    free(v51);
    if (v25 >= 2)
    {
LABEL_47:
      while (1)
      {
        v31 = *v21;
        *v27 = v31;
        if (!v31)
        {
          goto LABEL_50;
        }

        ++v27;
        ++v21;
        if (--v25 <= 1)
        {
          goto LABEL_49;
        }
      }
    }

    goto LABEL_49;
  }

LABEL_104:
  __break(1u);
}

void nw_masque_add_client_application_header_to_request(char *a1, void *a2)
{
  effective_bundle_id = nw_parameters_get_effective_bundle_id(a1);
  if (effective_bundle_id)
  {
    goto LABEL_5;
  }

  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  effective_bundle_id = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
LABEL_5:

    nw_http_fields_append(a2, "Client-Application", effective_bundle_id);
  }
}

void nw_masque_add_multipath_header_to_request(uint64_t a1, void *a2)
{
  if (nw_parameters_get_multipath(*(a1 + 304)))
  {
    if (nw_masque_is_multipath_allowed(void)::onceToken != -1)
    {
      dispatch_once(&nw_masque_is_multipath_allowed(void)::onceToken, &__block_literal_global_111);
    }

    if (nw_masque_is_multipath_allowed(void)::isAllowed == 1)
    {
      v4 = nw_endpoint_copy_proxy_original_endpoint(*(a1 + 296));
      v6 = 0;
      alternate_port = nw_endpoint_get_alternate_port(v4);
      asprintf(&v6, "%s;port=%u", "interactive", alternate_port);
      nw_http_fields_append(a2, "Multipath", v6);
      if (v6)
      {
        free(v6);
      }
    }
  }
}

void nw_masque_add_listener_association_header_to_request(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v31 = 0;
  v4 = *(a1 + 304);
  if (v4)
  {
    goto LABEL_2;
  }

  v9 = *(a1 - 48);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = *(v10 + 112);
      if (v11)
      {
        v12 = *(v9 + 40);
        v13 = *(a1 - 48);
        if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(v9 + 64)) != 0)
        {
          v14 = *(v13 + 88);
          if (v14)
          {
            *(v13 + 88) = v14 + 1;
          }

          v4 = v11(v9);
          v15 = *(v9 + 40);
          if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v9 + 64)) != 0)
          {
            v16 = *(v9 + 88);
            if (v16)
            {
              v17 = v16 - 1;
              *(v9 + 88) = v17;
              if (!v17)
              {
                v18 = v4;
                v19 = *(v9 + 64);
                if (v19)
                {
                  *(v9 + 64) = 0;
                  v19[2](v19);
                  _Block_release(v19);
                }

                if (*(v9 + 72))
                {
                  v20 = *(v9 + 64);
                  if (v20)
                  {
                    _Block_release(v20);
                  }
                }

                free(v9);
                v4 = v18;
              }
            }
          }
        }

        else
        {
          v4 = v11(*(a1 - 48));
        }

        if (v4)
        {
LABEL_2:
          v5 = v4;
          _nw_parameters_get_listener_uuid();

          if (!uuid_is_null(uu))
          {
            memset(out, 0, 37);
            uuid_unparse(uu, out);
            nw_http_fields_append(a2, "Listener-Association", out);
            if ((*(a1 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v6 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v7 = *(a1 + 503);
                v21 = 136446978;
                v22 = a1 + 507;
                v23 = 2080;
                v24 = " ";
                if ((v7 & 0x10) != 0)
                {
                  v8 = " (listener)";
                }

                else
                {
                  v8 = "";
                }

                v25 = 2080;
                v26 = out;
                v27 = 2080;
                v28 = v8;
                _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s%sadded association uuid %s%s", &v21, 0x2Au);
              }
            }
          }
        }
      }
    }
  }
}

void ___ZL30nw_masque_is_multipath_allowedv_block_invoke()
{
  v0 = nw_utilities_copy_local_entitlement_value("com.apple.developer.networking.multipath_extended");
  if (v0)
  {
    v1 = v0;
    if (object_getClass(v0) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1))
    {
      nw_masque_is_multipath_allowed(void)::isAllowed = 1;
    }

    xpc_release(v1);
  }
}

uint64_t ___ZL50nw_masque_add_prohibit_interface_header_to_requestP9nw_masqueP14nw_http_fields_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 24);
    v3 = (v9 + 24);
    v4 = v10;
    v6 = nw_http_prohibit_interface_cellular;
    v7 = 48;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v2 = *(*(a1 + 32) + 8);
    v5 = *(v2 + 24);
    v3 = (v2 + 24);
    v4 = v5;
    v6 = nw_http_prohibit_interface_wifi;
    v7 = 40;
    if (!v5)
    {
LABEL_5:
      *(*(*(a1 + v7) + 8) + 24) = *v6;
      *(*(*(a1 + 32) + 8) + 24) += strlen(*(*(*(a1 + v7) + 8) + 24));
      return 1;
    }

LABEL_4:
    *v3 = v4 + 1;
    goto LABEL_5;
  }

  return 1;
}

void nw_masque_send_connect(uint64_t a1)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v89 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_send_connect";
    v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s called with null masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v106[0] = 0;
    if (!__nwlog_fault(v90, type, v106))
    {
      goto LABEL_195;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (!os_log_type_enabled(v91, type[0]))
      {
        goto LABEL_195;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v93 = "%{public}s called with null masque";
    }

    else if (v106[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v91 = __nwlog_obj();
      v92 = type[0];
      v95 = os_log_type_enabled(v91, type[0]);
      if (backtrace_string)
      {
        if (v95)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_masque_send_connect";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = backtrace_string;
          _os_log_impl(&dword_181A37000, v91, v92, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_195;
      }

      if (!v95)
      {
LABEL_195:
        if (v90)
        {
          free(v90);
        }

        return;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v93 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (!os_log_type_enabled(v91, type[0]))
      {
        goto LABEL_195;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v93 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v91, v92, v93, buf, 0xCu);
    goto LABEL_195;
  }

  v2 = (a1 + 503);
  if ((*(a1 + 506) & 0x10) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s Not sending CONNECT due to redirect", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v3 = mach_continuous_time();
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 272) = v4;
  v5 = *(a1 + 328);
  if (!v5 || (*type = 0, *&type[8] = type, v105[0] = 0x2000000000uLL, *&buf[0] = MEMORY[0x1E69E9820], *(&buf[0] + 1) = 0x40000000, *&buf[1] = __nw_masque_options_copy_target_endpoint_block_invoke, *(&buf[1] + 1) = &unk_1E6A2F548, *&buf[2] = type, nw_protocol_options_access_handle(v5, buf), v6 = *(*&type[8] + 24), _Block_object_dispose(type, 8), !v6))
  {
    v6 = nw_masque_copy_remote_endpoint(a1);
    if (!v6)
    {
      nw_masque_mark_failed_with_error(a1, 22);
      return;
    }
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    os_release(v7);
    *(a1 + 296) = 0;
  }

  v8 = v6;
  v9 = _nw_endpoint_copy_original_endpoint(v8, 2);

  *(a1 + 296) = v9;
  os_release(v8);
  if (nw_endpoint_get_type(*(a1 + 296)) == nw_endpoint_type_address)
  {
    memset(type, 0, sizeof(type));
    DWORD2(v105[0]) = 0;
    *&v105[0] = 0;
    if (nw_endpoint_fillout_v6_address(*(a1 + 296), type))
    {
      if (type[1] == 30)
      {
        __src = 0;
        v10 = nw_nat64_copy_prefixes(0, &__src);
        if (v10 >= 1)
        {
          v11 = 0;
          v12 = 16 * v10;
          while (1)
          {
            LODWORD(v101) = 0;
            if (nw_nat64_extract_v4(&__src[v11], &type[8], &v101))
            {
              break;
            }

            v11 += 16;
            if (v12 == v11)
            {
              goto LABEL_39;
            }
          }

          *v106 = 528;
          *&v106[2] = *&type[2];
          *&v106[4] = v101;
          *&v106[8] = 0;
          address = _nw_endpoint_create_address(v106);
          if ((*(v2 + 2) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v20 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              logging_description = nw_endpoint_get_logging_description(address);
              v22 = nw_endpoint_get_logging_description(*(a1 + 296));
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_masque_send_connect";
              *(buf + 14) = a1 + 507;
              WORD3(buf[1]) = 2080;
              WORD6(buf[0]) = 2082;
              *(&buf[1] + 1) = " ";
              LOWORD(buf[2]) = 2082;
              *(&buf[2] + 2) = logging_description;
              WORD5(buf[2]) = 2082;
              *(&buf[2] + 12) = v22;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sExtracted address %{public}s from %{public}s", buf, 0x34u);
            }
          }

          v23 = *(a1 + 296);
          if (v23)
          {
            os_release(v23);
          }

          *(a1 + 296) = address;
        }
      }
    }
  }

LABEL_39:
  http_request_for_connect = nw_masque_create_http_request_for_connect(a1);
  if (http_request_for_connect)
  {
    v25 = http_request_for_connect;
    v26 = *v2;
    if ((*v2 & 0x40000) != 0)
    {
      v27 = http_request_for_connect;
      _nw_http_fields_append(v27, "Capsule-Protocol", "?1");

      v26 = *v2;
    }

    if ((v26 & 0x10) != 0)
    {
      v28 = v25;
      _nw_http_fields_append(v28, "Connect-UDP-Bind", "2");
    }

    nw_masque_add_listener_association_header_to_request(a1, v25);
    v29 = v25;
    _nw_http_fields_append(v29, "Priority", "i");

    *type = 0u;
    memset(v105, 0, 21);
    LOBYTE(__src) = 0;
    if ((nw_masque_add_extra_headers_to_request(a1, v29, type, &__src) & 1) == 0)
    {
LABEL_175:
      os_release(v29);
      return;
    }

    if (*(a1 + 368) && *(a1 + 480) == 1)
    {
      v30 = dispatch_data_create_with_transform();
      memset(buf + 1, 0, 63);
      LOBYTE(buf[0]) = 58;
      if (dispatch_data_get_size(v30) < 0x3E)
      {
        nw_masque_change_base64_to_base64url(buf);
        *(buf + nw_dispatch_data_copyout(v30, buf + 1, 61) + 1) = 58;
        nw_http_fields_append(v29, "Client-Connection-Id", buf);
      }

      else if ((*(v2 + 2) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v31 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          size = dispatch_data_get_size(v30);
          *v106 = 136446722;
          *&v106[4] = a1 + 507;
          *&v106[12] = 2080;
          *&v106[14] = " ";
          *&v106[22] = 2048;
          v107 = size;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s%sBase64 data is too large: %zu", v106, 0x20u);
        }
      }

      if (v30)
      {
        dispatch_release(v30);
      }
    }

    metadata_for_request = nw_http_create_metadata_for_request(v29);
    v35 = metadata_for_request;
    if ((*v2 & 0x10) != 0)
    {
      nw_http_metadata_set_datagram_context_id(metadata_for_request, 2);
    }

    v36 = nw_masque_send_metadata(a1, v35, *(a1 - 64));
    if ((v36 & 1) == 0)
    {
      nw_masque_mark_failed_with_error(a1, 12);
      goto LABEL_86;
    }

    v37 = *v2;
    if (__src == 1)
    {
      if ((v37 & 0x10000) == 0)
      {
        if (__nwlog_network_relay_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_network_relay_log::onceToken, &__block_literal_global_76);
        }

        v38 = gnetwork_relayLogObj;
        if (os_log_type_enabled(gnetwork_relayLogObj, OS_LOG_TYPE_INFO))
        {
          v39 = "-IP";
          if ((*v2 & 0x20) == 0)
          {
            v39 = "";
          }

          if ((*v2 & 8) != 0)
          {
            v40 = "-UDP";
          }

          else
          {
            v40 = v39;
          }

          v41 = nw_endpoint_get_logging_description(*(a1 + 296));
          LODWORD(buf[0]) = 136447491;
          *(buf + 4) = "nw_masque_send_connect";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = a1 + 507;
          WORD3(buf[1]) = 2080;
          *(&buf[1] + 1) = " ";
          LOWORD(buf[2]) = 2080;
          *(&buf[2] + 2) = v40;
          WORD5(buf[2]) = 2085;
          *(&buf[2] + 12) = type;
          WORD2(buf[3]) = 2082;
          *(&buf[3] + 6) = v41;
          v42 = "%{public}s %{public}s%sSent CONNECT%s request with transaction %{sensitive}s for %{public}s";
          v43 = v38;
          v44 = OS_LOG_TYPE_INFO;
          v45 = 62;
LABEL_85:
          _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
        }
      }
    }

    else if ((v37 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v46 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        v47 = *v2;
        v48 = "-IP";
        if ((*v2 & 0x20) == 0)
        {
          v48 = "";
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_masque_send_connect";
        WORD6(buf[0]) = 2082;
        *(buf + 14) = a1 + 507;
        WORD3(buf[1]) = 2080;
        *(&buf[1] + 1) = " ";
        if ((v47 & 8) != 0)
        {
          v49 = "-UDP";
        }

        else
        {
          v49 = v48;
        }

        LOWORD(buf[2]) = 2080;
        *(&buf[2] + 2) = v49;
        v42 = "%{public}s %{public}s%sSent CONNECT%s request";
        v43 = v46;
        v44 = OS_LOG_TYPE_DEBUG;
        v45 = 42;
        goto LABEL_85;
      }
    }

LABEL_86:
    if (v35)
    {
      os_release(v35);
    }

    os_release(v29);
    if ((v36 & 1) == 0)
    {
      return;
    }

LABEL_21:
    *(a1 + 484) = 2;
    if ((*v2 & 8) != 0)
    {
      v14 = *(a1 + 368);
      if (v14)
      {
        if (*(a1 + 480) == 2 && *(a1 + 416))
        {
          if (*(a1 + 384))
          {
            v15 = *(a1 + 384);
          }

          else
          {
            v15 = *(a1 + 368);
          }

          v16 = dispatch_data_get_size(*(a1 + 368));
          v17 = v16;
          __src = 0;
          if (v16 > 0x3F)
          {
            if (v16 >> 14)
            {
              if (v16 >> 30)
              {
                if (v16 >> 62)
                {
                  v50 = __nwlog_obj();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "_http_vle_encode";
                  WORD6(buf[0]) = 2048;
                  *(buf + 14) = v17;
                  v52 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s unable to encode value: %llu", buf, 22);
                  if (__nwlog_should_abort(v52))
                  {
                    goto LABEL_197;
                  }

                  free(v52);
                  v18 = 0;
                }

                else
                {
                  __src = bswap64(v16 | 0xC000000000000000);
                  v18 = 8;
                }
              }

              else
              {
                __src = bswap32(v16 | 0x80000000);
                v18 = 4;
              }
            }

            else
            {
              __src = (bswap32(v16 | 0x4000) >> 16);
              v18 = 2;
            }
          }

          else
          {
            __src = v16;
            v18 = 1;
          }

          v53 = dispatch_data_get_size(v15);
          v54 = v53;
          v101 = 0;
          if (v53 > 0x3F)
          {
            if (v53 >> 14)
            {
              if (v53 >> 30)
              {
                if (v53 >> 62)
                {
                  v56 = __nwlog_obj();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v57 = 3;
                  }

                  else
                  {
                    v57 = 2;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "_http_vle_encode";
                  WORD6(buf[0]) = 2048;
                  *(buf + 14) = v54;
                  LODWORD(v99) = 22;
                  v58 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s unable to encode value: %llu", buf, v99);
                  if (__nwlog_should_abort(v58))
                  {
                    goto LABEL_197;
                  }

                  free(v58);
                  v55 = 0;
                }

                else
                {
                  v101 = bswap64(v53 | 0xC000000000000000);
                  v55 = 8;
                }
              }

              else
              {
                v101 = bswap32(v53 | 0x80000000);
                v55 = 4;
              }
            }

            else
            {
              v101 = bswap32(v53 | 0x4000) >> 16;
              v55 = 2;
            }
          }

          else
          {
            v101 = v53;
            v55 = 1;
          }

          alloc = dispatch_data_create_alloc();
          memcpy(0, &__src, v18);
          *type = 0;
          *&type[8] = type;
          v105[0] = 0x2000000000uLL;
          *v106 = 0;
          *&v106[8] = v106;
          *&v106[16] = 0x2000000000;
          v107 = v18;
          *&buf[0] = MEMORY[0x1E69E9820];
          *(&buf[0] + 1) = 0x40000000;
          *&buf[1] = __nw_dispatch_data_copyout_block_invoke;
          *(&buf[1] + 1) = &unk_1E6A34348;
          *(&buf[2] + 1) = v106;
          *&buf[3] = v17;
          *&buf[2] = type;
          dispatch_data_apply(v14, buf);
          _Block_object_dispose(v106, 8);
          _Block_object_dispose(type, 8);
          memcpy((v18 + v17), &v101, v55);
          *type = 0;
          *&type[8] = type;
          v105[0] = 0x2000000000uLL;
          *v106 = 0;
          *&v106[8] = v106;
          *&v106[16] = 0x2000000000;
          v107 = v18 + v17 + v55;
          *&buf[0] = MEMORY[0x1E69E9820];
          *(&buf[0] + 1) = 0x40000000;
          *&buf[1] = __nw_dispatch_data_copyout_block_invoke;
          *(&buf[1] + 1) = &unk_1E6A34348;
          *(&buf[2] + 1) = v106;
          *&buf[3] = v54;
          *&buf[2] = type;
          dispatch_data_apply(v15, buf);
          _Block_object_dispose(v106, 8);
          _Block_object_dispose(type, 8);
          *(v18 + v17 + v55 + v54) = 0;
          metadata_for_capsule = nw_http_create_metadata_for_capsule(16770048, alloc);
          if (alloc)
          {
            dispatch_release(alloc);
          }

          v60 = nw_masque_send_metadata(a1, metadata_for_capsule, *(a1 - 64));
          v61 = *v2;
          if (v60)
          {
            if ((v61 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v62 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_masque_send_connect";
                WORD6(buf[0]) = 2082;
                *(buf + 14) = a1 + 507;
                WORD3(buf[1]) = 2080;
                *(&buf[1] + 1) = " ";
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent REGISTER_CLIENT_CID capsule", buf, 0x20u);
              }
            }

            *v2 |= 0x8000000u;
          }

          else if ((v61 & 0x10000) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v63 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = a1 + 507;
              WORD6(buf[0]) = 2080;
              *(buf + 14) = " ";
              _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to send REGISTER_CLIENT_CID capsule", buf, 0x16u);
            }
          }

          if (metadata_for_capsule)
          {
            os_release(metadata_for_capsule);
          }
        }
      }
    }

    if ((*v2 & 0x20) == 0)
    {
      return;
    }

    v64 = *(a1 + 440);
    if (v64)
    {
      next_connect_ip_request_id = nw_http_connection_metadata_get_next_connect_ip_request_id(v64);
      v64 = nw_http_connection_metadata_get_next_connect_ip_request_id(*(a1 + 440));
      if ((*v2 & 0x10000) != 0)
      {
        goto LABEL_134;
      }
    }

    else
    {
      next_connect_ip_request_id = 0;
      if ((*v2 & 0x10000) != 0)
      {
        goto LABEL_134;
      }
    }

    if (gLogDatapath == 1)
    {
      v96 = v64;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v97 = gprivacy_proxyLogObj;
      v98 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v64 = v96;
      if (v98)
      {
        LODWORD(buf[0]) = 136447234;
        *(buf + 4) = "nw_masque_send_connect";
        WORD6(buf[0]) = 2082;
        *(buf + 14) = a1 + 507;
        WORD3(buf[1]) = 2080;
        *(&buf[1] + 1) = " ";
        LOWORD(buf[2]) = 2048;
        *(&buf[2] + 2) = next_connect_ip_request_id;
        WORD5(buf[2]) = 2048;
        *(&buf[2] + 12) = v96;
        _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sADDRESS_REQUEST capsule v4 request ID: %llu, v6 request ID %llu", buf, 0x34u);
        v64 = v96;
      }
    }

LABEL_134:
    *type = 0;
    if (next_connect_ip_request_id > 0x3F)
    {
      if (next_connect_ip_request_id >> 14)
      {
        if (next_connect_ip_request_id >> 30)
        {
          if (next_connect_ip_request_id >> 62)
          {
            v67 = v64;
            v68 = __nwlog_obj();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = 3;
            }

            else
            {
              v69 = 2;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "_http_vle_encode";
            WORD6(buf[0]) = 2048;
            *(buf + 14) = next_connect_ip_request_id;
            LODWORD(v99) = 22;
            v70 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s unable to encode value: %llu", buf, v99);
            if (__nwlog_should_abort(v70))
            {
              goto LABEL_197;
            }

            free(v70);
            v66 = 0;
            v64 = v67;
          }

          else
          {
            *type = bswap64(next_connect_ip_request_id | 0xC000000000000000);
            v66 = 8;
          }
        }

        else
        {
          *type = bswap32(next_connect_ip_request_id | 0x80000000);
          v66 = 4;
        }
      }

      else
      {
        *type = bswap32(next_connect_ip_request_id | 0x4000) >> 16;
        v66 = 2;
      }
    }

    else
    {
      *type = next_connect_ip_request_id;
      v66 = 1;
    }

    *v106 = 0;
    if (v64 <= 0x3F)
    {
      *v106 = v64;
      v71 = 1;
      goto LABEL_160;
    }

    if (!(v64 >> 14))
    {
      *v106 = bswap32(v64 | 0x4000) >> 16;
      v71 = 2;
      goto LABEL_160;
    }

    if (!(v64 >> 30))
    {
      *v106 = bswap32(v64 | 0x80000000);
      v71 = 4;
      goto LABEL_160;
    }

    if (!(v64 >> 62))
    {
      *v106 = bswap64(v64 | 0xC000000000000000);
      v71 = 8;
      goto LABEL_160;
    }

    v72 = v64;
    v73 = __nwlog_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "_http_vle_encode";
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v72;
    LODWORD(v99) = 22;
    v75 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s unable to encode value: %llu", buf, v99);
    if (!__nwlog_should_abort(v75))
    {
      free(v75);
      v71 = 0;
LABEL_160:
      __src = 0;
      v76 = dispatch_data_create_alloc();
      v77 = __src;
      memcpy(__src, type, v66);
      v78 = &v77[v66];
      *v78 = 4;
      *(v78 + 1) = 0;
      v78[5] = 32;
      v79 = &v77[v66 + 6];
      memcpy(v79, v106, v71);
      v80 = &v79[v71];
      *v80 = 6;
      *(v80 + 9) = 0;
      *(v80 + 1) = 0;
      v80[17] = 0x80;
      v29 = nw_http_create_metadata_for_capsule(2, v76);
      if (v76)
      {
        dispatch_release(v76);
      }

      v81 = nw_masque_send_metadata(a1, v29, *(a1 - 64));
      v82 = *v2;
      if (v81)
      {
        if ((v82 & 0x10000) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v83 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "nw_masque_send_connect";
            WORD6(buf[0]) = 2082;
            *(buf + 14) = a1 + 507;
            WORD3(buf[1]) = 2080;
            *(&buf[1] + 1) = " ";
            v84 = "%{public}s %{public}s%sSent ADDRESS_REQUEST capsule";
            v85 = v83;
            v86 = OS_LOG_TYPE_DEBUG;
            v87 = 32;
LABEL_173:
            _os_log_impl(&dword_181A37000, v85, v86, v84, buf, v87);
          }
        }
      }

      else if ((v82 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v88 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = a1 + 507;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = " ";
          v84 = "%{public}s%sFailed to send ADDRESS_REQUEST capsule";
          v85 = v88;
          v86 = OS_LOG_TYPE_ERROR;
          v87 = 22;
          goto LABEL_173;
        }
      }

      if (!v29)
      {
        return;
      }

      goto LABEL_175;
    }

LABEL_197:
    __break(1u);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_send_connect";
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s Unable to generate http request for masque connect", buf, 0xCu);
  }
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_117(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!nw_frame_uses_external_data(a2))
  {
    v32 = 0;
    v15 = nw_frame_unclaimed_bytes(a2, &v32);
    v16 = *(a1 + 72);
    if (v32 < v16 || v15 == 0)
    {
      v18 = *(a1 + 32);
      if (v18 && (*(v18 + 505) & 1) != 0)
      {
        goto LABEL_27;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v19 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v20 = *(a1 + 32);
      v21 = (v20 + 507);
      v12 = v20 == 0;
      v22 = " ";
      v23 = *(a1 + 72);
      if (v12)
      {
        v21 = "";
        v22 = "";
      }

      *buf = 136446978;
      v34 = v21;
      v35 = 2080;
      v36 = v22;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v32;
      v14 = v19;
      goto LABEL_26;
    }

    memcpy(v15, *(a1 + 48), v16);
LABEL_32:
    nw_frame_claim(a2, v28, *(a1 + 72), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v29, *(a1 + 72), 0);
    if (*(a1 + 76))
    {
      v30 = 0x80;
    }

    else
    {
      v30 = 0;
    }

    *(a2 + 186) = v30 & 0x80 | *(a2 + 186) & 0x7F;
    nw_frame_set_metadata(a2, 0, 0, *(a1 + 77));
    return 1;
  }

  v4 = nw_frame_unclaimed_length(a2);
  v5 = *(a1 + 72);
  if (v4 >= v5)
  {
    v27 = dispatch_data_create(*(a1 + 48), v5, 0, *MEMORY[0x1E69E9648]);
    nw_frame_will_free_buffer_externally(*(a1 + 56));
    nw_frame_set_external_data(a2, v27, 0);
    if (v27)
    {
      os_release(v27);
    }

    goto LABEL_32;
  }

  v6 = v4;
  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 505) & 1) != 0)
  {
    goto LABEL_27;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v8 = gprivacy_proxyLogObj;
  if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_27;
  }

  v9 = *(a1 + 32);
  v10 = (v9 + 507);
  v11 = "";
  v12 = v9 == 0;
  v13 = *(a1 + 72);
  if (v12)
  {
    v10 = "";
  }

  *buf = 136446978;
  if (!v12)
  {
    v11 = " ";
  }

  v34 = v10;
  v35 = 2080;
  v36 = v11;
  v37 = 1024;
  v38 = v13;
  v39 = 1024;
  v40 = v6;
  v14 = v8;
LABEL_26:
  _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u early bytes, only received %u bytes", buf, 0x22u);
LABEL_27:
  v24 = (*(a1 + 40) + 8);
  v25 = *(a2 + 32);
  v26 = *(a2 + 40);
  if (v25)
  {
    v24 = (v25 + 40);
  }

  *v24 = v26;
  *v26 = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t __nw_masque_options_copy_target_endpoint_block_invoke(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = os_retain(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

void *nw_masque_copy_remote_endpoint(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 - 48);
    if (v1 && (v2 = *(v1 + 24)) != 0 && (v3 = *(v2 + 136)) != 0)
    {
      v4 = *(v1 + 40);
      v5 = *(a1 - 48);
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v1 + 64)) != 0)
      {
        v7 = *(v5 + 88);
        if (v7)
        {
          *(v5 + 88) = v7 + 1;
        }

        result = v3(v1);
        v8 = *(v1 + 40);
        if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
        {
          v9 = *(v1 + 88);
          if (v9)
          {
            v10 = v9 - 1;
            *(v1 + 88) = v10;
            if (!v10)
            {
              v11 = result;
              v12 = *(v1 + 64);
              if (v12)
              {
                *(v1 + 64) = 0;
                v12[2](v12);
                _Block_release(v12);
              }

              if (*(v1 + 72))
              {
                v13 = *(v1 + 64);
                if (v13)
                {
                  _Block_release(v13);
                }
              }

              free(v1);
              result = v11;
            }
          }
        }
      }

      else
      {
        result = v3(*(a1 - 48));
      }

      if (result)
      {
        return os_retain(result);
      }
    }

    else
    {
      result = *(a1 + 288);
      if (result)
      {

        return os_retain(result);
      }
    }

    return result;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_masque_copy_remote_endpoint";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null masque", buf, 12);
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
        v24 = "nw_masque_copy_remote_endpoint";
        v18 = "%{public}s called with null masque";
LABEL_42:
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
          v24 = "nw_masque_copy_remote_endpoint";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_masque_copy_remote_endpoint";
        v18 = "%{public}s called with null masque, no backtrace";
        goto LABEL_42;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_masque_copy_remote_endpoint";
        v18 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

void *nw_masque_create_http_request_for_connect(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v87 = 0;
  v2 = (a1 + 503);
  v3 = *(a1 + 503);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v8 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v89 = (a1 + 507);
        v90 = 2080;
        v91 = " ";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-udp) request for listening", buf, 0x16u);
      }
    }

    v9 = *(a1 + 328);
    if (!v9 || (v10 = _nw_protocol_options_copy_proxy_endpoint(v9)) == 0)
    {
      if (*(v2 + 2))
      {
        goto LABEL_26;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v11 = v10;
    hostname = _nw_endpoint_get_hostname(v11);

    v13 = v11;
    port = _nw_endpoint_get_port(v13);

    if (!hostname)
    {
      if (*(v2 + 2))
      {
        goto LABEL_51;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v28 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (port != 443 && port)
    {
      v13 = v13;
      type = _nw_endpoint_get_type(v13);

      if (type == 1)
      {
        v30 = v13;
        address_family = _nw_endpoint_get_address_family(v30);

        if (address_family == 30)
        {
          asprintf(&v87, "[%s]:%u", hostname, port);
          v32 = 0;
          v13 = v30;
          goto LABEL_119;
        }
      }

      asprintf(&v87, "%s:%u");
    }

    else
    {
      asprintf(&v87, "%s");
    }

    v32 = 0;
LABEL_119:
    os_release(v13);
    v52 = *v2;
    *v2 |= 0x40000u;
    if ((v52 & 0x10) != 0)
    {
      asprintf(&v86, "/.well-known/masque/udp/*/*/");
      goto LABEL_143;
    }

    if ((v52 & 0x28) == 0)
    {
      goto LABEL_143;
    }

    v53 = nw_endpoint_get_hostname(*(a1 + 296));
    v54 = *MEMORY[0x1E695E480];
    v55 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v53, 0x8000100u);
    if (v55)
    {
      v56 = v55;
      URLPathAllowedCharacterSet = _CFURLComponentsGetURLPathAllowedCharacterSet();
      MutableCopy = CFCharacterSetCreateMutableCopy(v54, URLPathAllowedCharacterSet);
      if (MutableCopy)
      {
        v59 = MutableCopy;
        CFCharacterSetRemoveCharactersInString(MutableCopy, @":");
        v60 = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters();
        if (v60)
        {
          v61 = v60;
          Length = CFStringGetLength(v60);
          v63 = Length + 1;
          if (Length == -1)
          {
            v79 = __nwlog_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v80 = 3;
            }

            else
            {
              v80 = 2;
            }

            *buf = 136446210;
            v89 = "nw_masque_create_http_request_for_connect";
            LODWORD(v82) = 12;
            v81 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s strict_calloc called with size 0", buf, v82);
            result = __nwlog_should_abort(v81);
            if (result)
            {
              goto LABEL_187;
            }

            free(v81);
          }

          v64 = malloc_type_calloc(1uLL, v63, 0xFD17DB56uLL);
          if (!v64)
          {
            v85 = __nwlog_obj();
            v65 = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            v89 = "nw_masque_create_http_request_for_connect";
            if (v65)
            {
              v66 = 3;
            }

            else
            {
              v66 = 2;
            }

            v90 = 2048;
            v91 = 1;
            v92 = 2048;
            v84 = v63;
            v93 = v63;
            LODWORD(v82) = 32;
            v67 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v82);
            result = __nwlog_should_abort(v67);
            if (result)
            {
              goto LABEL_187;
            }

            free(v67);
            v63 = v84;
          }

          CFStringGetCString(v61, v64, v63, 0x8000100u);
          CFRelease(v61);
        }

        else
        {
          v64 = 0;
        }

        CFRelease(v59);
      }

      else
      {
        v64 = 0;
      }

      CFRelease(v56);
      v69 = *v2;
      if ((*v2 & 8) == 0)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v64 = 0;
      v69 = *v2;
      if ((*v2 & 8) == 0)
      {
LABEL_139:
        if ((v69 & 0x20) != 0)
        {
          asprintf(&v86, "/.well-known/masque/ip/%s/%u/");
        }

        goto LABEL_141;
      }
    }

    nw_endpoint_get_port(*(a1 + 296));
    asprintf(&v86, "/.well-known/masque/udp/%s/%u/");
LABEL_141:
    if (v64)
    {
      free(v64);
    }

LABEL_143:
    v50 = 0;
    v33 = "https";
    v45 = "CONNECT";
    v51 = v87;
    if (!v87)
    {
      goto LABEL_169;
    }

    goto LABEL_144;
  }

  if ((v3 & 8) != 0)
  {
    if (*(a1 + 480) != 2)
    {
      if ((v3 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v24 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          v25 = *(a1 + 296);
          v26 = v25;
          if (v25)
          {
            logging_description = _nw_endpoint_get_logging_description(v25);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446722;
          v89 = (a1 + 507);
          v90 = 2080;
          v91 = " ";
          v92 = 2082;
          v93 = logging_description;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT-UDP request for %{public}s", buf, 0x20u);
        }
      }

      v34 = nw_http_request_method_connect_udp;
      v33 = "https";
      goto LABEL_89;
    }

    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v16 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 296);
        v18 = v17;
        if (v17)
        {
          v19 = _nw_endpoint_get_logging_description(v17);
        }

        else
        {
          v19 = "<NULL>";
        }

        *buf = 136446722;
        v89 = (a1 + 507);
        v90 = 2080;
        v91 = " ";
        v92 = 2082;
        v93 = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-udp) request for %{public}s", buf, 0x20u);
      }
    }

    v35 = *(a1 + 328);
    if (!v35 || (v36 = _nw_protocol_options_copy_proxy_endpoint(v35)) == 0)
    {
      if (*(v2 + 2))
      {
        goto LABEL_26;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v37 = v36;
    v38 = _nw_endpoint_get_hostname(v37);

    v13 = v37;
    v39 = _nw_endpoint_get_port(v13);

    if (!v38)
    {
      if (*(v2 + 2))
      {
        goto LABEL_51;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v28 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v39 != 443 && v39)
    {
      if (nw_endpoint_get_type(v13) == nw_endpoint_type_address && nw_endpoint_get_address_family(v13) == 30)
      {
        asprintf(&v87, "[%s]:%u");
      }

      else
      {
        asprintf(&v87, "%s:%u");
      }
    }

    else
    {
      asprintf(&v87, "%s");
    }

    v32 = 1;
    goto LABEL_119;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v20 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 296);
        v22 = v21;
        if (v21)
        {
          v23 = _nw_endpoint_get_logging_description(v21);
        }

        else
        {
          v23 = "<NULL>";
        }

        *buf = 136446722;
        v89 = (a1 + 507);
        v90 = 2080;
        v91 = " ";
        v92 = 2082;
        v93 = v23;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-ip) request for %{public}s", buf, 0x20u);
      }
    }

    v40 = *(a1 + 328);
    if (v40)
    {
      v41 = _nw_protocol_options_copy_proxy_endpoint(v40);
      if (v41)
      {
        v42 = v41;
        v43 = _nw_endpoint_get_hostname(v42);

        v13 = v42;
        v44 = _nw_endpoint_get_port(v13);

        if (v43)
        {
          if (v44 != 443 && v44)
          {
            if (nw_endpoint_get_type(v13) == nw_endpoint_type_address && nw_endpoint_get_address_family(v13) == 30)
            {
              asprintf(&v87, "[%s]:%u");
            }

            else
            {
              asprintf(&v87, "%s:%u");
            }
          }

          else
          {
            asprintf(&v87, "%s");
          }

          v32 = 0;
          goto LABEL_119;
        }

        if (*(v2 + 2))
        {
          goto LABEL_51;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v28 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

LABEL_50:
        *buf = 136446466;
        v89 = (a1 + 507);
        v90 = 2080;
        v91 = " ";
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s%sProxy hostname not found", buf, 0x16u);
LABEL_51:
        nw_masque_mark_failed_with_error(a1, 22);
        os_release(v13);
        return 0;
      }
    }

    if (*(v2 + 2))
    {
      goto LABEL_26;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      nw_masque_mark_failed_with_error(a1, 22);
      return 0;
    }

LABEL_25:
    *buf = 136446466;
    v89 = (a1 + 507);
    v90 = 2080;
    v91 = " ";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sProxy endpoint not found", buf, 0x16u);
    goto LABEL_26;
  }

  if ((v3 & 0x10000) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v4 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 296);
      v6 = v5;
      if (v5)
      {
        v7 = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        v7 = "<NULL>";
      }

      *buf = 136446722;
      v89 = (a1 + 507);
      v90 = 2080;
      v91 = " ";
      v92 = 2082;
      v93 = v7;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT request for %{public}s", buf, 0x20u);
    }
  }

  v33 = 0;
  v34 = nw_http_request_method_connect;
LABEL_89:
  v45 = *v34;
  if (nw_endpoint_get_type(*(a1 + 296)) == nw_endpoint_type_address && nw_endpoint_get_address_family(*(a1 + 296)) == 30)
  {
    v46 = "[%s]:%u";
  }

  else
  {
    v46 = "%s:%u";
  }

  v47 = nw_endpoint_get_hostname(*(a1 + 296));
  v48 = nw_endpoint_get_port(*(a1 + 296));
  asprintf(&v87, v46, v47, v48);
  if ((*v2 & 8) == 0)
  {
    v32 = 0;
    goto LABEL_97;
  }

  v49 = strdup("/");
  if (v49)
  {
LABEL_96:
    v32 = 0;
    v86 = v49;
LABEL_97:
    v50 = 1;
    v51 = v87;
    if (!v87)
    {
      goto LABEL_169;
    }

LABEL_144:
    v70 = *v51;
    if (v70 == 32 || v70 == 9)
    {
LABEL_158:
      if ((*(v2 + 2) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v74 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v89 = (a1 + 507);
          v90 = 2080;
          v91 = " ";
          v92 = 2080;
          v93 = v87;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s%sInvalid characters in authority: %s", buf, 0x20u);
        }
      }

      nw_masque_mark_failed_with_error(a1, 22);
      if (v87)
      {
        free(v87);
        v87 = 0;
      }

      if (v86)
      {
        free(v86);
      }

      return 0;
    }

    if (*v51)
    {
      v71 = v51 - 1;
      while (1)
      {
        v72 = (v70 - 33) < 0x5E || v70 == 9;
        if (!v72 && v70 != 32 && (v70 & 0x80) == 0)
        {
          goto LABEL_158;
        }

        v70 = v71[2];
        ++v71;
        if (!v70)
        {
          v73 = *v71;
          if (v73 != 9 && v73 != 32)
          {
            break;
          }

          goto LABEL_158;
        }
      }
    }

LABEL_169:
    v75 = nw_http_request_create(v45, v33, v51, v86);
    if (v87)
    {
      free(v87);
      v87 = 0;
    }

    if (v86)
    {
      free(v86);
      v86 = 0;
    }

    if ((v50 & 1) == 0)
    {
      nw_http_request_set_extended_connect_protocol(v75);
    }

    if (v32)
    {
      nw_http_fields_append(v75, "Proxy-QUIC-Forwarding", "?1");
    }

    return v75;
  }

  v76 = __nwlog_obj();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v77 = 3;
  }

  else
  {
    v77 = 2;
  }

  *buf = 136446210;
  v89 = "strict_strdup";
  LODWORD(v83) = 12;
  v78 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s strdup() failed", buf, v83);
  result = __nwlog_should_abort(v78);
  if (!result)
  {
    free(v78);
    v49 = 0;
    goto LABEL_96;
  }

LABEL_187:
  __break(1u);
  return result;
}

char *nw_masque_change_base64_to_base64url(char *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = strchr(a1, 43);
    if (!v2)
    {
      break;
    }

    *v2 = 45;
    a1 = v2 + 1;
  }

  for (i = v1; ; i = result + 1)
  {
    result = strchr(i, 47);
    if (!result)
    {
      break;
    }

    *result = 95;
  }

  return result;
}

uint64_t __Block_byref_object_copy__28072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__28073(uint64_t result)
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

void ___ZL46nw_masque_enable_spin_bit_for_ft_p2p_if_neededP9nw_masque_block_invoke(void *a1, nw_protocol_options_t options)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(*(a1[5] + 8) + 40))
    {
      is_quic = nw_protocol_options_is_quic(options);
      v5 = options;
      if (is_quic || (is_quic_connection = nw_protocol_options_is_quic_connection(options), v5 = options, (is_quic_connection & 1) != 0) || (is_quic_stream = nw_protocol_options_is_quic_stream(options), v5 = options, is_quic_stream))
      {
        if (v5)
        {
          v8 = os_retain(v5);
        }

        else
        {
          v8 = 0;
        }

        v12 = *(a1[5] + 8);
        v13 = *(v12 + 48);
        if (v13)
        {
          v14 = *(v12 + 40);
          if (v14)
          {
            os_release(v14);
            v13 = *(v12 + 48);
          }
        }

        *(v12 + 40) = v8;
        *(v12 + 48) = v13 | 1;
        v15 = a1[6];
        if ((!v15 || (*(v15 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v16 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v17 = a1[6];
            v18 = "";
            v19 = v17 == 0;
            if (v17)
            {
              v20 = (v17 + 507);
            }

            else
            {
              v20 = "";
            }

            v21 = 136446722;
            v22 = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed_block_invoke";
            if (!v19)
            {
              v18 = " ";
            }

            v23 = 2082;
            v24 = v20;
            v25 = 2080;
            v26 = v18;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound quic as application protocol", &v21, 0x20u);
          }
        }
      }
    }
  }

  else
  {
    protocol_handle = nw_protocol_options_get_protocol_handle(options);
    v10 = a1[6];
    if (v10)
    {
      v11 = v10 - 96;
    }

    else
    {
      v11 = 0;
    }

    if (protocol_handle == v11)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }
  }
}

BOOL nw_masque_compare_metadata(uint64_t a1, void *a2, void *a3)
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
    v17 = "nw_masque_compare_metadata";
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
        v17 = "nw_masque_compare_metadata";
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
        v17 = "nw_masque_compare_metadata";
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
        v17 = "nw_masque_compare_metadata";
        v8 = "%{public}s called with null handle2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_masque_compare_metadata";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null handle2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_masque_compare_metadata";
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
        v17 = "nw_masque_compare_metadata";
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
        v17 = "nw_masque_compare_metadata";
        v8 = "%{public}s called with null handle1, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_masque_compare_metadata";
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
    v17 = "nw_masque_compare_metadata";
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

uint64_t nw_protocol_masque_get_output_local_endpoint(nw_protocol *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_local_endpoint";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (__nwlog_fault(v7, &type, &v62))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v65 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque";
LABEL_31:
              v21 = v8;
              v22 = v9;
LABEL_32:
              _os_log_impl(&dword_181A37000, v21, v22, v10, buf, 0xCu);
            }
          }

          else if (v62 == 1)
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
                v65 = "nw_protocol_masque_get_output_local_endpoint";
                v66 = 2082;
                v67 = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_33;
            }

            if (v20)
            {
              *buf = 136446210;
              v65 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque, no backtrace";
              v21 = v18;
              v22 = v19;
              goto LABEL_32;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v65 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque, backtrace limit exceeded";
              goto LABEL_31;
            }
          }
        }

LABEL_33:
        if (v7)
        {
          free(v7);
        }

        result = 0;
        goto LABEL_54;
      }

      v6 = *a1[1].flow_id;
    }

    result = v6[6].output_handler_context;
    if (!result)
    {
      output_handler = v1->output_handler;
      if (!output_handler)
      {
        v51 = __nwlog_obj();
        *buf = 136446210;
        v65 = "__nw_protocol_get_output_local_endpoint";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s called with null protocol", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v7, &type, &v62))
        {
          goto LABEL_33;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v9 = type;
          if (!os_log_type_enabled(v8, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol";
          goto LABEL_31;
        }

        if (v62 != 1)
        {
          v8 = __nwlog_obj();
          v9 = type;
          if (!os_log_type_enabled(v8, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_31;
        }

        v56 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v57 = os_log_type_enabled(v8, type);
        if (v56)
        {
          if (v57)
          {
            *buf = 136446466;
            v65 = "__nw_protocol_get_output_local_endpoint";
            v66 = 2082;
            v67 = v56;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v56);
          goto LABEL_33;
        }

        if (v57)
        {
          *buf = 136446210;
          v65 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v13 = output_handler->handle;
      v14 = v1->output_handler;
      if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *output_handler[1].flow_id) != 0)
      {
        v23 = v14[1].callbacks;
        if (v23)
        {
          v15 = 0;
          v14[1].callbacks = (&v23->add_input_handler + 1);
          v16 = output_handler->callbacks;
          if (!v16)
          {
LABEL_78:
            v44 = __nwlog_obj();
            name = output_handler->identifier->name;
            *buf = 136446722;
            v65 = "__nw_protocol_get_output_local_endpoint";
            if (!name)
            {
              name = "invalid";
            }

            v66 = 2082;
            v67 = name;
            v68 = 2048;
            v69 = output_handler;
            v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback", buf, 32);
            type = OS_LOG_TYPE_ERROR;
            v62 = 0;
            if (__nwlog_fault(v46, &type, &v62))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v47 = __nwlog_obj();
                v48 = type;
                if (!os_log_type_enabled(v47, type))
                {
                  goto LABEL_110;
                }

                v49 = output_handler->identifier->name;
                if (!v49)
                {
                  v49 = "invalid";
                }

                *buf = 136446722;
                v65 = "__nw_protocol_get_output_local_endpoint";
                v66 = 2082;
                v67 = v49;
                v68 = 2048;
                v69 = output_handler;
                v50 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_108:
                v59 = v47;
LABEL_109:
                _os_log_impl(&dword_181A37000, v59, v48, v50, buf, 0x20u);
                goto LABEL_110;
              }

              if (v62 != 1)
              {
                v47 = __nwlog_obj();
                v48 = type;
                if (!os_log_type_enabled(v47, type))
                {
                  goto LABEL_110;
                }

                v58 = output_handler->identifier->name;
                if (!v58)
                {
                  v58 = "invalid";
                }

                *buf = 136446722;
                v65 = "__nw_protocol_get_output_local_endpoint";
                v66 = 2082;
                v67 = v58;
                v68 = 2048;
                v69 = output_handler;
                v50 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
                goto LABEL_108;
              }

              v52 = __nw_create_backtrace_string();
              v53 = __nwlog_obj();
              v48 = type;
              log = v53;
              v54 = os_log_type_enabled(v53, type);
              if (v52)
              {
                if (v54)
                {
                  v55 = output_handler->identifier->name;
                  if (!v55)
                  {
                    v55 = "invalid";
                  }

                  *buf = 136446978;
                  v65 = "__nw_protocol_get_output_local_endpoint";
                  v66 = 2082;
                  v67 = v55;
                  v68 = 2048;
                  v69 = output_handler;
                  v70 = 2082;
                  v71 = v52;
                  _os_log_impl(&dword_181A37000, log, v48, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v52);
              }

              else if (v54)
              {
                v60 = output_handler->identifier->name;
                if (!v60)
                {
                  v60 = "invalid";
                }

                *buf = 136446722;
                v65 = "__nw_protocol_get_output_local_endpoint";
                v66 = 2082;
                v67 = v60;
                v68 = 2048;
                v69 = output_handler;
                v50 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
                v59 = log;
                goto LABEL_109;
              }
            }

LABEL_110:
            if (v46)
            {
              free(v46);
            }

            result = 0;
            if (v15)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v15 = 0;
          v16 = output_handler->callbacks;
          if (!v16)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v15 = 1;
        v16 = output_handler->callbacks;
        if (!v16)
        {
          goto LABEL_78;
        }
      }

      get_output_local_endpoint = v16->get_output_local_endpoint;
      if (!get_output_local_endpoint)
      {
        goto LABEL_78;
      }

      result = get_output_local_endpoint(output_handler);
      if ((v15 & 1) == 0)
      {
LABEL_43:
        v25 = output_handler->handle;
        if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
        {
          v26 = output_handler[1].callbacks;
          if (v26)
          {
            v27 = (v26 - 1);
            output_handler[1].callbacks = v27;
            if (!v27)
            {
              v28 = result;
              v29 = *output_handler[1].flow_id;
              if (v29)
              {
                *output_handler[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (output_handler[1].flow_id[8])
              {
                v30 = *output_handler[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(output_handler);
              result = v28;
            }
          }
        }
      }
    }

LABEL_54:
    if ((v4 & 1) == 0)
    {
      v31 = v1->handle;
      if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v32 = v1[1].callbacks;
        if (v32)
        {
          v33 = (v32 - 1);
          v1[1].callbacks = v33;
          if (!v33)
          {
            v34 = result;
            v35 = *v1[1].flow_id;
            if (v35)
            {
              *v1[1].flow_id = 0;
              v35[2](v35);
              _Block_release(v35);
            }

            if (v1[1].flow_id[8])
            {
              v36 = *v1[1].flow_id;
              if (v36)
              {
                _Block_release(v36);
              }
            }

            free(v1);
            return v34;
          }
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v65 = "nw_protocol_masque_get_output_local_endpoint";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
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
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_local_endpoint";
        v41 = "%{public}s called with null protocol";
LABEL_116:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
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
          *buf = 136446466;
          v65 = "nw_protocol_masque_get_output_local_endpoint";
          v66 = 2082;
          v67 = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_117;
      }

      if (v43)
      {
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_local_endpoint";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_116;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_masque_get_output_local_endpoint";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_116;
      }
    }
  }

LABEL_117:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

uint64_t ___ZL34nw_protocol_masque_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, _DWORD *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    if (!v4 || (*(v4 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v5 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = v6 == 0;
        if (v6)
        {
          v8 = (v6 + 507);
        }

        else
        {
          v8 = "";
        }

        v9 = " ";
        if (v7)
        {
          v9 = "";
        }

        *buf = 136446466;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        v10 = "%{public}s%sReceived unexpected input frame when not waiting for a response";
LABEL_58:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
        goto LABEL_84;
      }
    }

    goto LABEL_84;
  }

  v11 = nw_frame_unclaimed_length(a2);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 40);
    if (!v13 || (*(v13 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v14 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        v16 = v15 == 0;
        if (v15)
        {
          v17 = (v15 + 507);
        }

        else
        {
          v17 = "";
        }

        *buf = 136446722;
        *&buf[4] = v17;
        v18 = " ";
        if (v16)
        {
          v18 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v18;
        *&buf[22] = 1024;
        LODWORD(v65) = v12;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%sReceived unexpected input frame of length %u", buf, 0x1Cu);
      }
    }
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v19 = nw_protocol_copy_http_definition_http_definition;
  v20 = nw_frame_copy_metadata_for_protocol(a2, v19);
  if (v19)
  {
    os_release(v19);
  }

  if (v20)
  {
    if (*(a1 + 52) != 1)
    {
      v38 = *(a1 + 40);
      if (*(a1 + 48) == 3)
      {
        nw_masque_handle_capsule(v38, v20);
      }

      else
      {
        nw_masque_handle_connect_response(v38, v20);
      }

      goto LABEL_83;
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = v20;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v23 = nw_protocol_metadata_matches_definition(v22, nw_protocol_copy_http_definition_http_definition);

      if (v23)
      {
        v24 = nw_http_metadata_copy_response(v22);
        if (v24)
        {
          v25 = v24;
          status_code = _nw_http_response_get_status_code(v25);

          if (!status_code)
          {
LABEL_82:
            os_release(v25);
LABEL_83:
            *(*(*(a1 + 32) + 8) + 24) = 1;
            os_release(v20);
            goto LABEL_84;
          }

          if (status_code != 200)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *v69 = 136446466;
              *&v69[4] = "nw_masque_handle_server_connect_response";
              *&v69[12] = 1024;
              *&v69[14] = status_code;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s Received response code %u, forwarding not allowed", v69, 0x12u);
            }

            goto LABEL_82;
          }

          v27 = v25;
          have_field_with_name = _nw_http_fields_have_field_with_name(v27, "Server-Connection-Id");

          *v69 = 0;
          *&v69[8] = v69;
          *&v69[16] = 0x2000000000;
          v70 = 0;
          *type = 0;
          v57 = type;
          v58 = 0x2000000000;
          v59 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL40nw_masque_handle_server_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v65 = &unk_1E6A2FC70;
          v66 = v69;
          v67 = type;
          v68 = v21;
          v29 = v27;
          v30 = buf;
          _nw_http_fields_access_value_by_name(v29, "Datagram-Flow-Id", v30);

          if (have_field_with_name)
          {
            if (*(*&v69[8] + 24))
            {
              v31 = *(v21 + 503);
              if (v57[24])
              {
                if ((v31 & 0x10000) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v32 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                  {
                    *v60 = 136446466;
                    v61 = v21 + 507;
                    v62 = 2080;
                    v63 = " ";
                    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s%sReceived 200 OK, forwarding allowed", v60, 0x16u);
                  }
                }

                *(v21 + 488) = 4;
                goto LABEL_81;
              }

              if ((v31 & 0x10000) != 0)
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
LABEL_80:
                nw_masque_mark_failed_with_error(v21, 94);
LABEL_81:
                _Block_object_dispose(type, 8);
                _Block_object_dispose(v69, 8);
                goto LABEL_82;
              }

              *v60 = 136446466;
              v61 = v21 + 507;
              v62 = 2080;
              v63 = " ";
              v41 = "%{public}s%sReceived response without invalid datagram flow ID";
            }

            else
            {
              if (*(v21 + 505))
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_80;
              }

              *v60 = 136446466;
              v61 = v21 + 507;
              v62 = 2080;
              v63 = " ";
              v41 = "%{public}s%sReceived response without datagram flow ID";
            }
          }

          else
          {
            if (*(v21 + 505))
            {
              goto LABEL_80;
            }

            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v40 = gprivacy_proxyLogObj;
            if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_80;
            }

            *v60 = 136446466;
            v61 = v21 + 507;
            v62 = 2080;
            v63 = " ";
            v41 = "%{public}s%sReceived response without server Connection ID";
          }

          _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, v41, v60, 0x16u);
          goto LABEL_80;
        }

        v49 = __nwlog_obj();
        *v69 = 136446210;
        *&v69[4] = "nw_masque_handle_server_connect_response";
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null response", v69, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v60[0] = 0;
        if (!__nwlog_fault(v44, type, v60))
        {
          goto LABEL_126;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_126;
          }

          *v69 = 136446210;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          v47 = "%{public}s called with null response";
          goto LABEL_125;
        }

        if (v60[0] != 1)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_126;
          }

          *v69 = 136446210;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          v47 = "%{public}s called with null response, backtrace limit exceeded";
          goto LABEL_125;
        }

        backtrace_string = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = type[0];
        v55 = os_log_type_enabled(v45, type[0]);
        if (!backtrace_string)
        {
          if (!v55)
          {
            goto LABEL_126;
          }

          *v69 = 136446210;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          v47 = "%{public}s called with null response, no backtrace";
          goto LABEL_125;
        }

        if (v55)
        {
          *v69 = 136446466;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          *&v69[12] = 2082;
          *&v69[14] = backtrace_string;
          v54 = "%{public}s called with null response, dumping backtrace:%{public}s";
          goto LABEL_110;
        }

        goto LABEL_111;
      }

      v48 = __nwlog_obj();
      *v69 = 136446210;
      *&v69[4] = "nw_masque_handle_server_connect_response";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null nw_protocol_metadata_is_http(metadata)", v69, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v60[0] = 0;
      if (!__nwlog_fault(v44, type, v60))
      {
        goto LABEL_126;
      }

      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v60[0] != 1)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_126;
          }

          *v69 = 136446210;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          v47 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
          goto LABEL_125;
        }

        backtrace_string = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = type[0];
        v53 = os_log_type_enabled(v45, type[0]);
        if (!backtrace_string)
        {
          if (!v53)
          {
            goto LABEL_126;
          }

          *v69 = 136446210;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          v47 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
          goto LABEL_125;
        }

        if (v53)
        {
          *v69 = 136446466;
          *&v69[4] = "nw_masque_handle_server_connect_response";
          *&v69[12] = 2082;
          *&v69[14] = backtrace_string;
          v54 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
LABEL_110:
          _os_log_impl(&dword_181A37000, v45, v46, v54, v69, 0x16u);
        }

LABEL_111:
        free(backtrace_string);
        if (!v44)
        {
          goto LABEL_83;
        }

        goto LABEL_127;
      }

      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_126;
      }

      *v69 = 136446210;
      *&v69[4] = "nw_masque_handle_server_connect_response";
      v47 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
    }

    else
    {
      v43 = __nwlog_obj();
      *v69 = 136446210;
      *&v69[4] = "nw_masque_handle_server_connect_response";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null masque", v69, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v60[0] = 0;
      if (!__nwlog_fault(v44, type, v60))
      {
        goto LABEL_126;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_126;
        }

        *v69 = 136446210;
        *&v69[4] = "nw_masque_handle_server_connect_response";
        v47 = "%{public}s called with null masque";
      }

      else if (v60[0] == 1)
      {
        v50 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v46 = type[0];
        v51 = os_log_type_enabled(v45, type[0]);
        if (v50)
        {
          if (v51)
          {
            *v69 = 136446466;
            *&v69[4] = "nw_masque_handle_server_connect_response";
            *&v69[12] = 2082;
            *&v69[14] = v50;
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null masque, dumping backtrace:%{public}s", v69, 0x16u);
          }

          free(v50);
LABEL_126:
          if (!v44)
          {
            goto LABEL_83;
          }

LABEL_127:
          free(v44);
          goto LABEL_83;
        }

        if (!v51)
        {
          goto LABEL_126;
        }

        *v69 = 136446210;
        *&v69[4] = "nw_masque_handle_server_connect_response";
        v47 = "%{public}s called with null masque, no backtrace";
      }

      else
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_126;
        }

        *v69 = 136446210;
        *&v69[4] = "nw_masque_handle_server_connect_response";
        v47 = "%{public}s called with null masque, backtrace limit exceeded";
      }
    }

LABEL_125:
    _os_log_impl(&dword_181A37000, v45, v46, v47, v69, 0xCu);
    goto LABEL_126;
  }

  v33 = *(a1 + 40);
  if (!v33 || (*(v33 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 40);
      v35 = v34 == 0;
      if (v34)
      {
        v36 = (v34 + 507);
      }

      else
      {
        v36 = "";
      }

      v37 = " ";
      if (v35)
      {
        v37 = "";
      }

      *buf = 136446466;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      v10 = "%{public}s%sReceived unexpected input frame without HTTP metadata";
      goto LABEL_58;
    }
  }

LABEL_84:
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_masque_listener_read_input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94[0]) = 0;
    if (!__nwlog_fault(v41, type, v94))
    {
      goto LABEL_130;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v94[0]) != 1)
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (!os_log_type_enabled(v42, type[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        v44 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_129;
      }

      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = type[0];
      v52 = os_log_type_enabled(v42, type[0]);
      if (!backtrace_string)
      {
        if (!v52)
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        v44 = "%{public}s called with null masque, no backtrace";
        goto LABEL_129;
      }

      if (v52)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v53 = "%{public}s called with null masque, dumping backtrace:%{public}s";
LABEL_92:
        _os_log_impl(&dword_181A37000, v42, v43, v53, buf, 0x16u);
      }

LABEL_93:
      free(backtrace_string);
      goto LABEL_130;
    }

    v42 = __nwlog_obj();
    v43 = type[0];
    if (!os_log_type_enabled(v42, type[0]))
    {
      goto LABEL_130;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v44 = "%{public}s called with null masque";
LABEL_129:
    _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
LABEL_130:
    if (v41)
    {
      free(v41);
    }

    return 0;
  }

  if ((*(a1 + 503) & 0x10) == 0)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null (masque->listen_udp)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94[0]) = 0;
    if (!__nwlog_fault(v41, type, v94))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (!os_log_type_enabled(v42, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_read_input";
      v44 = "%{public}s called with null (masque->listen_udp)";
      goto LABEL_129;
    }

    if (LOBYTE(v94[0]) != 1)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (!os_log_type_enabled(v42, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_read_input";
      v44 = "%{public}s called with null (masque->listen_udp), backtrace limit exceeded";
      goto LABEL_129;
    }

    backtrace_string = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    v43 = type[0];
    v58 = os_log_type_enabled(v42, type[0]);
    if (backtrace_string)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v53 = "%{public}s called with null (masque->listen_udp), dumping backtrace:%{public}s";
        goto LABEL_92;
      }

      goto LABEL_93;
    }

    if (!v58)
    {
      goto LABEL_130;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v44 = "%{public}s called with null (masque->listen_udp), no backtrace";
    goto LABEL_129;
  }

  if (*(a1 + 484) != 4)
  {
    return 0;
  }

  v7 = a6;
  v94[0] = 0;
  v94[1] = v94;
  v10 = *(a1 - 64);
  v78 = a5;
  if (v10)
  {
    v11 = a1 - 96;
    v12 = *(v10 + 40);
    v13 = *(a1 - 64);
    if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(v10 + 64)) != 0)
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

    v16 = *(a1 - 56);
    v17 = a1 - 96;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *(a1 - 32)) != 0)
    {
      v20 = *(v17 + 88);
      if (v20)
      {
        v18 = 0;
        *(v17 + 88) = v20 + 1;
        v19 = *(v10 + 24);
        if (!v19)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v10 + 24);
        if (!v19)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v10 + 24);
      if (!v19)
      {
        goto LABEL_72;
      }
    }

    v21 = *(v19 + 80);
    if (v21)
    {
      v21(v10, a1 - 96, a4, a5, a6, v94);
      goto LABEL_22;
    }

LABEL_72:
    v46 = __nwlog_obj();
    v47 = *(v10 + 16);
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_get_input_frames";
    if (!v47)
    {
      v47 = "invalid";
    }

    *&buf[12] = 2082;
    *&buf[14] = v47;
    *&buf[22] = 2048;
    v97 = v10;
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, 32);
    type[0] = OS_LOG_TYPE_ERROR;
    v95 = 0;
    v77 = v48;
    if (!__nwlog_fault(v48, type, &v95))
    {
      goto LABEL_117;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v75, type[0]))
      {
        goto LABEL_117;
      }

      v49 = *(v10 + 16);
      if (!v49)
      {
        v49 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      v97 = v10;
      v50 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
    }

    else
    {
      if (v95 == 1)
      {
        v76 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v72 = type[0];
        v59 = os_log_type_enabled(loga, type[0]);
        v60 = v76;
        if (v76)
        {
          if (v59)
          {
            v61 = *(v10 + 16);
            if (!v61)
            {
              v61 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            *&buf[22] = 2048;
            v97 = v10;
            v98 = 2082;
            v99 = v76;
            _os_log_impl(&dword_181A37000, loga, v72, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            v60 = v76;
          }

          free(v60);
          goto LABEL_117;
        }

        if (!v59)
        {
LABEL_117:
          if (v77)
          {
            free(v77);
          }

LABEL_22:
          if ((v18 & 1) == 0)
          {
            v22 = *(a1 - 56);
            if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a1 - 32)) != 0)
            {
              v23 = *(v11 + 88);
              if (v23)
              {
                v24 = v23 - 1;
                *(v11 + 88) = v24;
                if (!v24)
                {
                  v25 = *(v11 + 64);
                  if (v25)
                  {
                    *(v11 + 64) = 0;
                    v25[2](v25);
                    _Block_release(v25);
                  }

                  if (*(v11 + 72))
                  {
                    v26 = *(v11 + 64);
                    if (v26)
                    {
                      _Block_release(v26);
                    }
                  }

                  free(v11);
                }
              }
            }
          }

          if ((v14 & 1) == 0)
          {
            v27 = *(v10 + 40);
            if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v10 + 64)) != 0)
            {
              v28 = *(v10 + 88);
              if (v28)
              {
                v29 = v28 - 1;
                *(v10 + 88) = v29;
                if (!v29)
                {
                  v30 = *(v10 + 64);
                  if (v30)
                  {
                    *(v10 + 64) = 0;
                    v30[2](v30);
                    _Block_release(v30);
                  }

                  if (*(v10 + 72))
                  {
                    v31 = *(v10 + 64);
                    if (v31)
                    {
                      _Block_release(v31);
                    }
                  }

                  goto LABEL_45;
                }
              }
            }
          }

          goto LABEL_46;
        }

        v71 = *(v10 + 16);
        if (!v71)
        {
          v71 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v71;
        *&buf[22] = 2048;
        v97 = v10;
        v50 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
        v67 = loga;
        v68 = v72;
LABEL_116:
        _os_log_impl(&dword_181A37000, v67, v68, v50, buf, 0x20u);
        goto LABEL_117;
      }

      v75 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v75, type[0]))
      {
        goto LABEL_117;
      }

      v66 = *(v10 + 16);
      if (!v66)
      {
        v66 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v66;
      *&buf[22] = 2048;
      v97 = v10;
      v50 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
    }

    v67 = v75;
    v68 = log;
    goto LABEL_116;
  }

  v54 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_protocol_get_input_frames";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v95 = 0;
  if (__nwlog_fault(v10, type, &v95))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v55 = __nwlog_obj();
      v56 = type[0];
      if (!os_log_type_enabled(v55, type[0]))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      v57 = "%{public}s called with null protocol";
    }

    else
    {
      if (v95 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v64 = type[0];
        v65 = os_log_type_enabled(v63, type[0]);
        if (v62)
        {
          if (v65)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v62;
            _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v62);
          if (v10)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        if (!v65)
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v57 = "%{public}s called with null protocol, no backtrace";
        v69 = v63;
        v70 = v64;
        goto LABEL_122;
      }

      v55 = __nwlog_obj();
      v56 = type[0];
      if (!os_log_type_enabled(v55, type[0]))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      v57 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v69 = v55;
    v70 = v56;
LABEL_122:
    _os_log_impl(&dword_181A37000, v69, v70, v57, buf, 0xCu);
  }

LABEL_123:
  if (v10)
  {
LABEL_45:
    free(v10);
  }

LABEL_46:
  if (!v94[0])
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v97) = 0;
  *type = 0;
  v91 = type;
  v92 = 0x2000000000;
  v93 = 0;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v32 = nw_protocol_copy_http_definition_http_definition;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 0x40000000;
  v81 = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke;
  v82 = &unk_1E6A2FC28;
  v85 = v32;
  v86 = a1;
  v87 = v94;
  v88 = a2;
  v89 = a3;
  v83 = type;
  v84 = buf;
  v33 = v94[0];
  do
  {
    if (!v33)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = (v81)(v80);
    v33 = v34;
  }

  while ((v35 & 1) != 0);
  if (v32)
  {
    os_release(v32);
  }

  if (*(*&buf[8] + 24) == 1)
  {
    v36 = *(a1 + 464);
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 0x40000000;
    v79[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_148;
    v79[3] = &__block_descriptor_tmp_149;
    v79[4] = a1;
    nw_hash_table_apply(v36, v79);
  }

  if (a2)
  {
    v37 = *(v91 + 6);
    if (!v37)
    {
      if (*(*&buf[8] + 24) == 1 && *(a2 + 32))
      {
        v37 = nw_frame_array_fill_from_pending_array((a2 + 32), a3, v78, v7);
      }

      else
      {
        v37 = 0;
      }
    }
  }

  else
  {
    v37 = *(v91 + 6);
  }

  v38 = v37;
  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  return v38;
}

uint64_t ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_copy_metadata_for_protocol(a2, *(a1 + 48));
  if (v4)
  {
    v5 = v4;
    if (nw_http_metadata_is_capsule(v4))
    {
      v6 = *(a1 + 56);
      if (!v6 || (*(v6 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        v8 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
        v6 = *(a1 + 56);
        if (v8)
        {
          v9 = (v6 + 507);
          v10 = "";
          if (v6)
          {
            v10 = " ";
          }

          else
          {
            v9 = "";
          }

          *buf = 136446466;
          *v89 = v9;
          *&v89[8] = 2080;
          *&v89[10] = v10;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s%sReceived HTTP Capsule for listener", buf, 0x16u);
          v6 = *(a1 + 56);
        }
      }

      nw_masque_handle_capsule(v6, v5);
      v11 = (*(a1 + 64) + 8);
      v12 = *(a2 + 32);
      v13 = *(a2 + 40);
      if (v12)
      {
        v11 = (v12 + 40);
      }

      *v11 = v13;
      *v13 = v12;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      nw_frame_finalize(a2);
    }

    os_release(v5);
    return 1;
  }

  v87 = 0;
  v14 = nw_frame_unclaimed_bytes(a2, &v87);
  v15 = (*(a1 + 64) + 8);
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
  if (!v87)
  {
    v23 = *(a1 + 56);
    if (v23 && (*(v23 + 505) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v24 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    v25 = *(a1 + 56);
    v26 = "";
    v27 = v25 == 0;
    if (v25)
    {
      v28 = (v25 + 507);
    }

    else
    {
      v28 = "";
    }

    *buf = 136446722;
    if (!v27)
    {
      v26 = " ";
    }

    *v89 = v28;
    *&v89[8] = 2080;
    *&v89[10] = v26;
    *&v89[18] = 1024;
    *&v89[20] = v87;
    v29 = "%{public}s%sReceived datagram is too short (length %u)";
LABEL_68:
    v50 = buf;
LABEL_69:
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, v29, v50, 0x1Cu);
    goto LABEL_70;
  }

  v18 = *v14;
  if (v18 != 6)
  {
    if (v18 == 4)
    {
      *&__src[8] = 0;
      if (v87 > 6)
      {
        *__src = 528;
        *&__src[4] = *(v14 + 1);
        *&__src[2] = *(v14 + 5);
        address = _nw_endpoint_create_address(__src);
        v21 = a2;
        v22 = 7;
        goto LABEL_36;
      }

      v45 = *(a1 + 56);
      if (v45 && (*(v45 + 505) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v24 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
LABEL_70:
        nw_frame_finalize(a2);
        return 1;
      }

      v46 = *(a1 + 56);
      v47 = "";
      v48 = v46 == 0;
      if (v46)
      {
        v49 = (v46 + 507);
      }

      else
      {
        v49 = "";
      }

      *buf = 136446722;
      if (!v48)
      {
        v47 = " ";
      }

      *v89 = v49;
      *&v89[8] = 2080;
      *&v89[10] = v47;
      *&v89[18] = 1024;
      *&v89[20] = v87;
      v29 = "%{public}s%sReceived datagram is too short for IPv4 (length %u)";
    }

    else
    {
      v40 = *(a1 + 56);
      if (v40 && (*(v40 + 505) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v24 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_70;
      }

      v41 = *(a1 + 56);
      v42 = v41 == 0;
      if (v41)
      {
        v43 = (v41 + 507);
      }

      else
      {
        v43 = "";
      }

      *buf = 136446722;
      *v89 = v43;
      v44 = " ";
      if (v42)
      {
        v44 = "";
      }

      *&v89[8] = 2080;
      *&v89[10] = v44;
      *&v89[18] = 1024;
      *&v89[20] = v18;
      v29 = "%{public}s%sReceived datagram with unsupported IP version %u";
    }

    goto LABEL_68;
  }

  memset(v89, 0, 24);
  if (v87 <= 0x12)
  {
    v51 = *(a1 + 56);
    if (v51 && (*(v51 + 505) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v24 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    v52 = *(a1 + 56);
    v53 = "";
    v54 = v52 == 0;
    if (v52)
    {
      v55 = (v52 + 507);
    }

    else
    {
      v55 = "";
    }

    *__src = 136446722;
    if (!v54)
    {
      v53 = " ";
    }

    *&__src[4] = v55;
    *&__src[12] = 2080;
    *&__src[14] = v53;
    *&__src[22] = 1024;
    v93 = v87;
    v29 = "%{public}s%sReceived datagram is too short for IPv6 (length %u)";
    v50 = __src;
    goto LABEL_69;
  }

  *buf = 7708;
  *&v89[4] = *(v14 + 1);
  *&buf[2] = *(v14 + 17);
  address = _nw_endpoint_create_address(buf);
  v21 = a2;
  v22 = 19;
LABEL_36:
  nw_frame_claim(v21, v19, v22, 0);
  *__src = 0;
  *&__src[8] = __src;
  *&__src[16] = 0x2000000000;
  LOBYTE(v93) = 0;
  v30 = *(a1 + 56);
  v31 = *(v30 + 464);
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 0x40000000;
  v81[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_143;
  v81[3] = &unk_1E6A2FBD8;
  v81[4] = __src;
  v84 = *(a1 + 72);
  v83 = address;
  v85 = a2;
  v86 = v30;
  v82 = *(a1 + 32);
  nw_hash_table_apply(v31, v81);
  if ((*(*&__src[8] + 24) & 1) == 0)
  {
    v32 = *(a1 + 56);
    v33 = *(v32 + 424);
    if (v33 && (v34 = *v33) != 0 && *v34)
    {
      if ((*(v32 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v74 = gprivacy_proxyLogObj;
        v75 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
        v76 = *(a1 + 56);
        if (v75)
        {
          v77 = v76 == 0;
          if (v76)
          {
            v78 = (v76 + 507);
          }

          else
          {
            v78 = "";
          }

          *buf = 136446978;
          *v89 = "nw_protocol_masque_listener_read_input_block_invoke";
          *&v89[8] = 2082;
          *&v89[10] = v78;
          v79 = " ";
          if (v77)
          {
            v79 = "";
          }

          *&v89[18] = 2080;
          *&v89[20] = v79;
          v90 = 2112;
          v91 = address;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound new frame for %@, creating a new flow", buf, 0x2Au);
        }
      }

      v35 = _nw_parameters_copy();
      v36 = (***(*(a1 + 56) + 424))(*(*(a1 + 56) + 424), address, v35);
      if (v35)
      {
        os_release(v35);
      }

      if (v36)
      {
        *(*&__src[8] + 24) = 0;
        v37 = *(a1 + 56);
        v38 = *(v37 + 464);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 0x40000000;
        v80[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_145;
        v80[3] = &unk_1E6A2FC00;
        v80[6] = address;
        v80[7] = a2;
        v80[8] = v37;
        v39 = *(a1 + 40);
        v80[4] = __src;
        v80[5] = v39;
        nw_hash_table_apply(v38, v80);
        goto LABEL_104;
      }

      v62 = *(a1 + 56);
      if (v62 && (*(v62 + 505) & 1) != 0)
      {
        goto LABEL_104;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v56 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      v63 = *(a1 + 56);
      v64 = v63 == 0;
      if (v63)
      {
        v65 = (v63 + 507);
      }

      else
      {
        v65 = "";
      }

      v66 = " ";
      if (v64)
      {
        v66 = "";
      }

      *buf = 136446466;
      *v89 = v65;
      *&v89[8] = 2080;
      *&v89[10] = v66;
      v61 = "%{public}s%sFailed to accept new flow";
    }

    else
    {
      if (*(v32 + 505))
      {
        goto LABEL_104;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v56 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      v57 = *(a1 + 56);
      v58 = v57 == 0;
      if (v57)
      {
        v59 = (v57 + 507);
      }

      else
      {
        v59 = "";
      }

      v60 = " ";
      if (v58)
      {
        v60 = "";
      }

      *buf = 136446466;
      *v89 = v59;
      *&v89[8] = 2080;
      *&v89[10] = v60;
      v61 = "%{public}s%sReceived datagram for new flow, but no listen protocol is able to receive the new flow";
    }

    _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, v61, buf, 0x16u);
  }

LABEL_104:
  if ((*(*&__src[8] + 24) & 1) == 0)
  {
    v67 = *(a1 + 56);
    if (!v67 || (*(v67 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v68 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v69 = *(a1 + 56);
        v70 = v69 == 0;
        if (v69)
        {
          v71 = (v69 + 507);
        }

        else
        {
          v71 = "";
        }

        v72 = " ";
        if (v70)
        {
          v72 = "";
        }

        *buf = 136446466;
        *v89 = v71;
        *&v89[8] = 2080;
        *&v89[10] = v72;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to find a flow to accept inbound packet, dropping", buf, 0x16u);
      }
    }

    nw_frame_finalize(a2);
  }

  if (address)
  {
    os_release(address);
  }

  _Block_object_dispose(__src, 8);
  return 1;
}

uint64_t ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_148(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*nw_hash_node_get_extra(a2))
  {
    return 1;
  }

  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = *(object + 24);
    if (v4)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v5();
        return 1;
      }
    }

    v7 = object;
    v8 = __nwlog_obj();
    v9 = v7;
    v10 = *(v7 + 16);
    if (!v10)
    {
      v10 = "invalid";
    }
  }

  else
  {
    v9 = 0;
    v8 = __nwlog_obj();
    v10 = "invalid";
  }

  *buf = 136446466;
  v24 = "nw_protocol_masque_listener_read_input_block_invoke";
  v25 = 2082;
  v26 = v10;
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s protocol %{public}s has invalid input_available callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v11, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_37;
      }

      v14 = "invalid";
      if (v9 && *(v9 + 16))
      {
        v14 = *(v9 + 16);
      }

      *buf = 136446466;
      v24 = "nw_protocol_masque_listener_read_input_block_invoke";
      v25 = 2082;
      v26 = v14;
      v15 = "%{public}s protocol %{public}s has invalid input_available callback";
      goto LABEL_36;
    }

    if (v21 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_37;
      }

      v19 = "invalid";
      if (v9 && *(v9 + 16))
      {
        v19 = *(v9 + 16);
      }

      *buf = 136446466;
      v24 = "nw_protocol_masque_listener_read_input_block_invoke";
      v25 = 2082;
      v26 = v19;
      v15 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v17 = os_log_type_enabled(v12, type);
    if (backtrace_string)
    {
      if (v17)
      {
        v18 = "invalid";
        if (v9 && *(v9 + 16))
        {
          v18 = *(v9 + 16);
        }

        *buf = 136446722;
        v24 = "nw_protocol_masque_listener_read_input_block_invoke";
        v25 = 2082;
        v26 = v18;
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_37;
    }

    if (v17)
    {
      v20 = "invalid";
      if (v9 && *(v9 + 16))
      {
        v20 = *(v9 + 16);
      }

      *buf = 136446466;
      v24 = "nw_protocol_masque_listener_read_input_block_invoke";
      v25 = 2082;
      v26 = v20;
      v15 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v12, v13, v15, buf, 0x16u);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  return 1;
}

BOOL ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_143(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v5 = *(extra + 16);
  if (v5)
  {
    v6 = extra;
    if (nw_endpoint_is_equal(*(a1 + 56), v5, 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (*(a1 + 64) == a2)
      {
        v10 = *(a1 + 72);
        v11 = *(a1 + 80);
        *(v11 + 32) = 0;
        v12 = *(v10 + 8);
        *(v11 + 40) = v12;
        *v12 = v11;
        *(v10 + 8) = v11 + 32;
        v13 = *(a1 + 88);
        if ((!v13 || (*(v13 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v20 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(a1 + 88);
            v22 = "";
            v23 = v21 == 0;
            if (v21)
            {
              v24 = (v21 + 507);
            }

            else
            {
              v24 = "";
            }

            v25 = 136446722;
            v26 = "nw_protocol_masque_listener_read_input_block_invoke";
            if (!v23)
            {
              v22 = " ";
            }

            v27 = 2082;
            v28 = v24;
            v29 = 2080;
            v30 = v22;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound frame matching remote address", &v25, 0x20u);
          }
        }

        ++*(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v7 = *(a1 + 80);
        *(v7 + 32) = 0;
        v8 = *(v6 + 8);
        *(v7 + 40) = v8;
        *v8 = v7;
        *(v6 + 8) = v7 + 32;
        v9 = *(a1 + 88);
        if ((!v9 || (*(v9 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v15 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 88);
            v17 = "";
            v18 = v16 == 0;
            if (v16)
            {
              v19 = (v16 + 507);
            }

            else
            {
              v19 = "";
            }

            v25 = 136446722;
            v26 = "nw_protocol_masque_listener_read_input_block_invoke";
            if (!v18)
            {
              v17 = " ";
            }

            v27 = 2082;
            v28 = v19;
            v29 = 2080;
            v30 = v17;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound frame matching remote address, pending", &v25, 0x20u);
          }
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_145(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v4 = *(extra + 16);
  if (v4)
  {
    v5 = extra;
    if (nw_endpoint_is_equal(*(a1 + 48), v4, 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v7 = *(a1 + 56);
      v6 = *(a1 + 64);
      *(v7 + 32) = 0;
      v8 = *(v5 + 8);
      *(v7 + 40) = v8;
      *v8 = v7;
      *(v5 + 8) = v7 + 32;
      if ((!v6 || (*(v6 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v10 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 64);
          v12 = "";
          v13 = v11 == 0;
          if (v11)
          {
            v14 = (v11 + 507);
          }

          else
          {
            v14 = "";
          }

          v15 = 136446722;
          v16 = "nw_protocol_masque_listener_read_input_block_invoke";
          if (!v13)
          {
            v12 = " ";
          }

          v17 = 2082;
          v18 = v14;
          v19 = 2080;
          v20 = v12;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound new flow matching remote address, pending", &v15, 0x20u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

unint64_t ___ZL40nw_masque_handle_server_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke(unint64_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = strlen(__s);
    if (result <= 7)
    {
      *(*(v3[4] + 8) + 24) = 1;
      result = strcmp((v3[6] + 591), __s);
      *(*(v3[5] + 8) + 24) = result == 0;
    }
  }

  return result;
}

void nw_masque_handle_connect_response(uint64_t a1, void *a2)
{
  v188 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v100 = __nwlog_obj();
    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s called with null masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v162) = 0;
    if (!__nwlog_fault(v101, type, &v162))
    {
      goto LABEL_297;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v162 != 1)
      {
        v102 = __nwlog_obj();
        v103 = type[0];
        if (!os_log_type_enabled(v102, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v175 = "nw_masque_handle_connect_response";
        v104 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_296;
      }

      backtrace_string = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v103 = type[0];
      v108 = os_log_type_enabled(v102, type[0]);
      if (!backtrace_string)
      {
        if (!v108)
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v175 = "nw_masque_handle_connect_response";
        v104 = "%{public}s called with null masque, no backtrace";
        goto LABEL_296;
      }

      if (v108)
      {
        *buf = 136446466;
        v175 = "nw_masque_handle_connect_response";
        v176 = 2082;
        v177 = backtrace_string;
        _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_297;
    }

    v102 = __nwlog_obj();
    v103 = type[0];
    if (!os_log_type_enabled(v102, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v104 = "%{public}s called with null masque";
LABEL_296:
    _os_log_impl(&dword_181A37000, v102, v103, v104, buf, 0xCu);
    goto LABEL_297;
  }

  if (nw_protocol_metadata_is_http(a2))
  {
    v4 = nw_http_metadata_copy_response(a2);
    if (v4)
    {
      v5 = v4;
      status_code = _nw_http_response_get_status_code(v5);

      if ((status_code - 200) <= 0x63)
      {
        v7 = (a1 + 503);
        v8 = *(a1 + 503);
        if ((v8 & 8) != 0)
        {
          v172[0] = MEMORY[0x1E69E9820];
          v172[1] = 0x40000000;
          v172[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v172[3] = &__block_descriptor_tmp_151;
          v172[4] = a1;
          v9 = v5;
          v10 = v172;
          _nw_http_fields_access_value_by_name(v9, "Datagram-Flow-Id", v10);

          v11 = v9;
          LODWORD(v10) = _nw_http_fields_have_field_with_name(v11, "Client-Connection-Id");

          if (v10)
          {
            v12 = *v7;
            *v7 |= 0x100080u;
            if ((v12 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v13 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v175 = (a1 + 507);
                v176 = 2080;
                v177 = " ";
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s%sReceived acked client CID, server supports forwarding", buf, 0x16u);
              }
            }
          }

          v171[0] = MEMORY[0x1E69E9820];
          v171[1] = 0x40000000;
          v171[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_152;
          v171[3] = &__block_descriptor_tmp_153;
          v171[4] = a1;
          v14 = v11;
          v15 = v171;
          _nw_http_fields_access_value_by_name(v14, "Proxy-QUIC-Forwarding", v15);

          if (*(a1 + 480) != 1)
          {
            if ((*v7 & 0x40000) == 0)
            {
LABEL_32:
              *type = 0;
              v167 = type;
              v168 = 0x2000000000;
              v169 = 0;
              v162 = 0;
              v163 = &v162;
              v164 = 0x2000000000;
              v165 = 0;
              v158 = 0;
              v159 = &v158;
              v160 = 0x2000000000;
              v161 = 0;
              v154 = 0;
              v155 = &v154;
              v156 = 0x2000000000;
              v157 = 0;
              v150 = 0;
              v151 = &v150;
              v152 = 0x2000000000;
              v153 = 0;
              v149[0] = MEMORY[0x1E69E9820];
              v149[1] = 0x40000000;
              v149[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_2;
              v149[3] = &unk_1E6A2FCF8;
              v149[4] = type;
              v149[5] = &v162;
              v149[7] = &v150;
              v149[8] = a1;
              v149[6] = &v154;
              v25 = v5;
              v26 = v149;
              _nw_http_fields_access_value_by_name(v25, "Proxy-Status", v26);

              v148[0] = MEMORY[0x1E69E9820];
              v148[1] = 0x40000000;
              v148[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_3;
              v148[3] = &__block_descriptor_tmp_159;
              v148[4] = a1;
              v27 = v25;
              v28 = v148;
              _nw_http_fields_access_value_by_name(v27, "Client-Geohash", v28);

              v147[0] = MEMORY[0x1E69E9820];
              v147[1] = 0x40000000;
              v147[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_4;
              v147[3] = &unk_1E6A2FD40;
              v147[4] = &v158;
              v147[5] = a1;
              v29 = v27;
              v30 = v147;
              _nw_http_fields_access_value_by_name(v29, "Proxy-Config-Epoch", v30);

              if (v155[3] && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v118 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v119 = v155[3];
                  *buf = 136446978;
                  v175 = "nw_masque_handle_connect_response";
                  v176 = 2082;
                  v177 = (a1 + 507);
                  v178 = 2080;
                  *v179 = " ";
                  *&v179[8] = 2112;
                  *&v179[10] = v119;
                  _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived next hop: %@", buf, 0x2Au);
                }
              }

              if (v151[3] && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v120 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v121 = v151[3];
                  *buf = 136446978;
                  v175 = "nw_masque_handle_connect_response";
                  v176 = 2082;
                  v177 = (a1 + 507);
                  v178 = 2080;
                  *v179 = " ";
                  *&v179[8] = 2112;
                  *&v179[10] = v121;
                  _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived next hop aliases: %@", buf, 0x2Au);
                }
              }

              v31 = *(a1 + 296);
              if (v31)
              {
                v32 = v151[3];
                v33 = v155[3];
                if (v32)
                {
                  if (v33)
                  {
                    _nw_array_append(v151[3], v155[3]);
                    v31 = *(a1 + 296);
                    v32 = v151[3];
                  }

                  nw_endpoint_set_cname_array(v31, v32);
                }

                else
                {
                  if (!v33)
                  {
                    goto LABEL_99;
                  }

                  v34 = _nw_array_create();
                  v35 = v34;
                  if (v34 && (v36 = v155[3]) != 0)
                  {
                    _nw_array_append(v34, v36);
                    nw_endpoint_set_cname_array(*(a1 + 296), v35);
                  }

                  else
                  {
                    nw_endpoint_set_cname_array(*(a1 + 296), v34);
                    if (!v35)
                    {
                      goto LABEL_99;
                    }
                  }

                  os_release(v35);
                }
              }

LABEL_99:
              v57 = v155[3];
              if (v57)
              {
                os_release(v57);
                v155[3] = 0;
              }

              v58 = v151[3];
              if (v58)
              {
                os_release(v58);
                v151[3] = 0;
              }

              if (*(v167 + 24) != 1)
              {
                goto LABEL_112;
              }

              v59 = *(a1 + 312);
              if (v59)
              {
                if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
                {
                  dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
                }

                if (nw_protocol_masque_get_definition(void)::definition)
                {
                  v60 = os_retain(nw_protocol_masque_get_definition(void)::definition);
                }

                else
                {
                  v60 = 0;
                }

                globals_for_protocol = nw_context_get_globals_for_protocol(v59, v60);
                if (globals_for_protocol)
                {
                  *(globals_for_protocol + 7) = 0;
                  *(globals_for_protocol + 4) = 0;
                  goto LABEL_112;
                }

                v129 = __nwlog_obj();
                *buf = 136446210;
                v175 = "nw_masque_clear_cached_geohash_value";
                v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v129, 16, "%{public}s called with null globals", buf, 12);
                v143[0] = OS_LOG_TYPE_ERROR;
                v173 = 0;
                if (__nwlog_fault(v125, v143, &v173))
                {
                  if (v143[0] == OS_LOG_TYPE_FAULT)
                  {
                    v126 = __nwlog_obj();
                    v127 = v143[0];
                    if (!os_log_type_enabled(v126, v143[0]))
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v175 = "nw_masque_clear_cached_geohash_value";
                    v128 = "%{public}s called with null globals";
                    goto LABEL_319;
                  }

                  if (v173 != 1)
                  {
                    v126 = __nwlog_obj();
                    v127 = v143[0];
                    if (!os_log_type_enabled(v126, v143[0]))
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v175 = "nw_masque_clear_cached_geohash_value";
                    v128 = "%{public}s called with null globals, backtrace limit exceeded";
                    goto LABEL_319;
                  }

                  v135 = __nw_create_backtrace_string();
                  v126 = __nwlog_obj();
                  v127 = v143[0];
                  v136 = os_log_type_enabled(v126, v143[0]);
                  if (!v135)
                  {
                    if (!v136)
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v175 = "nw_masque_clear_cached_geohash_value";
                    v128 = "%{public}s called with null globals, no backtrace";
                    goto LABEL_319;
                  }

                  if (v136)
                  {
                    *buf = 136446466;
                    v175 = "nw_masque_clear_cached_geohash_value";
                    v176 = 2082;
                    v177 = v135;
                    _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null globals, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v135);
                  if (v125)
                  {
LABEL_321:
                    free(v125);
                  }

LABEL_112:
                  if (*(v163 + 24) == 1)
                  {
                    nw_masque_report_error_to_proxy_agent(a1, 1303);
                  }

                  v62 = *(v159 + 6);
                  if (!v62)
                  {
                    goto LABEL_133;
                  }

                  v63 = *(a1 + 312);
                  if (v63)
                  {
                    if (v62 - 0x10000 < 0xFFFF0001 || !*(a1 + 500))
                    {
                      goto LABEL_133;
                    }

                    if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
                    {
                      dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
                    }

                    if (nw_protocol_masque_get_definition(void)::definition)
                    {
                      v64 = os_retain(nw_protocol_masque_get_definition(void)::definition);
                    }

                    else
                    {
                      v64 = 0;
                    }

                    v65 = nw_context_get_globals_for_protocol(v63, v64);
                    if (v65)
                    {
                      if (*v65 && v62 > *v65 && v62 > v65[1])
                      {
                        v65[1] = v62;
                        if ((*(a1 + 505) & 1) == 0)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v66 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136446722;
                            v175 = (a1 + 507);
                            v176 = 2080;
                            v177 = " ";
                            v178 = 1024;
                            *v179 = v62;
                            _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_INFO, "%{public}s%sReporting new epoch value: %u", buf, 0x1Cu);
                          }
                        }

                        nw_masque_report_error_to_proxy_agent(a1, v62 | 0xFF0000);
                      }

                      goto LABEL_133;
                    }

                    v132 = __nwlog_obj();
                    *buf = 136446210;
                    v175 = "nw_masque_handle_received_epoch_value";
                    LODWORD(v139) = 12;
                    v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s called with null globals", buf, v139);
                    v143[0] = OS_LOG_TYPE_ERROR;
                    v173 = 0;
                    if (__nwlog_fault(v114, v143, &v173))
                    {
                      if (v143[0] == OS_LOG_TYPE_FAULT)
                      {
                        v115 = __nwlog_obj();
                        v116 = v143[0];
                        if (!os_log_type_enabled(v115, v143[0]))
                        {
                          goto LABEL_325;
                        }

                        *buf = 136446210;
                        v175 = "nw_masque_handle_received_epoch_value";
                        v117 = "%{public}s called with null globals";
                        goto LABEL_324;
                      }

                      if (v173 != 1)
                      {
                        v115 = __nwlog_obj();
                        v116 = v143[0];
                        if (!os_log_type_enabled(v115, v143[0]))
                        {
                          goto LABEL_325;
                        }

                        *buf = 136446210;
                        v175 = "nw_masque_handle_received_epoch_value";
                        v117 = "%{public}s called with null globals, backtrace limit exceeded";
                        goto LABEL_324;
                      }

                      v137 = __nw_create_backtrace_string();
                      v115 = __nwlog_obj();
                      v116 = v143[0];
                      v138 = os_log_type_enabled(v115, v143[0]);
                      if (v137)
                      {
                        if (v138)
                        {
                          *buf = 136446466;
                          v175 = "nw_masque_handle_received_epoch_value";
                          v176 = 2082;
                          v177 = v137;
                          _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null globals, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v137);
                        if (!v114)
                        {
                          goto LABEL_133;
                        }

LABEL_326:
                        free(v114);
LABEL_133:
                        if ((*v7 & 2) != 0 && !uuid_is_null((a1 + 256)))
                        {
                          v67 = *(a1 + 440);
                          if (v67)
                          {
                            nw_http_connection_metadata_set_cached_token(v67, 0, 0);
                          }

                          if (*(v167 + 24))
                          {
                            v68 = 1001;
                          }

                          else
                          {
                            v68 = 0;
                          }

                          nw_path_report_error_to_agent(*(a1 + 320), (a1 + 256), v68);
                        }

                        v69 = *(a1 + 272);
                        v70 = mach_continuous_time();
                        if (v70 <= 1)
                        {
                          v71 = 1;
                        }

                        else
                        {
                          v71 = v70;
                        }

                        v72 = nw_delta_nanos(v69, v71);
                        v73 = (v72 / 0xF4240);
                        if (v72 > 0xF423FFFFFFFFFLL)
                        {
                          v73 = 0xFFFFFFFFLL;
                        }

                        *(a1 + 280) = v73;
                        if ((*(a1 + 505) & 1) == 0)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v74 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                          {
                            v75 = *(a1 + 296);
                            v76 = v75;
                            if (v75)
                            {
                              logging_description = _nw_endpoint_get_logging_description(v75);
                            }

                            else
                            {
                              logging_description = "<NULL>";
                            }

                            *buf = 136446722;
                            v175 = (a1 + 507);
                            v176 = 2080;
                            v177 = " ";
                            v178 = 2082;
                            *v179 = logging_description;
                            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s%sReceived 200 OK, connected to %{public}s", buf, 0x20u);
                          }
                        }

                        if (*(a1 + 492) && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v122 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            v123 = *(a1 + 492);
                            *buf = 136446978;
                            v175 = "nw_masque_clear_reverse_proxy_state";
                            v176 = 2082;
                            v177 = (a1 + 507);
                            v178 = 2080;
                            *v179 = " ";
                            *&v179[8] = 1024;
                            *&v179[10] = v123;
                            _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sClearing reverse proxy state from %u", buf, 0x26u);
                          }
                        }

                        *(a1 + 492) = 0;
                        v78 = *(a1 - 64);
                        if (v78)
                        {
                          v79 = *(v78 + 24);
                          if (v79)
                          {
                            v80 = *(v79 + 152);
                            if (v80)
                            {
                              v81 = a1 - 96;
                              v82 = *(v78 + 40);
                              v83 = *(a1 - 64);
                              if (v82 == &nw_protocol_ref_counted_handle || v82 == &nw_protocol_ref_counted_additional_handle && (v83 = *(v78 + 64)) != 0)
                              {
                                v85 = *(v83 + 88);
                                v84 = 0;
                                if (v85)
                                {
                                  *(v83 + 88) = v85 + 1;
                                }
                              }

                              else
                              {
                                v84 = 1;
                              }

                              v86 = *(a1 - 56);
                              v87 = a1 - 96;
                              if (v86 == &nw_protocol_ref_counted_handle || v86 == &nw_protocol_ref_counted_additional_handle && (v87 = *(a1 - 32)) != 0)
                              {
                                v88 = *(v87 + 88);
                                if (v88)
                                {
                                  *(v87 + 88) = v88 + 1;
                                }

                                v80(v78, a1 - 96, 5);
                                v89 = *(a1 - 56);
                                if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v81 = *(a1 - 32)) != 0)
                                {
                                  v90 = *(v81 + 88);
                                  if (v90)
                                  {
                                    v91 = v90 - 1;
                                    *(v81 + 88) = v91;
                                    if (!v91)
                                    {
                                      v92 = *(v81 + 64);
                                      if (v92)
                                      {
                                        *(v81 + 64) = 0;
                                        v92[2](v92);
                                        _Block_release(v92);
                                      }

                                      if (*(v81 + 72))
                                      {
                                        v93 = *(v81 + 64);
                                        if (v93)
                                        {
                                          _Block_release(v93);
                                        }
                                      }

                                      free(v81);
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v80(v78, a1 - 96, 5);
                              }

                              if ((v84 & 1) == 0)
                              {
                                v94 = *(v78 + 40);
                                if (v94 == &nw_protocol_ref_counted_handle || v94 == &nw_protocol_ref_counted_additional_handle && (v78 = *(v78 + 64)) != 0)
                                {
                                  v95 = *(v78 + 88);
                                  if (v95)
                                  {
                                    v96 = v95 - 1;
                                    *(v78 + 88) = v96;
                                    if (!v96)
                                    {
                                      v97 = *(v78 + 64);
                                      if (v97)
                                      {
                                        *(v78 + 64) = 0;
                                        v97[2](v97);
                                        _Block_release(v97);
                                      }

                                      if (*(v78 + 72))
                                      {
                                        v98 = *(v78 + 64);
                                        if (v98)
                                        {
                                          _Block_release(v98);
                                        }
                                      }

                                      free(v78);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        nw_masque_mark_connected(a1);
                        goto LABEL_206;
                      }

                      if (v138)
                      {
                        *buf = 136446210;
                        v175 = "nw_masque_handle_received_epoch_value";
                        v117 = "%{public}s called with null globals, no backtrace";
LABEL_324:
                        _os_log_impl(&dword_181A37000, v115, v116, v117, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v113 = __nwlog_obj();
                    *buf = 136446210;
                    v175 = "nw_masque_handle_received_epoch_value";
                    LODWORD(v139) = 12;
                    v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null masque->context", buf, v139);
                    v143[0] = OS_LOG_TYPE_ERROR;
                    v173 = 0;
                    if (!__nwlog_fault(v114, v143, &v173))
                    {
                      goto LABEL_325;
                    }

                    if (v143[0] == OS_LOG_TYPE_FAULT)
                    {
                      v115 = __nwlog_obj();
                      v116 = v143[0];
                      if (!os_log_type_enabled(v115, v143[0]))
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v175 = "nw_masque_handle_received_epoch_value";
                      v117 = "%{public}s called with null masque->context";
                      goto LABEL_324;
                    }

                    if (v173 != 1)
                    {
                      v115 = __nwlog_obj();
                      v116 = v143[0];
                      if (!os_log_type_enabled(v115, v143[0]))
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v175 = "nw_masque_handle_received_epoch_value";
                      v117 = "%{public}s called with null masque->context, backtrace limit exceeded";
                      goto LABEL_324;
                    }

                    v130 = __nw_create_backtrace_string();
                    v115 = __nwlog_obj();
                    v116 = v143[0];
                    v131 = os_log_type_enabled(v115, v143[0]);
                    if (!v130)
                    {
                      if (!v131)
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v175 = "nw_masque_handle_received_epoch_value";
                      v117 = "%{public}s called with null masque->context, no backtrace";
                      goto LABEL_324;
                    }

                    if (v131)
                    {
                      *buf = 136446466;
                      v175 = "nw_masque_handle_received_epoch_value";
                      v176 = 2082;
                      v177 = v130;
                      _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null masque->context, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v130);
                  }

LABEL_325:
                  if (!v114)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_326;
                }
              }

              else
              {
                v124 = __nwlog_obj();
                *buf = 136446210;
                v175 = "nw_masque_clear_cached_geohash_value";
                v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s called with null masque->context", buf, 12);
                v143[0] = OS_LOG_TYPE_ERROR;
                v173 = 0;
                if (!__nwlog_fault(v125, v143, &v173))
                {
                  goto LABEL_320;
                }

                if (v143[0] == OS_LOG_TYPE_FAULT)
                {
                  v126 = __nwlog_obj();
                  v127 = v143[0];
                  if (!os_log_type_enabled(v126, v143[0]))
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v175 = "nw_masque_clear_cached_geohash_value";
                  v128 = "%{public}s called with null masque->context";
LABEL_319:
                  _os_log_impl(&dword_181A37000, v126, v127, v128, buf, 0xCu);
                  goto LABEL_320;
                }

                if (v173 != 1)
                {
                  v126 = __nwlog_obj();
                  v127 = v143[0];
                  if (!os_log_type_enabled(v126, v143[0]))
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v175 = "nw_masque_clear_cached_geohash_value";
                  v128 = "%{public}s called with null masque->context, backtrace limit exceeded";
                  goto LABEL_319;
                }

                v133 = __nw_create_backtrace_string();
                v126 = __nwlog_obj();
                v127 = v143[0];
                v134 = os_log_type_enabled(v126, v143[0]);
                if (!v133)
                {
                  if (!v134)
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v175 = "nw_masque_clear_cached_geohash_value";
                  v128 = "%{public}s called with null masque->context, no backtrace";
                  goto LABEL_319;
                }

                if (v134)
                {
                  *buf = 136446466;
                  v175 = "nw_masque_clear_cached_geohash_value";
                  v176 = 2082;
                  v177 = v133;
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null masque->context, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v133);
              }

LABEL_320:
              if (!v125)
              {
                goto LABEL_112;
              }

              goto LABEL_321;
            }

LABEL_31:
            v170[0] = MEMORY[0x1E69E9820];
            v170[1] = 0x40000000;
            v170[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_154;
            v170[3] = &__block_descriptor_tmp_155;
            v170[4] = a1;
            v23 = v5;
            v24 = v170;
            _nw_http_fields_access_value_by_name(v23, "Capsule-Protocol", v24);

            goto LABEL_32;
          }

          v8 = *v7;
          if (!*(a1 + 591))
          {
            if ((v8 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v53 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v175 = (a1 + 507);
                v176 = 2080;
                v177 = " ";
                _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s%sReceived response without datagram flow ID", buf, 0x16u);
              }
            }

            nw_masque_mark_failed_with_error(a1, 94);
            goto LABEL_207;
          }
        }

        if ((v8 & 0x40000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (!status_code)
      {
        if ((*(a1 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v22 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v175 = "nw_masque_handle_connect_response";
            v176 = 2082;
            v177 = (a1 + 507);
            v178 = 2080;
            *v179 = " ";
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived no response code, ignoring", buf, 0x20u);
          }
        }

        goto LABEL_207;
      }

      *type = 0;
      v167 = type;
      v168 = 0x2000000000;
      v169 = 0;
      v162 = 0;
      v163 = &v162;
      v164 = 0x2000000000;
      v165 = 0;
      v158 = 0;
      v159 = &v158;
      v160 = 0x2000000000;
      LOBYTE(v161) = 0;
      v154 = 0;
      v155 = &v154;
      v156 = 0x2000000000;
      LOBYTE(v157) = 0;
      v150 = 0;
      v151 = &v150;
      v152 = 0x2000000000;
      LOBYTE(v153) = 0;
      *v143 = 0;
      v144 = v143;
      v145 = 0x2000000000;
      v146 = 0;
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 0x40000000;
      v142[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_161;
      v142[3] = &unk_1E6A2FD68;
      v142[4] = type;
      v142[5] = &v154;
      v142[9] = &v158;
      v142[10] = a1;
      v142[6] = v143;
      v142[7] = &v162;
      v142[8] = &v150;
      v16 = v5;
      v17 = v142;
      _nw_http_fields_access_value_by_name(v16, "Proxy-Status", v17);

      if (*(v167 + 24) == 1)
      {
        nw_masque_report_error_to_proxy_agent(a1, 1303);
      }

      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v18 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 296);
          v20 = v19;
          if (v19)
          {
            v21 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v21 = "<NULL>";
          }

          v37 = "";
          if (*(v151 + 24))
          {
            v38 = ", attempt to reverse proxy with certificates";
          }

          else
          {
            v38 = "";
          }

          if (*(v163 + 24))
          {
            v39 = ", unreachable through proxy";
          }

          else
          {
            v39 = "";
          }

          if (*(v159 + 24))
          {
            v40 = ", origin server failed";
          }

          else
          {
            v40 = "";
          }

          if (*(v155 + 24))
          {
            v41 = ", has received status";
          }

          else
          {
            v41 = "";
          }

          v42 = *(v144 + 6);
          *buf = 136448258;
          if (v42)
          {
            v37 = ", has dns failure reason";
          }

          v175 = (a1 + 507);
          v176 = 2080;
          v177 = " ";
          v178 = 1024;
          *v179 = status_code;
          *&v179[4] = 2082;
          *&v179[6] = v21;
          *&v179[14] = 2082;
          *&v179[16] = v38;
          v180 = 2082;
          v181 = v39;
          v182 = 2082;
          v183 = v40;
          v184 = 2082;
          v185 = v41;
          v186 = 2082;
          v187 = v37;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s%sReceived response code %u for %{public}s%{public}s%{public}s%{public}s%{public}s%{public}s", buf, 0x58u);
        }
      }

      if (*(v144 + 6))
      {
        v43 = *(a1 + 296);
        if (v43)
        {
          v44 = v43;
          _nw_endpoint_set_dns_failure_reason();
        }
      }

      v45 = (a1 + 503);
      if (status_code - 400) <= 0x63 && (v151[3])
      {
        if (!nw_http_connection_metadata_get_secondary_certificate_count(*(a1 + 440)) || (nw_masque_setup_reverse_proxy(a1) & 1) == 0)
        {
          if ((*(a1 + 505) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v46 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              v175 = (a1 + 507);
              v176 = 2080;
              v177 = " ";
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s%sCONNECT response indicates that secondary certificates will be sent, waiting", buf, 0x16u);
            }
          }

          *(a1 + 492) = 1;
          v47 = *(a1 + 336);
          if (v47)
          {
            nw_queue_cancel_source(v47);
          }

          v140[0] = MEMORY[0x1E69E9820];
          v140[1] = 0x40000000;
          v140[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_177;
          v140[3] = &__block_descriptor_tmp_178;
          v140[4] = a1;
          v141 = status_code;
          source = nw_queue_context_create_source(0, 2, 3, 0, v140, 0);
          *(a1 + 336) = source;
          v49 = dispatch_time(0x8000000000000000, 10000000000);
          nw_queue_set_timer_values(source, v49, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
          nw_queue_activate_source(*(a1 + 336));
        }

        goto LABEL_205;
      }

      if ((status_code - 500) > 0x63)
      {
        if (status_code == 401)
        {
          if ((v155[3] & 1) == 0 && !uuid_is_null((a1 + 256)))
          {
            v52 = *(a1 + 440);
            if (v52)
            {
              nw_http_connection_metadata_mark_cached_token_failed(v52);
            }

            nw_path_report_error_to_agent(*(a1 + 320), (a1 + 256), 80);
            goto LABEL_203;
          }

          goto LABEL_96;
        }
      }

      else
      {
        if (*(v163 + 24) == 1)
        {
          v50 = a1;
          v51 = 65;
LABEL_204:
          nw_masque_mark_failed_with_error(v50, v51);
LABEL_205:
          _Block_object_dispose(v143, 8);
LABEL_206:
          _Block_object_dispose(&v150, 8);
          _Block_object_dispose(&v154, 8);
          _Block_object_dispose(&v158, 8);
          _Block_object_dispose(&v162, 8);
          _Block_object_dispose(type, 8);
LABEL_207:
          os_release(v5);
          return;
        }

        if (*(v159 + 24) == 1)
        {
          v50 = a1;
          v51 = 64;
          goto LABEL_204;
        }
      }

      if ((status_code - 400) > 0x63)
      {
        if (status_code == 504 || status_code == 502)
        {
          v54 = (*v45 & 4) == 0;
          v55 = 1207;
          v56 = 1107;
        }

        else
        {
          v54 = (*v45 & 4) == 0;
          if ((status_code - 500) > 0x63)
          {
            v55 = 1201;
            v56 = 1101;
          }

          else
          {
            v55 = 1205;
            v56 = 1105;
          }
        }

        goto LABEL_199;
      }

LABEL_96:
      v54 = (*v45 & 4) == 0;
      v55 = 1204;
      v56 = 1104;
LABEL_199:
      if (v54)
      {
        v99 = v56;
      }

      else
      {
        v99 = v55;
      }

      nw_masque_report_error_to_proxy_agent(a1, v99);
LABEL_203:
      v50 = a1;
      v51 = 61;
      goto LABEL_204;
    }

    v106 = __nwlog_obj();
    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v106, 16, "%{public}s called with null response", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v162) = 0;
    if (__nwlog_fault(v101, type, &v162))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v102 = __nwlog_obj();
        v103 = type[0];
        if (!os_log_type_enabled(v102, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v175 = "nw_masque_handle_connect_response";
        v104 = "%{public}s called with null response";
        goto LABEL_296;
      }

      if (v162 != 1)
      {
        v102 = __nwlog_obj();
        v103 = type[0];
        if (!os_log_type_enabled(v102, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v175 = "nw_masque_handle_connect_response";
        v104 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_296;
      }

      v109 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v103 = type[0];
      v112 = os_log_type_enabled(v102, type[0]);
      if (!v109)
      {
        if (!v112)
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v175 = "nw_masque_handle_connect_response";
        v104 = "%{public}s called with null response, no backtrace";
        goto LABEL_296;
      }

      if (v112)
      {
        *buf = 136446466;
        v175 = "nw_masque_handle_connect_response";
        v176 = 2082;
        v177 = v109;
        v111 = "%{public}s called with null response, dumping backtrace:%{public}s";
        goto LABEL_237;
      }

      goto LABEL_238;
    }

LABEL_297:
    if (v101)
    {
      goto LABEL_298;
    }

    return;
  }

  v105 = __nwlog_obj();
  *buf = 136446210;
  v175 = "nw_masque_handle_connect_response";
  v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null nw_protocol_metadata_is_http(metadata)", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v162) = 0;
  if (!__nwlog_fault(v101, type, &v162))
  {
    goto LABEL_297;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v102 = __nwlog_obj();
    v103 = type[0];
    if (!os_log_type_enabled(v102, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v104 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
    goto LABEL_296;
  }

  if (v162 != 1)
  {
    v102 = __nwlog_obj();
    v103 = type[0];
    if (!os_log_type_enabled(v102, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v104 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
    goto LABEL_296;
  }

  v109 = __nw_create_backtrace_string();
  v102 = __nwlog_obj();
  v103 = type[0];
  v110 = os_log_type_enabled(v102, type[0]);
  if (!v109)
  {
    if (!v110)
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v175 = "nw_masque_handle_connect_response";
    v104 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
    goto LABEL_296;
  }

  if (v110)
  {
    *buf = 136446466;
    v175 = "nw_masque_handle_connect_response";
    v176 = 2082;
    v177 = v109;
    v111 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
LABEL_237:
    _os_log_impl(&dword_181A37000, v102, v103, v111, buf, 0x16u);
  }

LABEL_238:
  free(v109);
  if (v101)
  {
LABEL_298:
    free(v101);
  }
}

size_t ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke(size_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = strlen(__s);
    if (result <= 7)
    {
      v4 = *(v3 + 32);
      v5 = *__s;
      v4[591] = v5;
      if (v5)
      {
        v6 = __s[1];
        v4[592] = v6;
        if (v6)
        {
          v7 = __s[2];
          v4[593] = v7;
          if (v7)
          {
            v8 = __s[3];
            v4[594] = v8;
            if (v8)
            {
              v9 = __s[4];
              v4[595] = v9;
              if (v9)
              {
                v10 = __s[5];
                v4[596] = v10;
                if (v10)
                {
                  v11 = __s[6];
                  v4[597] = v11;
                  if (v11)
                  {
                    v4[598] = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_152(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && *a2 == 63 && a2[1] == 49 && !a2[2])
  {
    v2 = *(a1 + 32);
    if (!v2 || (*(v2 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v4 = gprivacy_proxyLogObj;
      v5 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
      v2 = *(a1 + 32);
      if (v5)
      {
        v6 = v2 == 0;
        if (v2)
        {
          v7 = (v2 + 507);
        }

        else
        {
          v7 = "";
        }

        v8 = " ";
        if (v6)
        {
          v8 = "";
        }

        v9 = 136446466;
        v10 = v7;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sServer supports forwarding", &v9, 0x16u);
        v2 = *(a1 + 32);
      }
    }

    *(v2 + 503) |= 0x100000u;
  }
}

uint64_t ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_154(uint64_t result, _BYTE *a2)
{
  if (a2 && *a2 == 63 && a2[1] == 49)
  {
    v2 = (a2[2] == 0) << 19;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 503) = *(*(result + 32) + 503) & 0xFFF7FFFF | v2;
  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_2(void *a1, char *__s1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (__s1)
  {
    *(*(a1[4] + 8) + 24) = strstr(__s1, "invalid geohash") != 0;
    *(*(a1[5] + 8) + 24) = strstr(__s1, "expired routing") != 0;
    v4 = strlen(__s1);
    v5 = a1[8];
    if (v5)
    {
      if (*(v5 + 296))
      {
        v6 = strnstr(__s1, "next-hop=", v4);
        v7 = v6;
        if (v6)
        {
          v8 = ";";
          v9 = 10;
        }

        else
        {
          v6 = strnstr(__s1, "next-hop=", v4);
          if (!v6)
          {
            goto LABEL_38;
          }

          v8 = ";";
          v9 = 9;
          v7 = 0;
        }

        v10 = v7 != 0;
        v11 = &v6[v9];
        v12 = &__s1[v4];
        v13 = strnstr(&v6[v9], v8, v12 - &v6[v9]);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &v12[-v10];
        }

        v15 = v14 - v11;
        if (v14 > v11)
        {
          if (*v11 == 91 || (v23 = strnstr(v11, ":", v14 - v11)) != 0 && !strnstr(v23 + 1, ":", v14 - (v23 + 1)))
          {
            v65 = xmmword_182B0B7C5;
            v66 = unk_182B0B7D5;
            v67 = xmmword_182B0B7E5;
            v68 = unk_182B0B7F5;
            v61 = xmmword_182B0B785;
            v62 = unk_182B0B795;
            v63 = xmmword_182B0B7A5;
            v64 = unk_182B0B7B5;
            v57 = xmmword_182B0B745;
            v58 = unk_182B0B755;
            v59 = xmmword_182B0B765;
            v60 = unk_182B0B775;
            *__s = *"https://";
            *&__s[16] = unk_182B0B715;
            v55 = xmmword_182B0B725;
            v56 = unk_182B0B735;
            v16 = strlen(__s);
            if (v16 + v15 <= 0xFF)
            {
              memcpy(&__s[v16], v11, v15);
              url = _nw_endpoint_create_url(__s);
              if (url)
              {
                v18 = url;
                url_port = _nw_endpoint_get_url_port(v18);

                v20 = v18;
                hostname = _nw_endpoint_get_hostname(v20);

                if (!url_port)
                {
                  url_port = nw_endpoint_get_port(*(v5 + 296));
                }

                host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, url_port);
                os_release(v20);
LABEL_39:
                *(*(a1[6] + 8) + 24) = host_with_numeric_port;
                v32 = a1[8];
                if (v32)
                {
                  if (*(v32 + 296))
                  {
                    v33 = strnstr(__s1, "next-hop-aliases=", v4);
                    if (v33)
                    {
                      v34 = v33 + 18;
                      v35 = strnstr(v33 + 18, "", &__s1[v4] - (v33 + 18));
                      if (v35)
                      {
                        v36 = v35;
                        v37 = 0;
                        do
                        {
                          if (v34 >= v36)
                          {
                            break;
                          }

                          v67 = 0u;
                          v68 = 0u;
                          v65 = 0u;
                          v66 = 0u;
                          v63 = 0u;
                          v64 = 0u;
                          v61 = 0u;
                          v62 = 0u;
                          v59 = 0u;
                          v60 = 0u;
                          v57 = 0u;
                          v58 = 0u;
                          v55 = 0u;
                          v56 = 0u;
                          v38 = v36 - v34;
                          memset(__s, 0, sizeof(__s));
                          v39 = strnstr(v34, ",", v36 - v34);
                          v40 = v39;
                          if (v39)
                          {
                            v38 = v39 - v34;
                          }

                          if (v38 - 1 <= 0xFE)
                          {
                            if (!v37)
                            {
                              v37 = _nw_array_create();
                            }

                            memcpy(__s, v34, v38);
                            port = nw_endpoint_get_port(*(v32 + 296));
                            v42 = nw_endpoint_create_host_with_numeric_port(__s, port);
                            if (v42)
                            {
                              v43 = v42;
                              if (v37)
                              {
                                _nw_array_append(v37, v42);
                              }

                              os_release(v43);
                            }
                          }

                          v34 = v40 + 1;
                        }

                        while (v40);
                        goto LABEL_72;
                      }
                    }
                  }

LABEL_71:
                  v37 = 0;
LABEL_72:
                  *(*(a1[7] + 8) + 24) = v37;
                  return;
                }

                v44 = __nwlog_obj();
                *__s = 136446210;
                *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                LODWORD(v51) = 12;
                v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null masque", __s, v51);
                type = OS_LOG_TYPE_ERROR;
                v52 = 0;
                if (__nwlog_fault(v45, &type, &v52))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v46 = __nwlog_obj();
                    v47 = type;
                    if (!os_log_type_enabled(v46, type))
                    {
                      goto LABEL_69;
                    }

                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v48 = "%{public}s called with null masque";
                    goto LABEL_68;
                  }

                  if (v52 != 1)
                  {
                    v46 = __nwlog_obj();
                    v47 = type;
                    if (!os_log_type_enabled(v46, type))
                    {
                      goto LABEL_69;
                    }

                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v48 = "%{public}s called with null masque, backtrace limit exceeded";
                    goto LABEL_68;
                  }

                  backtrace_string = __nw_create_backtrace_string();
                  v46 = __nwlog_obj();
                  v47 = type;
                  v50 = os_log_type_enabled(v46, type);
                  if (backtrace_string)
                  {
                    if (v50)
                    {
                      *__s = 136446466;
                      *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                      *&__s[12] = 2082;
                      *&__s[14] = backtrace_string;
                      _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null masque, dumping backtrace:%{public}s", __s, 0x16u);
                    }

                    free(backtrace_string);
                    goto LABEL_69;
                  }

                  if (v50)
                  {
                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v48 = "%{public}s called with null masque, no backtrace";
LABEL_68:
                    _os_log_impl(&dword_181A37000, v46, v47, v48, __s, 0xCu);
                  }
                }

LABEL_69:
                if (v45)
                {
                  free(v45);
                }

                goto LABEL_71;
              }
            }
          }

          else if (v15 <= 0xFF)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            memset(__s, 0, sizeof(__s));
            memcpy(__s, v11, v14 - v11);
            v24 = nw_endpoint_get_port(*(v5 + 296));
            host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(__s, v24);
            goto LABEL_39;
          }
        }
      }

LABEL_38:
      host_with_numeric_port = 0;
      goto LABEL_39;
    }

    v25 = __nwlog_obj();
    *__s = 136446210;
    *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null masque", __s, 12);
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v26, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_36;
        }

        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v29 = "%{public}s called with null masque";
        goto LABEL_35;
      }

      if (v52 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_36;
        }

        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v29 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_35;
      }

      v30 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v31 = os_log_type_enabled(v27, type);
      if (v30)
      {
        if (v31)
        {
          *__s = 136446466;
          *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
          *&__s[12] = 2082;
          *&__s[14] = v30;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null masque, dumping backtrace:%{public}s", __s, 0x16u);
        }

        free(v30);
        goto LABEL_36;
      }

      if (v31)
      {
        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v29 = "%{public}s called with null masque, no backtrace";
LABEL_35:
        _os_log_impl(&dword_181A37000, v27, v28, v29, __s, 0xCu);
      }
    }

LABEL_36:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_38;
  }
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_3(uint64_t a1, char *__s)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!__s || strlen(__s) > 6)
  {
    return;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_masque_store_cached_geohash_value";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null masque", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v16, &type, &v29))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null masque";
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v24 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v32 = "nw_masque_store_cached_geohash_value";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_66:
        if (!v16)
        {
          return;
        }

        goto LABEL_67;
      }

      if (!v24)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_65;
  }

  v5 = *(v4 + 312);
  if (!v5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_masque_store_cached_geohash_value";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null masque->context", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v16, &type, &v29))
    {
      goto LABEL_66;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v29 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v32 = "nw_masque_store_cached_geohash_value";
        v19 = "%{public}s called with null masque->context, backtrace limit exceeded";
        goto LABEL_65;
      }

      v25 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v26 = os_log_type_enabled(v17, type);
      if (!v25)
      {
        if (!v26)
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v32 = "nw_masque_store_cached_geohash_value";
        v19 = "%{public}s called with null masque->context, no backtrace";
        goto LABEL_65;
      }

      if (v26)
      {
        *buf = 136446466;
        v32 = "nw_masque_store_cached_geohash_value";
        v33 = 2082;
        v34 = v25;
        v27 = "%{public}s called with null masque->context, dumping backtrace:%{public}s";
LABEL_50:
        _os_log_impl(&dword_181A37000, v17, v18, v27, buf, 0x16u);
      }

LABEL_51:
      free(v25);
      if (!v16)
      {
        return;
      }

LABEL_67:
      free(v16);
      return;
    }

    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_66;
    }

    *buf = 136446210;
    v32 = "nw_masque_store_cached_geohash_value";
    v19 = "%{public}s called with null masque->context";
LABEL_65:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_66;
  }

  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  if (nw_protocol_masque_get_definition(void)::definition)
  {
    v6 = os_retain(nw_protocol_masque_get_definition(void)::definition);
  }

  else
  {
    v6 = 0;
  }

  globals_for_protocol = nw_context_get_globals_for_protocol(v5, v6);
  if (!globals_for_protocol)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_masque_store_cached_geohash_value";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null globals", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v16, &type, &v29))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null globals";
      goto LABEL_65;
    }

    if (v29 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null globals, backtrace limit exceeded";
      goto LABEL_65;
    }

    v25 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v28 = os_log_type_enabled(v17, type);
    if (!v25)
    {
      if (!v28)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_masque_store_cached_geohash_value";
      v19 = "%{public}s called with null globals, no backtrace";
      goto LABEL_65;
    }

    if (v28)
    {
      *buf = 136446466;
      v32 = "nw_masque_store_cached_geohash_value";
      v33 = 2082;
      v34 = v25;
      v27 = "%{public}s called with null globals, dumping backtrace:%{public}s";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v8 = *__s;
  globals_for_protocol[4] = v8;
  v9 = globals_for_protocol + 4;
  if (v8)
  {
    v10 = __s[1];
    globals_for_protocol[5] = v10;
    if (v10)
    {
      v11 = __s[2];
      globals_for_protocol[6] = v11;
      if (v11)
      {
        v12 = __s[3];
        globals_for_protocol[7] = v12;
        if (v12)
        {
          v13 = __s[4];
          globals_for_protocol[8] = v13;
          if (v13)
          {
            v14 = __s[5];
            globals_for_protocol[9] = v14;
            if (v14)
            {
              globals_for_protocol[10] = 0;
            }
          }
        }
      }
    }
  }

  if ((*(v4 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v22 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v32 = "nw_masque_store_cached_geohash_value";
      v33 = 2082;
      v34 = (v4 + 507);
      v35 = 2080;
      v36 = " ";
      v37 = 2082;
      v38 = v9;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sStoring geohash hint %{public}s", buf, 0x2Au);
    }
  }
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_4(uint64_t a1, char *__s)
{
  v19 = *MEMORY[0x1E69E9840];
  *v18 = 0;
  if (__s && strlen(__s) <= 7)
  {
    v18[0] = *__s;
    if (v18[0])
    {
      v18[1] = __s[1];
      if (v18[1])
      {
        v18[2] = __s[2];
        if (v18[2])
        {
          v18[3] = __s[3];
          if (v18[3])
          {
            v18[4] = __s[4];
            if (v18[4])
            {
              v18[5] = __s[5];
              if (v18[5])
              {
                v18[6] = __s[6];
                if (v18[6])
                {
                  v18[7] = 0;
                }
              }
            }
          }
        }
      }
    }

    v4 = atoi(v18);
    v5 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v4;
    if (!v5 || (*(v5 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v6 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v7 = "";
        v8 = *(a1 + 40);
        v9 = v8 == 0;
        if (v8)
        {
          v10 = (v8 + 507);
        }

        else
        {
          v10 = "";
        }

        if (!v9)
        {
          v7 = " ";
        }

        v11 = *(*(*(a1 + 32) + 8) + 24);
        v12 = 136446722;
        v13 = v10;
        v14 = 2080;
        v15 = v7;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s%sReceived epoch value of %d", &v12, 0x1Cu);
      }
    }
  }
}

char *___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_161(char *result, char *__s1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!__s1)
  {
    return result;
  }

  v3 = result;
  *(*(*(result + 4) + 8) + 24) = strstr(__s1, "expired routing") != 0;
  *(*(*(v3 + 5) + 8) + 24) = strstr(__s1, "received-status=") != 0;
  if (!*(v3 + 10))
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_masque_get_dns_failure_reason_from_proxy_status";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null masque", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v18 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v10 = "%{public}s called with null masque";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_masque_get_dns_failure_reason_from_proxy_status";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (!v12)
      {
LABEL_25:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_27;
      }

      *buf = 136446210;
      v18 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v10 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v18 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v10 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_25;
  }

  v4 = strlen(__s1);
  if (!strnstr(__s1, "error=dns_error", v4))
  {
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  if (strnstr(__s1, "info-code=15", v4))
  {
    v5 = 1;
  }

  else if (strnstr(__s1, "info-code=16", v4))
  {
    v5 = 2;
  }

  else if (strnstr(__s1, "info-code=17", v4))
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

LABEL_28:
  *(*(*(v3 + 6) + 8) + 24) = v5;
  v13 = strstr(__s1, "error=dns_error") && !*(*(*(v3 + 6) + 8) + 24) || strstr(__s1, "error=destination_ip_prohibited") || strstr(__s1, "error=destination_ip_unroutable") || strstr(__s1, "error=destination_not_found") || strstr(__s1, "error=destination_unavailable") != 0;
  *(*(*(v3 + 7) + 8) + 24) = v13;
  *(*(*(v3 + 8) + 8) + 24) = strstr(__s1, "error=resource_uses_reverse_proxy") != 0;
  result = strstr(__s1, "error=connection_refused");
  if (result)
  {
    v14 = v3 + 72;
  }

  else
  {
    result = strstr(__s1, "error=connection_timeout");
    if (!result)
    {
      return result;
    }

    result = nw_endpoint_get_type(*(*(v3 + 10) + 296));
    v14 = v3 + 72;
    if (result == 1)
    {
      v14 = v3 + 56;
    }
  }

  *(*(*v14 + 8) + 24) = 1;
  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_177(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v3 = gprivacy_proxyLogObj;
    v4 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    v2 = *(a1 + 32);
    if (v4)
    {
      v5 = (v2 + 507);
      if (!v2)
      {
        v5 = "";
      }

      v6 = *(a1 + 40);
      v8 = 136446722;
      v9 = v5;
      v7 = " ";
      if (!v2)
      {
        v7 = "";
      }

      v10 = 2080;
      v11 = v7;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s%sCONNECT response %u timed out waiting for certificates, failing", &v8, 0x1Cu);
      v2 = *(a1 + 32);
    }
  }

  nw_masque_mark_failed_with_error(v2, 61);
}

uint64_t nw_protocol_masque_listener_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
        v44 = "nw_protocol_masque_listener_get_input_frames";
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (!__nwlog_fault(v12, &type, &v41))
        {
          goto LABEL_37;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v44 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque";
          goto LABEL_35;
        }

        if (v41 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v44 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_35;
        }

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
            v44 = "nw_protocol_masque_listener_get_input_frames";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v22)
        {
          *buf = 136446210;
          v44 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque, no backtrace";
          v23 = v20;
          v24 = v21;
          goto LABEL_36;
        }

LABEL_37:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_39;
      }

      v11 = *a1[1].flow_id;
    }

    if (a2)
    {
      output_handler_context = a2->output_handler_context;
      if (output_handler_context)
      {
        if (output_handler_context[4])
        {
          result = nw_frame_array_fill_from_pending_array(output_handler_context + 4, a6, a4, a5);
        }

        else
        {
          result = nw_protocol_masque_listener_read_input(&v11[1].output_handler, output_handler_context, a6, a3, a4, a5);
        }

        goto LABEL_40;
      }

      if ((BYTE1(v11[9].callbacks) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v18 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_40;
        }

        *buf = 136446466;
        v44 = &v11[9].callbacks + 3;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s%sNo valid node found", buf, 0x16u);
      }

LABEL_39:
      result = 0;
LABEL_40:
      if ((v9 & 1) == 0)
      {
        v25 = v6->handle;
        if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
        {
          v26 = v6[1].callbacks;
          if (v26)
          {
            v27 = (v26 - 1);
            v6[1].callbacks = v27;
            if (!v27)
            {
              v28 = result;
              v29 = *v6[1].flow_id;
              if (v29)
              {
                *v6[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (v6[1].flow_id[8])
              {
                v30 = *v6[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(v6);
              return v28;
            }
          }
        }
      }

      return result;
    }

    v36 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_masque_listener_get_input_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v12, &type, &v41))
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
      v44 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol";
    }

    else if (v41 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v40 = os_log_type_enabled(v13, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v44 = "nw_protocol_masque_listener_get_input_frames";
          v45 = 2082;
          v46 = v39;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        goto LABEL_37;
      }

      if (!v40)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol, no backtrace";
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
      v44 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_35:
    v23 = v13;
    v24 = v14;
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v15, buf, 0xCu);
    goto LABEL_37;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  v44 = "nw_protocol_masque_listener_get_input_frames";
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v32, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_masque_listener_get_input_frames";
        v35 = "%{public}s called with null protocol";
LABEL_79:
        _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v38 = os_log_type_enabled(v33, type);
      if (v37)
      {
        if (v38)
        {
          *buf = 136446466;
          v44 = "nw_protocol_masque_listener_get_input_frames";
          v45 = 2082;
          v46 = v37;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_80;
      }

      if (v38)
      {
        *buf = 136446210;
        v44 = "nw_protocol_masque_listener_get_input_frames";
        v35 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_79;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_masque_listener_get_input_frames";
        v35 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_79;
      }
    }
  }

LABEL_80:
  if (v32)
  {
    free(v32);
  }

  return 0;
}