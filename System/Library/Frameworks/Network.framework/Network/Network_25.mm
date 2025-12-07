uint64_t nw_socket_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v4 = *a1[1].flow_id) != 0)
    {
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v5 = 1;
    }

    v7 = a1->handle;
    v8 = v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle;
    v9 = v8;
    if (v8)
    {
      tqh_first = a2->tqh_first;
      if (a2->tqh_first)
      {
        *(tqh_first + 5) = type;
        tqh_last = a2->tqh_last;
        *type = tqh_first;
        v42 = tqh_last;
        a2->tqh_first = 0;
        a2->tqh_last = &a2->tqh_first;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_68307;
        v44 = &__block_descriptor_tmp_27_68308;
        v45 = 1;
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
            v15 = &v42;
          }

          *v15 = v14;
          *v14 = v13;
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      goto LABEL_38;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_socket_finalize_output_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v16, type, &v40))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v20 = "%{public}s called with null socket_handler";
LABEL_34:
        v25 = v18;
        v26 = v19;
LABEL_35:
        _os_log_impl(&dword_181A37000, v25, v26, v20, buf, 0xCu);
        goto LABEL_36;
      }

      if (v40 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v20 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type[0];
      v24 = os_log_type_enabled(gLogObj, type[0]);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v20 = "%{public}s called with null socket_handler, no backtrace";
        v25 = v22;
        v26 = v23;
        goto LABEL_35;
      }
    }

LABEL_36:
    if (v16)
    {
      free(v16);
    }

LABEL_38:
    if ((v5 & 1) == 0)
    {
      v27 = v2->handle;
      if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
      {
        v28 = v2[1].callbacks;
        if (v28)
        {
          v29 = (v28 - 1);
          v2[1].callbacks = v29;
          if (!v29)
          {
            v30 = *v2[1].flow_id;
            if (v30)
            {
              *v2[1].flow_id = 0;
              v30[2](v30);
              _Block_release(v30);
            }

            if (v2[1].flow_id[8])
            {
              v31 = *v2[1].flow_id;
              if (v31)
              {
                _Block_release(v31);
              }
            }

            free(v2);
          }
        }
      }
    }

    return v9;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_finalize_output_frames";
  v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v34, type, &v40))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v37 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type[0];
      v39 = os_log_type_enabled(v35, type[0]);
      if (v38)
      {
        if (v39)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_67;
      }

      if (v39)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v37 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_finalize_output_frames";
        v37 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v34)
  {
    free(v34);
  }

  return 0;
}

void nw_socket_frame_output_finalizer(uint64_t result, nw_protocol *a2, char *a3)
{
  v4 = a3 + 240;
  v6 = *(result + 16);
  v7 = *(result + 24);
  v5 = (result + 16);
  if (v6)
  {
    v4 = (v6 + 24);
  }

  *v4 = v7;
  *v7 = v6;
  *v5 = 0;
  *(result + 24) = 0;
  if (a2)
  {
    v8 = *(a3 + 32);
    *(result + 24) = v8;
    *v8 = result;
    *(a3 + 32) = v5;
    nw_socket_service_writes(a3);
  }

  else
  {
    v9 = *(a3 + 28);
    *(result + 24) = v9;
    *v9 = result;
    *(a3 + 28) = v5;
  }

  if ((*(a3 + 317) & 8) != 0)
  {

    nw_socket_output_finished((a3 - 96), a2);
  }
}

uint64_t ___ZL24nw_socket_service_writesP9nw_socket_block_invoke(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
  size[0] = 0;
  v4 = nw_frame_uses_external_data(a2);
  memset(&v135, 0, sizeof(v135));
  v135.msg_flags = 128;
  if (!v4)
  {
    v9 = nw_frame_unclaimed_bytes(a2, size);
    v10 = size[0];
    if (size[0])
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    if (!v9)
    {
      v10 = 0;
    }

    *&size[1] = v12;
    v137 = v10;
    v135.msg_iov = &size[1];
    v135.msg_iovlen = 1;
    buffer = nw_frame_get_buffer(a2, 0);
LABEL_16:
    v13 = 0;
    if (a2)
    {
LABEL_17:
      v14 = *(a2 + 186) & 3 | (4 * *(a2 + 184));
      goto LABEL_18;
    }

LABEL_39:
    v26 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "__nw_frame_get_ecn_flag";
    LODWORD(v132) = 12;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null frame", applier, v132);
    LOBYTE(v143) = 16;
    LOBYTE(v140) = 0;
    if (!__nwlog_fault(v27, &v143, &v140))
    {
      goto LABEL_225;
    }

    if (v143 == 17)
    {
      v28 = __nwlog_obj();
      v29 = v143;
      if (!os_log_type_enabled(v28, v143))
      {
        goto LABEL_225;
      }

      *applier = 136446210;
      *&applier[4] = "__nw_frame_get_ecn_flag";
      v30 = "%{public}s called with null frame";
    }

    else if (v140 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = v143;
      v103 = os_log_type_enabled(v28, v143);
      if (backtrace_string)
      {
        if (v103)
        {
          *applier = 136446466;
          *&applier[4] = "__nw_frame_get_ecn_flag";
          *&applier[12] = 2082;
          *&applier[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null frame, dumping backtrace:%{public}s", applier, 0x16u);
        }

        free(backtrace_string);
LABEL_225:
        if (v27)
        {
          free(v27);
        }

        v119 = __nwlog_obj();
        *applier = 136446210;
        *&applier[4] = "__nw_frame_get_dscp_value";
        LODWORD(v133) = 12;
        v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v119, 16, "%{public}s called with null frame", applier, v133);
        LOBYTE(v143) = 16;
        LOBYTE(v140) = 0;
        if (!__nwlog_fault(v120, &v143, &v140))
        {
          goto LABEL_246;
        }

        if (v143 == 17)
        {
          v121 = __nwlog_obj();
          v122 = v143;
          if (os_log_type_enabled(v121, v143))
          {
            *applier = 136446210;
            *&applier[4] = "__nw_frame_get_dscp_value";
            v123 = "%{public}s called with null frame";
LABEL_245:
            _os_log_impl(&dword_181A37000, v121, v122, v123, applier, 0xCu);
          }
        }

        else if (v140 == 1)
        {
          v124 = __nw_create_backtrace_string();
          v121 = __nwlog_obj();
          v122 = v143;
          v125 = os_log_type_enabled(v121, v143);
          if (v124)
          {
            if (v125)
            {
              *applier = 136446466;
              *&applier[4] = "__nw_frame_get_dscp_value";
              *&applier[12] = 2082;
              *&applier[14] = v124;
              _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null frame, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(v124);
            goto LABEL_246;
          }

          if (v125)
          {
            *applier = 136446210;
            *&applier[4] = "__nw_frame_get_dscp_value";
            v123 = "%{public}s called with null frame, no backtrace";
            goto LABEL_245;
          }
        }

        else
        {
          v121 = __nwlog_obj();
          v122 = v143;
          if (os_log_type_enabled(v121, v143))
          {
            *applier = 136446210;
            *&applier[4] = "__nw_frame_get_dscp_value";
            v123 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_245;
          }
        }

LABEL_246:
        if (v120)
        {
          free(v120);
        }

        v14 = 0;
LABEL_18:
        v15 = *(a1 + 40);
        if (*(v15 + 316) == v14)
        {
          goto LABEL_46;
        }

        LODWORD(v143) = v14;
        v16 = *(v15 + 320);
        if (v16 == 30)
        {
          if (setsockopt(*(v15 + 188), 41, 36, &v143, 4u) < 0)
          {
            v31 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_46;
            }

            *applier = 136446466;
            *&applier[4] = "nw_socket_service_writes_block_invoke";
            *&applier[12] = 1024;
            *&applier[14] = v31;
            v19 = "%{public}s setsockopt IPV6_TCLASS %{darwin.errno}d";
LABEL_45:
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, v19, applier, 0x12u);
LABEL_46:
            if (a2)
            {
              v32 = *(a2 + 176);
              if (v32 > 3145999)
              {
                if (v32 <= 3670319)
                {
                  if (v32 == 3146000)
                  {
                    v33 = 5;
                    goto LABEL_68;
                  }

                  if (v32 == 3670272)
                  {
                    v33 = 3;
                    goto LABEL_68;
                  }

                  goto LABEL_69;
                }

                if (v32 == 3670320)
                {
                  v33 = 2;
                  goto LABEL_68;
                }

                if (v32 == 4194688)
                {
                  v33 = 4;
                  goto LABEL_68;
                }

                if (v32 != 4718992)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                if (v32 <= 1572879)
                {
                  v33 = 1;
                  if (v32 == 524432 || v32 == 1048704)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_69;
                }

                if (v32 != 1572880)
                {
                  if (v32 == 2097184)
                  {
                    v33 = 7;
                    goto LABEL_68;
                  }

                  if (v32 == 2621728)
                  {
                    v33 = 6;
LABEL_68:
                    v143 = 0xFFFF00000010;
                    v135.msg_controllen += 16;
                    LODWORD(v144) = 4374;
                    HIDWORD(v144) = v33;
                    v135.msg_control = &v143;
                  }

LABEL_69:
                  v23 = sendmsg(*(*(a1 + 40) + 188), &v135, 0);
                  if ((v23 & 0x8000000000000000) == 0)
                  {
                    v35 = *(a1 + 40);
                    if ((*(v35 + 319) & 4) != 0)
                    {
                      nw_socket_internal_error(v35);
                      *(*(a1 + 40) + 319) &= ~4u;
                    }
                  }

                  if (v13)
                  {
                    free(v13);
                  }

                  if ((v23 & 0x8000000000000000) == 0)
                  {
                    v36 = *(a1 + 40);
                    v37 = *(v36 + 317);
                    if (size[0] > v23)
                    {
                      if ((*(v36 + 317) & 0x100) != 0)
                      {
                        v140 = 0uLL;
                        if (v36)
                        {
                          v45 = (v36 - 96);
                        }

                        else
                        {
                          v45 = 0;
                        }

                        nw_protocol_get_flow_id(v45, &v140);
                        v46 = *(a1 + 40);
                        if (!v46 || (*(v46 + 317) & 0x80) == 0)
                        {
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v47 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                          {
                            v48 = *(a1 + 40);
                            v49 = (v48 + 324);
                            if (!v48)
                            {
                              v49 = "";
                            }

                            v50 = *(v48 + 8);
                            v51 = v23 - 1;
                            if (!v23)
                            {
                              v51 = 0;
                            }

                            *applier = 136447490;
                            *&applier[4] = "nw_socket_service_writes_block_invoke";
                            *&applier[12] = 2082;
                            *&applier[14] = v49;
                            *&applier[22] = 1024;
                            *&applier[24] = v23;
                            *&applier[28] = 1024;
                            *&applier[30] = size[0];
                            *&applier[34] = 2048;
                            *&applier[36] = v50;
                            *&applier[44] = 2048;
                            *&applier[46] = v50 + v51;
                            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Wrote %u/%u bytes, waiting for writable event (overall bytes %llu -> %llu)", applier, 0x36u);
                          }
                        }

                        pthread_once(&nw_mpkl_log_init(void)::init_once, nw_mpkl_log_init_once);
                        v52 = gMpklLogObj;
                        if (os_log_type_enabled(gMpklLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          v53 = *(a1 + 40);
                          v54 = *(v53 + 8);
                          v55 = v23 - 1;
                          if (!v23)
                          {
                            v55 = 0;
                          }

                          v56 = *(v53 + 321);
                          *applier = 67110658;
                          *&applier[4] = 150;
                          *&applier[8] = 1024;
                          *&applier[10] = 100;
                          *&applier[14] = 1042;
                          *&applier[16] = 16;
                          *&applier[20] = 2098;
                          *&applier[22] = &v140;
                          *&applier[30] = 2048;
                          *&applier[32] = v54;
                          *&applier[40] = 2048;
                          *&applier[42] = v54 + v55;
                          *&applier[50] = 1024;
                          *&applier[52] = v56;
                          _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEFAULT, "32 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, curStart: %llu, curEnd: %llu, logSeqn: %hhu}", applier, 0x38u);
                        }

                        v36 = *(a1 + 40);
                        ++*(v36 + 321);
                        goto LABEL_115;
                      }

                      if ((v37 & 0x80) != 0 || gLogDatapath != 1)
                      {
LABEL_115:
                        *(v36 + 8) += v23;
                        if (*(v36 + 192) == 1)
                        {
                          ++*(v36 + 24);
                        }

                        nw_frame_claim(a2, v34, v23, 0);
                        *(*(a1 + 40) + 319) |= 0x20u;
                        *(*(*(a1 + 32) + 8) + 24) = size[0] - v23;
                        return 0;
                      }

                      if (__nwlog_connection_log::onceToken[0] == -1)
                      {
LABEL_80:
                        v38 = gconnectionLogObj;
                        v39 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
                        v36 = *(a1 + 40);
                        if (v39)
                        {
                          v40 = (v36 + 324);
                          *&applier[4] = "nw_socket_service_writes_block_invoke";
                          *applier = 136446978;
                          if (!v36)
                          {
                            v40 = "";
                          }

                          *&applier[12] = 2082;
                          *&applier[14] = v40;
                          *&applier[22] = 1024;
                          *&applier[24] = v23;
                          *&applier[28] = 1024;
                          *&applier[30] = size[0];
                          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Wrote %u/%u bytes, waiting for writable event", applier, 0x22u);
                          v36 = *(a1 + 40);
                        }

                        goto LABEL_115;
                      }

LABEL_264:
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      goto LABEL_80;
                    }

                    if ((*(v36 + 317) & 0x100) != 0)
                    {
                      v140 = 0uLL;
                      if (v36)
                      {
                        v57 = (v36 - 96);
                      }

                      else
                      {
                        v57 = 0;
                      }

                      nw_protocol_get_flow_id(v57, &v140);
                      v58 = *(a1 + 40);
                      if (!v58 || (*(v58 + 317) & 0x80) == 0)
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v59 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          v60 = *(a1 + 40);
                          v61 = (v60 + 324);
                          if (!v60)
                          {
                            v61 = "";
                          }

                          v62 = *(v60 + 8);
                          v63 = v23 - 1;
                          if (!v23)
                          {
                            v63 = 0;
                          }

                          *applier = 136447234;
                          *&applier[4] = "nw_socket_service_writes_block_invoke";
                          *&applier[12] = 2082;
                          *&applier[14] = v61;
                          *&applier[22] = 1024;
                          *&applier[24] = size[0];
                          *&applier[28] = 2048;
                          *&applier[30] = v62;
                          *&applier[38] = 2048;
                          *&applier[40] = v62 + v63;
                          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Wrote %u bytes (overall bytes %llu -> %llu)", applier, 0x30u);
                        }
                      }

                      pthread_once(&nw_mpkl_log_init(void)::init_once, nw_mpkl_log_init_once);
                      v64 = gMpklLogObj;
                      if (os_log_type_enabled(gMpklLogObj, OS_LOG_TYPE_DEFAULT))
                      {
                        v65 = *(a1 + 40);
                        v66 = *(v65 + 8);
                        v67 = v23 - 1;
                        if (!v23)
                        {
                          v67 = 0;
                        }

                        v68 = *(v65 + 321);
                        *applier = 67110658;
                        *&applier[4] = 150;
                        *&applier[8] = 1024;
                        *&applier[10] = 100;
                        *&applier[14] = 1042;
                        *&applier[16] = 16;
                        *&applier[20] = 2098;
                        *&applier[22] = &v140;
                        *&applier[30] = 2048;
                        *&applier[32] = v66;
                        *&applier[40] = 2048;
                        *&applier[42] = v66 + v67;
                        *&applier[50] = 1024;
                        *&applier[52] = v68;
                        _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEFAULT, "32 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, curStart: %llu, curEnd: %llu, logSeqn: %hhu}", applier, 0x38u);
                      }

                      v36 = *(a1 + 40);
                      ++*(v36 + 321);
                    }

                    else if ((v37 & 0x80) == 0 && gLogDatapath == 1)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v42 = gconnectionLogObj;
                      v43 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
                      v36 = *(a1 + 40);
                      if (v43)
                      {
                        v44 = (v36 + 324);
                        *&applier[4] = "nw_socket_service_writes_block_invoke";
                        *applier = 136446722;
                        if (!v36)
                        {
                          v44 = "";
                        }

                        *&applier[12] = 2082;
                        *&applier[14] = v44;
                        *&applier[22] = 1024;
                        *&applier[24] = size[0];
                        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Wrote %u bytes", applier, 0x1Cu);
                        v36 = *(a1 + 40);
                      }
                    }

                    *(v36 + 8) += v23;
                    if (*(v36 + 192) == 1)
                    {
                      ++*(v36 + 24);
                    }

                    if ((*(v36 + 319) & 0x20) != 0)
                    {
                      *(*(*(a1 + 32) + 8) + 24) = 0;
                      nw_socket_set_send_low_water_mark(v36, 1u);
                      *(*(a1 + 40) + 319) &= ~0x20u;
                    }

                    if (_nw_signposts_once != -1)
                    {
                      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
                    }

                    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
                    {
                      kdebug_trace();
                      if (v4)
                      {
                        goto LABEL_145;
                      }
                    }

                    else if (v4)
                    {
                      goto LABEL_145;
                    }

                    if (buffer)
                    {
                      free(buffer);
                    }

                    goto LABEL_206;
                  }

                  v41 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (v41 == 32)
                  {
                    v77 = *(a1 + 40);
                    if (v77 && (*(v77 + 317) & 0x80) != 0)
                    {
                      goto LABEL_171;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v78 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_171;
                    }

                    v79 = *(a1 + 40);
                    v80 = (v79 + 324);
                    if (!v79)
                    {
                      v80 = "";
                    }

                    v81 = *(v79 + 188);
                    *applier = 136446978;
                    *&applier[4] = "nw_socket_service_writes_block_invoke";
                    *&applier[12] = 2082;
                    *&applier[14] = v80;
                    *&applier[22] = 1024;
                    *&applier[24] = v81;
                    *&applier[28] = 1024;
                    *&applier[30] = size[0];
                    v82 = "%{public}s %{public}s sendmsg(fd %d, %u bytes): socket has been closed";
                    v83 = v78;
                    v84 = OS_LOG_TYPE_INFO;
                    v85 = 34;
                    goto LABEL_170;
                  }

                  if (v41 != 35)
                  {
                    if (v41 == 55)
                    {
                      nw_socket_internal_link_state(*(a1 + 40), 1);
                      *(*(*(a1 + 32) + 8) + 24) = 1;
                      return 0;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v86 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
LABEL_171:
                      *(*(a1 + 40) + 319) |= 4u;
                      nw_socket_internal_error(*(a1 + 40));
                      return 0;
                    }

                    v87 = *(a1 + 40);
                    v88 = *(v87 + 188);
                    if (v87)
                    {
                      v89 = (v87 + 324);
                    }

                    else
                    {
                      v89 = "";
                    }

                    *applier = 136447234;
                    *&applier[4] = "nw_socket_service_writes_block_invoke";
                    *&applier[12] = 2082;
                    *&applier[14] = v89;
                    *&applier[22] = 1024;
                    *&applier[24] = v88;
                    *&applier[28] = 1024;
                    *&applier[30] = size[0];
                    *&applier[34] = 1024;
                    *&applier[36] = v41;
                    v82 = "%{public}s %{public}s sendmsg(fd %d, %u bytes) %{darwin.errno}d";
                    v83 = v86;
                    v84 = OS_LOG_TYPE_ERROR;
                    v85 = 40;
LABEL_170:
                    _os_log_impl(&dword_181A37000, v83, v84, v82, applier, v85);
                    goto LABEL_171;
                  }

                  v69 = *(*(a1 + 40) + 317);
                  if ((v69 & 0x100) != 0)
                  {
                    if ((v69 & 0x80) != 0)
                    {
                      goto LABEL_180;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v90 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_180;
                    }

                    v91 = *(a1 + 40);
                    v92 = (v91 + 324);
                    if (!v91)
                    {
                      v92 = "";
                    }

                    v93 = *(v91 + 8);
                    *applier = 136446978;
                    *&applier[4] = "nw_socket_service_writes_block_invoke";
                    *&applier[12] = 2082;
                    *&applier[14] = v92;
                    *&applier[22] = 1024;
                    *&applier[24] = size[0];
                    *&applier[28] = 2048;
                    *&applier[30] = v93;
                    v73 = "%{public}s %{public}s Wrote 0/%u bytes, waiting for writable event (overall bytes still %llu)";
                    v74 = v90;
                    v75 = OS_LOG_TYPE_DEFAULT;
                    v76 = 38;
                  }

                  else
                  {
                    if ((v69 & 0x80) != 0 || gLogDatapath != 1)
                    {
                      goto LABEL_180;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v70 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_180;
                    }

                    v71 = *(a1 + 40);
                    v72 = (v71 + 324);
                    if (!v71)
                    {
                      v72 = "";
                    }

                    *applier = 136446722;
                    *&applier[4] = "nw_socket_service_writes_block_invoke";
                    *&applier[12] = 2082;
                    *&applier[14] = v72;
                    *&applier[22] = 1024;
                    *&applier[24] = size[0];
                    v73 = "%{public}s %{public}s Wrote 0/%u bytes, waiting for writable event";
                    v74 = v70;
                    v75 = OS_LOG_TYPE_DEBUG;
                    v76 = 28;
                  }

                  _os_log_impl(&dword_181A37000, v74, v75, v73, applier, v76);
LABEL_180:
                  *(*(*(a1 + 32) + 8) + 24) = 0;
                  if (v135.msg_iovlen >= 1)
                  {
                    v94 = 0;
                    p_iov_len = &v135.msg_iov->iov_len;
                    do
                    {
                      v96 = *p_iov_len;
                      p_iov_len += 2;
                      *(*(*(a1 + 32) + 8) + 24) += v96;
                      ++v94;
                    }

                    while (v94 < v135.msg_iovlen);
                  }

                  if (*(*(*(a1 + 32) + 8) + 24))
                  {
                    *(*(a1 + 40) + 319) |= 0x20u;
                  }

                  return 0;
                }
              }

              v33 = 8;
              goto LABEL_68;
            }

            v97 = __nwlog_obj();
            *applier = 136446210;
            *&applier[4] = "__nw_frame_get_network_service_type";
            LODWORD(v132) = 12;
            v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null frame", applier, v132);
            LOBYTE(v140) = 16;
            LOBYTE(v134) = 0;
            if (__nwlog_fault(v98, &v140, &v134))
            {
              if (v140 == 17)
              {
                v99 = __nwlog_obj();
                v100 = v140;
                if (!os_log_type_enabled(v99, v140))
                {
                  goto LABEL_241;
                }

                *applier = 136446210;
                *&applier[4] = "__nw_frame_get_network_service_type";
                v101 = "%{public}s called with null frame";
                goto LABEL_240;
              }

              if (v134 != 1)
              {
                v99 = __nwlog_obj();
                v100 = v140;
                if (!os_log_type_enabled(v99, v140))
                {
                  goto LABEL_241;
                }

                *applier = 136446210;
                *&applier[4] = "__nw_frame_get_network_service_type";
                v101 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_240;
              }

              v104 = __nw_create_backtrace_string();
              v99 = __nwlog_obj();
              v100 = v140;
              v105 = os_log_type_enabled(v99, v140);
              if (v104)
              {
                if (v105)
                {
                  *applier = 136446466;
                  *&applier[4] = "__nw_frame_get_network_service_type";
                  *&applier[12] = 2082;
                  *&applier[14] = v104;
                  _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null frame, dumping backtrace:%{public}s", applier, 0x16u);
                }

                free(v104);
                goto LABEL_241;
              }

              if (v105)
              {
                *applier = 136446210;
                *&applier[4] = "__nw_frame_get_network_service_type";
                v101 = "%{public}s called with null frame, no backtrace";
LABEL_240:
                _os_log_impl(&dword_181A37000, v99, v100, v101, applier, 0xCu);
              }
            }

LABEL_241:
            if (v98)
            {
              free(v98);
            }

            goto LABEL_69;
          }
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_46;
          }

          if (setsockopt(*(v15 + 188), 0, 3, &v143, 4u) < 0)
          {
            v17 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_46;
            }

            *applier = 136446466;
            *&applier[4] = "nw_socket_service_writes_block_invoke";
            *&applier[12] = 1024;
            *&applier[14] = v17;
            v19 = "%{public}s setsockopt IP_TOS %{darwin.errno}d";
            goto LABEL_45;
          }
        }

        *(*(a1 + 40) + 316) = v14;
        goto LABEL_46;
      }

      if (!v103)
      {
        goto LABEL_225;
      }

      *applier = 136446210;
      *&applier[4] = "__nw_frame_get_ecn_flag";
      v30 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = v143;
      if (!os_log_type_enabled(v28, v143))
      {
        goto LABEL_225;
      }

      *applier = 136446210;
      *&applier[4] = "__nw_frame_get_ecn_flag";
      v30 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, applier, 0xCu);
    goto LABEL_225;
  }

  v134 = 0;
  external_data = nw_frame_get_external_data(a2, &v134, size);
  if (!external_data || !size[0])
  {
    v13 = 0;
    *&size[1] = 0;
    v137 = 0;
    goto LABEL_38;
  }

  v6 = external_data;
  v7 = nw_dispatch_data_to_iovec(external_data, v134, size[0], &size[1], 10);
  if (!v7)
  {
    v20 = size[0];
    if (!size[0])
    {
      v23 = 0;
      v116 = __nwlog_obj();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *applier = 136446210;
      *&applier[4] = "nw_socket_service_writes_block_invoke";
      v118 = _os_log_send_and_compose_impl(v117, 0, 0, 0, &dword_181A37000, v116, 16, "%{public}s strict_malloc called with size 0", applier, 12);
      if (__nwlog_should_abort(v118))
      {
        goto LABEL_263;
      }

      free(v118);
      v20 = 0;
    }

    v13 = malloc_type_malloc(v20, 0x6516FBFAuLL);
    if (v13)
    {
LABEL_34:
      v24 = *(a1 + 40);
      if ((!v24 || (*(v24 + 317) & 0x80) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v129 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v130 = *(a1 + 40);
          if (v130)
          {
            v131 = (v130 + 324);
          }

          else
          {
            v131 = "";
          }

          *applier = 136446466;
          *&applier[4] = "nw_socket_service_writes_block_invoke";
          *&applier[12] = 2082;
          *&applier[14] = v131;
          _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Dispatch data too fragmented, making a copy", applier, 0x16u);
        }
      }

      *&size[1] = v13;
      v143 = 0;
      v144 = &v143;
      v145 = 0x2000000000;
      v146 = 0;
      *&v140 = 0;
      *(&v140 + 1) = &v140;
      v141 = 0x2000000000;
      v142 = v134;
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_from_offset_block_invoke;
      *&applier[24] = &unk_1E6A34370;
      *&applier[32] = &v140;
      *&applier[40] = &v143;
      *&applier[48] = size[0];
      v139 = v13;
      dispatch_data_apply(v6, applier);
      v25 = v144[3];
      _Block_object_dispose(&v140, 8);
      _Block_object_dispose(&v143, 8);
      v137 = v25;
LABEL_38:
      buffer = 0;
      v135.msg_iov = &size[1];
      v135.msg_iovlen = 1;
      if (a2)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    *applier = 136446210;
    *&applier[4] = "nw_socket_service_writes_block_invoke";
    LODWORD(v132) = 12;
    v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s strict allocator failed", applier, v132);
    if (!__nwlog_should_abort(v23))
    {
      free(v23);
      goto LABEL_34;
    }

LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v135.msg_iov = &size[1];
  v135.msg_iovlen = v7;
  if (v7 >= 1)
  {
    buffer = 0;
    goto LABEL_16;
  }

LABEL_145:
  nw_frame_set_external_data(a2, 0, 0);
LABEL_206:
  v106 = *(a2 + 186);
  nw_frame_reset(a2, 0, 0, 0, 0);
  v108 = (*(a1 + 40) + 256);
  v109 = (a2 + 16);
  v110 = *(a2 + 16);
  v111 = *(a2 + 24);
  if (v110)
  {
    v108 = (v110 + 24);
  }

  *v108 = v111;
  *v111 = v110;
  *(a2 + 24) = 0;
  *v109 = 0;
  v112 = *(a1 + 40);
  v113 = *(v112 + 224);
  *(a2 + 24) = v113;
  *v113 = a2;
  *(v112 + 224) = v109;
  if ((v106 & 0x80000000) == 0)
  {
    return 1;
  }

  if ((*(v112 + 317) & 0x80) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v126 = gconnectionLogObj;
    v127 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    v112 = *(a1 + 40);
    if (v127)
    {
      if (v112)
      {
        v128 = (v112 + 324);
      }

      else
      {
        v128 = "";
      }

      *applier = 136446466;
      *&applier[4] = "nw_socket_service_writes_block_invoke";
      *&applier[12] = 2082;
      *&applier[14] = v128;
      _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling output finished because frame indicated connection is complete", applier, 0x16u);
      v112 = *(a1 + 40);
    }
  }

  if (v112)
  {
    v115 = (v112 - 96);
  }

  else
  {
    v115 = 0;
  }

  nw_socket_output_finished(v115, v107);
  return 0;
}

BOOL nw_socket_service_writes(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v10 = ___ZL24nw_socket_service_writesP9nw_socket_block_invoke;
  v11 = &unk_1E6A39878;
  v12 = &v14;
  v13 = a1;
  v2 = *(a1 + 248);
  do
  {
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 16);
    v4 = (v10)(v9);
    v2 = v3;
  }

  while ((v4 & 1) != 0);
  v5 = *(v15 + 6);
  v6 = (a1 + 317);
  v7 = *(a1 + 317);
  if (v5)
  {
    if ((*(a1 + 317) & 0x800) == 0)
    {
      *v6 = v7 | 0x800;
      nw_queue_resume_source(*(a1 + 136));
      v7 = *v6;
    }

    if ((v7 & 0x8000) == 0)
    {
      nw_socket_set_send_low_water_mark(a1, *(v15 + 6));
    }
  }

  else if ((*(a1 + 317) & 0x800) != 0)
  {
    *v6 = v7 & 0xF7FF;
    nw_queue_suspend_source(*(a1 + 136));
  }

  _Block_object_dispose(&v14, 8);
  return v5 == 0;
}

void http2_transport_cache_output_frame(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v15 = "http2_transport_cache_output_frame";
      v16 = 2082;
      v17 = a1 + 205;
      v18 = 2048;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s caching output frame %p", buf, 0x20u);
    }
  }

  if (http2_transport_output_frame_context_reset(a2, 0, 0))
  {
    v13 = 0;
    buffer = nw_frame_get_buffer(a2, &v13);
    if (gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447234;
        v15 = "http2_transport_cache_output_frame";
        v16 = 2082;
        v17 = a1 + 205;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = buffer;
        v22 = 1024;
        v23 = v13;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s resetting output frame %p to buffer %p, length %u", buf, 0x30u);
      }
    }

    nw_frame_reset(a2, buffer, v13, nw_protocol_http2_transport_frame_output_finalizer, 0);
    nw_frame_array_prepend((a1 + 176), 0, a2);
    v6 = (a1 + 196);
    ++*(a1 + 196);
    if (gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      v6 = (a1 + 196);
      if (v11)
      {
        *buf = 136446722;
        v15 = "http2_transport_cache_output_frame";
        v16 = 2082;
        v17 = a1 + 205;
        v18 = 1024;
        LODWORD(v19) = v13;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s reset output frame of length %u, eligible for reuse", buf, 0x1Cu);
        v6 = (a1 + 196);
      }
    }

    http2_transport_purge_frame_cache_if_necessary((a1 + 176), v6, v5);
  }

  else
  {
    if (gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v15 = "http2_transport_cache_output_frame";
        v16 = 2082;
        v17 = a1 + 205;
        v18 = 2048;
        v19 = a2;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ERROR: unable to clear metadata for output frame %p, freeing", buf, 0x20u);
      }
    }

    v7 = nw_frame_get_buffer(a2, 0);
    if (v7)
    {
      free(v7);
    }

    nw_frame_reset(a2, 0, 0, 0, 0);
    if (a2)
    {
      os_release(a2);
    }
  }
}

uint64_t on_frame_send_callback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v29 = a3;
    v30 = a2;
    v31 = __nwlog_obj();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    a2 = v30;
    a3 = v29;
    if (v32)
    {
      v33 = *(v30 + 12);
      v34 = *(v30 + 2);
      v35 = *v30;
      *buf = 136446978;
      v67 = "on_frame_send_callback";
      v68 = 1024;
      *v69 = v33;
      *&v69[4] = 1024;
      *&v69[6] = v34;
      *v70 = 2048;
      *&v70[2] = v35;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s called for frame type %u on stream %d length (no header) %zu", buf, 0x22u);
      a2 = v30;
      a3 = v29;
    }
  }

  v3 = *(a2 + 12);
  if (v3 == 8)
  {
    if (gLogDatapath == 1)
    {
      v36 = a3;
      v37 = a2;
      v38 = __nwlog_obj();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
      a2 = v37;
      a3 = v36;
      if (v39)
      {
        v40 = *(v37 + 2);
        v41 = *(v37 + 4);
        *buf = 136446722;
        v67 = "on_frame_send_callback";
        v68 = 1024;
        *v69 = v40;
        *&v69[4] = 1024;
        *&v69[6] = v41;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s sending window update frame for stream %d, window increment %d", buf, 0x18u);
        a2 = v37;
        a3 = v36;
      }
    }

    v3 = *(a2 + 12);
  }

  if (v3)
  {
    return 0;
  }

  v5 = *(a2 + 2);
  if (!v5)
  {
    return 0;
  }

  if (!a3)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v67 = "on_frame_send_callback";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v65 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v11, type, &v65))
    {
      goto LABEL_41;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v67 = "on_frame_send_callback";
      v14 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v65 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = type[0];
      v45 = os_log_type_enabled(v43, type[0]);
      if (backtrace_string)
      {
        if (!v45)
        {
          goto LABEL_24;
        }

        *buf = 136446466;
        v67 = "on_frame_send_callback";
        v68 = 2082;
        *v69 = backtrace_string;
        v17 = "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s";
        v18 = v43;
        v19 = v44;
        v20 = 22;
        goto LABEL_23;
      }

      if (!v45)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v67 = "on_frame_send_callback";
      v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v67 = "on_frame_send_callback";
      v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    v26 = v43;
    v27 = v44;
    v28 = 12;
    goto LABEL_40;
  }

  v6 = a3;
  if (*(a3 + 120))
  {
    *type = 0;
    stream_from_id = nw_http2_transport_get_stream_from_id(a3, v5, type);
    if (stream_from_id)
    {
      v8 = stream_from_id;
      v9 = *type;
      if (*type)
      {
        if (*(stream_from_id + 16))
        {
          nw_http2_transport_drain_next_frame_for_stream(v6, *type, stream_from_id, 0);
          return 0;
        }

        v23 = v6;
        if ((*(stream_from_id + 36) & 4) != 0)
        {
          if (gLogDatapath)
          {
            v59 = __nwlog_obj();
            v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG);
            v23 = v6;
            if (v60)
            {
              *buf = 136446466;
              v67 = "on_frame_send_callback";
              v68 = 2082;
              *v69 = v6 + 205;
              _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending deferred end stream", buf, 0x16u);
              v23 = v6;
            }
          }

          nw_http2_transport_send_end_stream(v23, v8);
          return 0;
        }

        if (!gLogDatapath)
        {
          goto LABEL_99;
        }

        v46 = __nwlog_obj();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
        v9 = *type;
        if (v47)
        {
          v48 = *(v8 + 32);
          *buf = 136446978;
          v67 = "on_frame_send_callback";
          v68 = 2082;
          *v69 = v6 + 205;
          *&v69[8] = 2048;
          *v70 = *type;
          *&v70[8] = 1024;
          v71 = v48;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no more pending output frames, delivering output available to protocol %p for stream %d", buf, 0x26u);
          v9 = *type;
        }

        v23 = v6;
        if (v9)
        {
LABEL_99:
          v24 = *(v9 + 24);
          if (v24)
          {
            v25 = *(v24 + 72);
            if (v25)
            {
              v25(v9, v23);
              return 0;
            }
          }
        }

        v49 = __nwlog_obj();
        v50 = "invalid";
        if (*type && *(*type + 16))
        {
          v50 = *(*type + 16);
        }

        *buf = 136446466;
        v67 = "on_frame_send_callback";
        v68 = 2082;
        *v69 = v50;
        v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s protocol %{public}s has invalid output_available callback", buf, 22);
        v65 = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (__nwlog_fault(v51, &v65, &v63))
        {
          if (v65 == OS_LOG_TYPE_FAULT)
          {
            v52 = __nwlog_obj();
            v53 = v65;
            if (!os_log_type_enabled(v52, v65))
            {
              goto LABEL_95;
            }

            v54 = "invalid";
            if (*type && *(*type + 16))
            {
              v54 = *(*type + 16);
            }

            *buf = 136446466;
            v67 = "on_frame_send_callback";
            v68 = 2082;
            *v69 = v54;
            v55 = "%{public}s protocol %{public}s has invalid output_available callback";
            goto LABEL_94;
          }

          if (v63 != 1)
          {
            v52 = __nwlog_obj();
            v53 = v65;
            if (!os_log_type_enabled(v52, v65))
            {
              goto LABEL_95;
            }

            v61 = "invalid";
            if (*type && *(*type + 16))
            {
              v61 = *(*type + 16);
            }

            *buf = 136446466;
            v67 = "on_frame_send_callback";
            v68 = 2082;
            *v69 = v61;
            v55 = "%{public}s protocol %{public}s has invalid output_available callback, backtrace limit exceeded";
            goto LABEL_94;
          }

          v56 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = v65;
          v57 = os_log_type_enabled(v52, v65);
          if (v56)
          {
            if (v57)
            {
              v58 = "invalid";
              if (*type && *(*type + 16))
              {
                v58 = *(*type + 16);
              }

              *buf = 136446722;
              v67 = "on_frame_send_callback";
              v68 = 2082;
              *v69 = v58;
              *&v69[8] = 2082;
              *v70 = v56;
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s protocol %{public}s has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v56);
            goto LABEL_95;
          }

          if (v57)
          {
            v62 = "invalid";
            if (*type && *(*type + 16))
            {
              v62 = *(*type + 16);
            }

            *buf = 136446466;
            v67 = "on_frame_send_callback";
            v68 = 2082;
            *v69 = v62;
            v55 = "%{public}s protocol %{public}s has invalid output_available callback, no backtrace";
LABEL_94:
            _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x16u);
          }
        }

LABEL_95:
        if (v51)
        {
          free(v51);
        }

        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v22 = *(v8 + 32);
        *buf = 136446978;
        v67 = "on_frame_send_callback";
        v68 = 2082;
        *v69 = v6 + 205;
        *&v69[8] = 2048;
        *v70 = v8;
        *&v70[8] = 1024;
        v71 = v22;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s stream (%pm %d) did not have protocol extra", buf, 0x26u);
      }
    }

    return 4294966775;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = v6 + 205;
  *buf = 136446466;
  v67 = "on_frame_send_callback";
  v68 = 2082;
  *v69 = v6 + 205;
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s id based hash table has not yet been created, failing connection", buf, 22);
  type[0] = OS_LOG_TYPE_ERROR;
  v65 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v11, type, &v65))
  {
    goto LABEL_41;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type[0];
    if (os_log_type_enabled(gLogObj, type[0]))
    {
      *buf = 136446466;
      v67 = "on_frame_send_callback";
      v68 = 2082;
      *v69 = v10;
      v14 = "%{public}s %{public}s id based hash table has not yet been created, failing connection";
LABEL_39:
      v26 = v12;
      v27 = v13;
      v28 = 22;
LABEL_40:
      _os_log_impl(&dword_181A37000, v26, v27, v14, buf, v28);
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  if (v65 == OS_LOG_TYPE_INFO)
  {
    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type[0];
    v16 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446466;
        v67 = "on_frame_send_callback";
        v68 = 2082;
        *v69 = v10;
        v14 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (!v16)
    {
LABEL_24:
      free(backtrace_string);
      goto LABEL_41;
    }

    *buf = 136446722;
    v67 = "on_frame_send_callback";
    v68 = 2082;
    *v69 = v10;
    *&v69[8] = 2082;
    *v70 = backtrace_string;
    v17 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, dumping backtrace:%{public}s";
    v18 = v12;
    v19 = v13;
    v20 = 32;
LABEL_23:
    _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
    goto LABEL_24;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v13 = type[0];
  if (os_log_type_enabled(gLogObj, type[0]))
  {
    *buf = 136446466;
    v67 = "on_frame_send_callback";
    v68 = 2082;
    *v69 = v10;
    v14 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, backtrace limit exceeded";
    goto LABEL_39;
  }

LABEL_41:
  if (v11)
  {
    free(v11);
  }

  return 4294966394;
}

void nw_endpoint_handler_report_connection_idle(void *a1, int a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_endpoint_handler_report_connection_idle";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (__nwlog_fault(v22, &type, &v67))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v70 = "nw_endpoint_handler_report_connection_idle";
          _os_log_impl(&dword_181A37000, v23, v50, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_71;
      }

      if (v67 != 1)
      {
        v23 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v70 = "nw_endpoint_handler_report_connection_idle";
          _os_log_impl(&dword_181A37000, v23, v61, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_71;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v59 = type;
      v60 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v60)
        {
          *buf = 136446210;
          v70 = "nw_endpoint_handler_report_connection_idle";
          _os_log_impl(&dword_181A37000, v23, v59, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_71;
      }

      if (v60)
      {
        *buf = 136446466;
        v70 = "nw_endpoint_handler_report_connection_idle";
        v71 = 2082;
        v72 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v59, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_72:
    if (!v22)
    {
      goto LABEL_74;
    }

LABEL_73:
    free(v22);
    goto LABEL_74;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = v5;
    v9 = *(v8 + 284);

    if ((v9 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v8))
      {
LABEL_57:
        v46 = *(v7 + 51);
        buf[0] = a2;
        if (v46)
        {
          v47 = *(v46 + 24);
          if (v47)
          {
            v48 = *(v47 + 160);
            if (v48)
            {
              v48();
            }
          }
        }

        goto LABEL_74;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v8);
        v64 = nw_endpoint_handler_dry_run_string(v8);
        v66 = nw_endpoint_handler_copy_endpoint(v8);
        logging_description = nw_endpoint_get_logging_description(v66);
        v53 = nw_endpoint_handler_state_string(v8);
        v54 = nw_endpoint_handler_mode_string(v8);
        v55 = nw_endpoint_handler_copy_current_path(v8);
        v56 = v55;
        *buf = 136448002;
        v70 = "nw_endpoint_handler_report_connection_idle";
        v57 = "not ";
        v72 = id_string;
        v71 = 2082;
        if (a2)
        {
          v57 = "";
        }

        v73 = 2082;
        v74 = v64;
        v75 = 2082;
        v76 = logging_description;
        v77 = 2082;
        v78 = v53;
        v79 = 2082;
        v80 = v54;
        v81 = 2114;
        v82 = v55;
        v83 = 2082;
        v84 = v57;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reporting connection %{public}sidle to protocols", buf, 0x52u);
      }

LABEL_56:

      goto LABEL_57;
    }

    v10 = v8;
    v11 = *(v8 + 284);

    if ((v11 & 0x40) != 0)
    {
      goto LABEL_57;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    v13 = v10;

    v14 = v13;
    v15 = *(v8 + 284);

    if (v15)
    {
      v16 = "dry-run ";
    }

    else
    {
      v16 = "";
    }

    v17 = nw_endpoint_handler_copy_endpoint(v14);
    v18 = v17;
    if (v17)
    {
      v19 = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      v19 = "<NULL>";
    }

    v63 = v13 + 184;

    v32 = v14;
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

    v62 = v35;

    v36 = v33;
    v37 = v36;
    v38 = v5->mode;
    v65 = v7;
    v39 = v4;
    if (v38 > 2)
    {
      switch(v38)
      {
        case 3:
          v40 = v16;
          v41 = "proxy";
          goto LABEL_53;
        case 4:
          v40 = v16;
          v41 = "fallback";
          goto LABEL_53;
        case 5:
          v40 = v16;
          v41 = "transform";
          goto LABEL_53;
      }
    }

    else
    {
      switch(v38)
      {
        case 0:
          v40 = v16;
          v41 = "path";
          goto LABEL_53;
        case 1:
          v40 = v16;
          v41 = "resolver";
          goto LABEL_53;
        case 2:
          v40 = v16;
          v41 = nw_endpoint_flow_mode_string(v36[33]);
LABEL_53:

          v43 = v37;
          os_unfair_lock_lock(v43 + 28);
          v44 = v43[8];
          os_unfair_lock_unlock(v43 + 28);

          v70 = "nw_endpoint_handler_report_connection_idle";
          v45 = "not ";
          *buf = 136448002;
          if (a2)
          {
            v45 = "";
          }

          v71 = 2082;
          v72 = v63;
          v73 = 2082;
          v74 = v40;
          v75 = 2082;
          v76 = v19;
          v77 = 2082;
          v78 = v62;
          v79 = 2082;
          v80 = v41;
          v81 = 2114;
          v82 = v44;
          v83 = 2082;
          v84 = v45;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reporting connection %{public}sidle to protocols", buf, 0x52u);

          v4 = v39;
          v7 = v65;

          goto LABEL_56;
      }
    }

    v40 = v16;
    v41 = "unknown-mode";
    goto LABEL_53;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (mode > 5)
  {
    v21 = "unknown-mode";
  }

  else
  {
    v21 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v70 = "nw_endpoint_handler_report_connection_idle";
  v71 = 2082;
  v72 = v21;
  v73 = 2082;
  v74 = "flow";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (!__nwlog_fault(v22, &type, &v67))
  {
    goto LABEL_72;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    if (os_log_type_enabled(v23, type))
    {
      if (mode > 5)
      {
        v25 = "unknown-mode";
      }

      else
      {
        v25 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v70 = "nw_endpoint_handler_report_connection_idle";
      v71 = 2082;
      v72 = v25;
      v73 = 2082;
      v74 = "flow";
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_71:

    goto LABEL_72;
  }

  if (v67 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v30 = type;
    if (os_log_type_enabled(v23, type))
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
      v70 = "nw_endpoint_handler_report_connection_idle";
      v71 = 2082;
      v72 = v31;
      v73 = 2082;
      v74 = "flow";
      _os_log_impl(&dword_181A37000, v23, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_71;
  }

  v26 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  v27 = type;
  v28 = os_log_type_enabled(v23, type);
  if (!v26)
  {
    if (v28)
    {
      if (mode > 5)
      {
        v42 = "unknown-mode";
      }

      else
      {
        v42 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v70 = "nw_endpoint_handler_report_connection_idle";
      v71 = 2082;
      v72 = v42;
      v73 = 2082;
      v74 = "flow";
      _os_log_impl(&dword_181A37000, v23, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_71;
  }

  if (v28)
  {
    if (mode > 5)
    {
      v29 = "unknown-mode";
    }

    else
    {
      v29 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v70 = "nw_endpoint_handler_report_connection_idle";
    v71 = 2082;
    v72 = v29;
    v73 = 2082;
    v74 = "flow";
    v75 = 2082;
    v76 = v26;
    _os_log_impl(&dword_181A37000, v23, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v26);
  if (v22)
  {
    goto LABEL_73;
  }

LABEL_74:
}

void nw_flow_passthrough_notify(NSObject *a1, nw_protocol *a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v293 = *MEMORY[0x1E69E9840];
  isa = a1[5].isa;
  v11 = isa[20];
  if (v11)
  {
    v266 = v11;
    v12 = v11;
    mode = v12->mode;

    if (mode != 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
        v276 = "nw_flow_passthrough_notify";
        v277 = 2082;
        v278 = v17;
        v279 = 2082;
        v280 = "flow";
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_184;
    }

    v14 = nw_endpoint_handler_copy_flow(v12);
    v15 = v12;
    state = v15->state;

    v265 = v15;
    v252 = a2;
    v253 = a5;
    if (state == 5)
    {
      if (a3 <= 21)
      {
        if (a3 <= 14)
        {
          if (a3 == 7)
          {
            goto LABEL_184;
          }

LABEL_76:
          if (a3 == 13)
          {
LABEL_77:
            v56 = a1[4].isa;
            if (!v56)
            {
              goto LABEL_184;
            }

LABEL_181:
            callbacks = v56->callbacks;
            if (callbacks)
            {
              notify = callbacks->notify;
              if (notify)
              {
                notify();
              }
            }

            goto LABEL_184;
          }

          goto LABEL_180;
        }

        goto LABEL_55;
      }

      if (a3 <= 24)
      {
        if (a3 != 22)
        {
          if (a3 != 23)
          {
            v257 = a4;
            goto LABEL_62;
          }

          goto LABEL_102;
        }

        goto LABEL_88;
      }

      if (a3 != 25)
      {
        if (a3 != 28)
        {
          v257 = a4;
LABEL_81:
          if (a3 != 29)
          {
            goto LABEL_180;
          }

          v57 = a1[6].isa;
          if (v57)
          {
            v58 = v57->callbacks;
            if (v58)
            {
              v59 = v58->notify;
              if (v59)
              {
                v59();
              }
            }
          }

          v263 = v14;
          v60 = v257;
          v61 = isa[23];
          v267[0] = MEMORY[0x1E69E9820];
          v267[1] = 3221225472;
          v267[2] = ___ZL26nw_flow_passthrough_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_94;
          v267[3] = &unk_1E6A3D760;
          v268 = v265;
          v269 = v60;
          v62 = v60;
          nw_queue_context_async(v61, v267);

LABEL_101:
          v14 = v263;
          goto LABEL_184;
        }

LABEL_107:
        if (a4 && v253 == 16)
        {
          *a4 = *(v14 + 1080);
          goto LABEL_184;
        }

        if (nw_endpoint_handler_get_logging_disabled(v265))
        {
          goto LABEL_184;
        }

        v262 = v14;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v82 = gconnectionLogObj;
        id_string = nw_endpoint_handler_get_id_string(v265);
        v84 = nw_endpoint_handler_dry_run_string(v265);
        v85 = nw_endpoint_handler_copy_endpoint(v265);
        logging_description = nw_endpoint_get_logging_description(v85);
        v87 = nw_endpoint_handler_state_string(v265);
        v88 = nw_endpoint_handler_mode_string(v265);
        v89 = nw_endpoint_handler_copy_current_path(v265);
        *buf = 136448002;
        v276 = "nw_flow_passthrough_notify";
        v277 = 2082;
        v278 = id_string;
        v279 = 2082;
        v280 = v84;
        v281 = 2082;
        v282 = logging_description;
        v283 = 2082;
        v284 = v87;
        v285 = 2082;
        v286 = v88;
        v287 = 2114;
        v288 = v89;
        v289 = 2080;
        v290 = "fill_connection_uuid";
        v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 82);

        v274 = OS_LOG_TYPE_ERROR;
        v273 = 0;
        if (__nwlog_fault(v90, &v274, &v273))
        {
          if (v274 == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            v92 = v274;
            if (os_log_type_enabled(v91, v274))
            {
              v93 = nw_endpoint_handler_get_id_string(v265);
              v94 = nw_endpoint_handler_dry_run_string(v265);
              v95 = nw_endpoint_handler_copy_endpoint(v265);
              v96 = nw_endpoint_get_logging_description(v95);
              v97 = nw_endpoint_handler_state_string(v265);
              v98 = nw_endpoint_handler_mode_string(v265);
              v99 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136448002;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v93;
              v279 = 2082;
              v280 = v94;
              v281 = 2082;
              v282 = v96;
              v283 = 2082;
              v284 = v97;
              v285 = 2082;
              v286 = v98;
              v287 = 2114;
              v288 = v99;
              v289 = 2080;
              v290 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v91, v92, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 0x52u);
            }

            goto LABEL_227;
          }

          if (v273 != 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            v183 = v274;
            if (os_log_type_enabled(v91, v274))
            {
              v184 = nw_endpoint_handler_get_id_string(v265);
              v185 = nw_endpoint_handler_dry_run_string(v265);
              v186 = nw_endpoint_handler_copy_endpoint(v265);
              v187 = nw_endpoint_get_logging_description(v186);
              v188 = nw_endpoint_handler_state_string(v265);
              v189 = nw_endpoint_handler_mode_string(v265);
              v190 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136448002;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v184;
              v279 = 2082;
              v280 = v185;
              v281 = 2082;
              v282 = v187;
              v283 = 2082;
              v284 = v188;
              v285 = 2082;
              v286 = v189;
              v287 = 2114;
              v288 = v190;
              v289 = 2080;
              v290 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v91, v183, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, backtrace limit exceeded", buf, 0x52u);
            }

            goto LABEL_227;
          }

          backtrace_string = __nw_create_backtrace_string();
          if (!backtrace_string)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            v207 = v274;
            if (os_log_type_enabled(v91, v274))
            {
              v208 = nw_endpoint_handler_get_id_string(v265);
              v209 = nw_endpoint_handler_dry_run_string(v265);
              v210 = nw_endpoint_handler_copy_endpoint(v265);
              v211 = nw_endpoint_get_logging_description(v210);
              v212 = nw_endpoint_handler_state_string(v265);
              v213 = nw_endpoint_handler_mode_string(v265);
              v214 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136448002;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v208;
              v279 = 2082;
              v280 = v209;
              v281 = 2082;
              v282 = v211;
              v283 = 2082;
              v284 = v212;
              v285 = 2082;
              v286 = v213;
              v287 = 2114;
              v288 = v214;
              v289 = 2080;
              v290 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v91, v207, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, no backtrace", buf, 0x52u);
            }

            goto LABEL_227;
          }

          v149 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v150 = gconnectionLogObj;
          v151 = v274;
          if (os_log_type_enabled(v150, v274))
          {
            v152 = nw_endpoint_handler_get_id_string(v265);
            v259 = nw_endpoint_handler_dry_run_string(v265);
            v153 = v152;
            v255 = nw_endpoint_handler_copy_endpoint(v265);
            v154 = nw_endpoint_get_logging_description(v255);
            v155 = nw_endpoint_handler_state_string(v265);
            v156 = nw_endpoint_handler_mode_string(v265);
            v157 = nw_endpoint_handler_copy_current_path(v265);
            *buf = 136448258;
            v276 = "nw_flow_passthrough_notify";
            v277 = 2082;
            v278 = v153;
            v279 = 2082;
            v280 = v259;
            v281 = 2082;
            v282 = v154;
            v283 = 2082;
            v284 = v155;
            v285 = 2082;
            v286 = v156;
            v287 = 2114;
            v288 = v157;
            v289 = 2080;
            v290 = "fill_connection_uuid";
            v291 = 2082;
            v292 = v149;
            _os_log_impl(&dword_181A37000, v150, v151, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
          }

          goto LABEL_172;
        }

LABEL_228:
        v14 = v262;
        if (v90)
        {
          free(v90);
        }

        goto LABEL_184;
      }

      goto LABEL_100;
    }

    v257 = a4;
    v18 = v15;
    v19 = *(v18 + 284);

    v261 = v14;
    if ((v19 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v18))
      {
LABEL_53:
        if (a3 <= 21)
        {
          if (a3 <= 14)
          {
            if (a3 == 7)
            {
              goto LABEL_184;
            }

            if (a3 != 12)
            {
              goto LABEL_76;
            }

            v134 = *(v14 + 34);
            if ((v134 & 0x80000000) == 0)
            {
              *(v14 + 34) = v134 | 0x80;
              v18->event = 524291;
              nw_endpoint_handler_report(v18, 0, &v18->event.domain, 0);
            }

LABEL_180:
            v56 = a1[6].isa;
            if (v56)
            {
              goto LABEL_181;
            }

            goto LABEL_184;
          }

LABEL_55:
          if ((a3 - 15) < 2)
          {
            goto LABEL_77;
          }

          if (a3 == 19)
          {
            nw_endpoint_flow_rebuild_stack(v265, v252);
            goto LABEL_184;
          }

          if (a3 == 21)
          {
LABEL_184:

            v11 = v266;
            goto LABEL_185;
          }

          goto LABEL_180;
        }

        if (a3 <= 24)
        {
          a4 = v257;
          if (a3 != 22)
          {
            if (a3 != 23)
            {
LABEL_62:
              v262 = v14;
              if (v253 == 8)
              {
                v43 = v257;
                minimize_logging = nw_endpoint_handler_get_minimize_logging(v265);
                logging_disabled = nw_endpoint_handler_get_logging_disabled(v265);
                v250 = v43;
                if (minimize_logging)
                {
                  if (logging_disabled)
                  {
LABEL_70:
                    if (v43)
                    {
                      v54 = nw_path_flow_registration_copy_path(v43);
                      os_unfair_lock_lock(v14 + 220);
                      objc_storeStrong(v14 + 2, v54);
                      v55 = v262;
                      if ((*(v262 + 33) & 4) != 0)
                      {
                        objc_storeStrong(v262 + 1, v54);
                        v55 = v262;
                      }

                      os_unfair_lock_unlock(v55 + 220);
                    }

                    else
                    {
                      if (nw_endpoint_handler_get_logging_disabled(v265))
                      {
LABEL_179:

                        v14 = v262;
                        goto LABEL_180;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v54 = gconnectionLogObj;
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        v166 = nw_endpoint_handler_get_id_string(v265);
                        v167 = nw_endpoint_handler_dry_run_string(v265);
                        v246 = nw_endpoint_handler_copy_endpoint(v265);
                        v168 = nw_endpoint_get_logging_description(v246);
                        v169 = nw_endpoint_handler_state_string(v265);
                        v170 = nw_endpoint_handler_mode_string(v265);
                        v171 = nw_endpoint_handler_copy_current_path(v265);
                        *buf = 136447746;
                        v276 = "nw_flow_passthrough_notify";
                        v277 = 2082;
                        v278 = v166;
                        v279 = 2082;
                        v280 = v167;
                        v281 = 2082;
                        v282 = v168;
                        v283 = 2082;
                        v284 = v169;
                        v285 = 2082;
                        v286 = v170;
                        v287 = 2114;
                        v288 = v171;
                        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no flow_registration received for migration", buf, 0x48u);
                      }
                    }

                    v43 = v250;
                    goto LABEL_179;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v46 = gconnectionLogObj;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                  {
                    v248 = nw_endpoint_handler_get_id_string(v265);
                    v238 = nw_endpoint_handler_dry_run_string(v265);
                    v239 = nw_endpoint_handler_copy_endpoint(v265);
                    v240 = nw_endpoint_get_logging_description(v239);
                    v241 = nw_endpoint_handler_state_string(v265);
                    v242 = nw_endpoint_handler_mode_string(v265);
                    v243 = nw_endpoint_handler_copy_current_path(v265);
                    *buf = 136448002;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v248;
                    v279 = 2082;
                    v280 = v238;
                    v281 = 2082;
                    v282 = v240;
                    v283 = 2082;
                    v284 = v241;
                    v285 = 2082;
                    v286 = v242;
                    v287 = 2114;
                    v288 = v243;
                    v289 = 2112;
                    v290 = v250;
                    _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received migration flow registration %@", buf, 0x52u);
                  }
                }

                else
                {
                  if (logging_disabled)
                  {
                    goto LABEL_70;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v46 = gconnectionLogObj;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                  {
                    v47 = nw_endpoint_handler_get_id_string(v265);
                    v48 = nw_endpoint_handler_dry_run_string(v265);
                    v49 = nw_endpoint_handler_copy_endpoint(v265);
                    v50 = nw_endpoint_get_logging_description(v49);
                    v51 = nw_endpoint_handler_state_string(v265);
                    v52 = nw_endpoint_handler_mode_string(v265);
                    v53 = nw_endpoint_handler_copy_current_path(v265);
                    *buf = 136448002;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v47;
                    v279 = 2082;
                    v280 = v48;
                    v281 = 2082;
                    v282 = v50;
                    v283 = 2082;
                    v284 = v51;
                    v285 = 2082;
                    v286 = v52;
                    v287 = 2114;
                    v288 = v53;
                    v289 = 2112;
                    v290 = v250;
                    _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received migration flow registration %@", buf, 0x52u);
                  }
                }

                v14 = v262;
                v43 = v250;
                goto LABEL_70;
              }

              if (nw_endpoint_handler_get_logging_disabled(v265))
              {
                goto LABEL_184;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v118 = gconnectionLogObj;
              v119 = nw_endpoint_handler_get_id_string(v265);
              v120 = nw_endpoint_handler_dry_run_string(v265);
              v121 = nw_endpoint_handler_copy_endpoint(v265);
              v122 = nw_endpoint_get_logging_description(v121);
              v123 = nw_endpoint_handler_state_string(v265);
              v124 = nw_endpoint_handler_mode_string(v265);
              v125 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136448002;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v119;
              v279 = 2082;
              v280 = v120;
              v281 = 2082;
              v282 = v122;
              v283 = 2082;
              v284 = v123;
              v285 = 2082;
              v286 = v124;
              v287 = 2114;
              v288 = v125;
              v289 = 2080;
              v290 = "migration";
              v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v118, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 82);

              v274 = OS_LOG_TYPE_ERROR;
              v273 = 0;
              if (__nwlog_fault(v90, &v274, &v273))
              {
                if (v274 == OS_LOG_TYPE_FAULT)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v91 = gconnectionLogObj;
                  v126 = v274;
                  if (os_log_type_enabled(v91, v274))
                  {
                    v127 = nw_endpoint_handler_get_id_string(v265);
                    v128 = nw_endpoint_handler_dry_run_string(v265);
                    v129 = nw_endpoint_handler_copy_endpoint(v265);
                    v130 = nw_endpoint_get_logging_description(v129);
                    v131 = nw_endpoint_handler_state_string(v265);
                    v132 = nw_endpoint_handler_mode_string(v265);
                    v133 = nw_endpoint_handler_copy_current_path(v265);
                    *buf = 136448002;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v127;
                    v279 = 2082;
                    v280 = v128;
                    v281 = 2082;
                    v282 = v130;
                    v283 = 2082;
                    v284 = v131;
                    v285 = 2082;
                    v286 = v132;
                    v287 = 2114;
                    v288 = v133;
                    v289 = 2080;
                    v290 = "migration";
                    _os_log_impl(&dword_181A37000, v91, v126, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 0x52u);
                  }

LABEL_227:

                  goto LABEL_228;
                }

                if (v273 != 1)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v91 = gconnectionLogObj;
                  v191 = v274;
                  if (os_log_type_enabled(v91, v274))
                  {
                    v192 = nw_endpoint_handler_get_id_string(v265);
                    v193 = nw_endpoint_handler_dry_run_string(v265);
                    v194 = nw_endpoint_handler_copy_endpoint(v265);
                    v195 = nw_endpoint_get_logging_description(v194);
                    v196 = nw_endpoint_handler_state_string(v265);
                    v197 = nw_endpoint_handler_mode_string(v265);
                    v198 = nw_endpoint_handler_copy_current_path(v265);
                    *buf = 136448002;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v192;
                    v279 = 2082;
                    v280 = v193;
                    v281 = 2082;
                    v282 = v195;
                    v283 = 2082;
                    v284 = v196;
                    v285 = 2082;
                    v286 = v197;
                    v287 = 2114;
                    v288 = v198;
                    v289 = 2080;
                    v290 = "migration";
                    _os_log_impl(&dword_181A37000, v91, v191, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, backtrace limit exceeded", buf, 0x52u);
                  }

                  goto LABEL_227;
                }

                v158 = __nw_create_backtrace_string();
                if (!v158)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v91 = gconnectionLogObj;
                  v215 = v274;
                  if (os_log_type_enabled(v91, v274))
                  {
                    v216 = nw_endpoint_handler_get_id_string(v265);
                    v217 = nw_endpoint_handler_dry_run_string(v265);
                    v218 = nw_endpoint_handler_copy_endpoint(v265);
                    v219 = nw_endpoint_get_logging_description(v218);
                    v220 = nw_endpoint_handler_state_string(v265);
                    v221 = nw_endpoint_handler_mode_string(v265);
                    v222 = nw_endpoint_handler_copy_current_path(v265);
                    *buf = 136448002;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v216;
                    v279 = 2082;
                    v280 = v217;
                    v281 = 2082;
                    v282 = v219;
                    v283 = 2082;
                    v284 = v220;
                    v285 = 2082;
                    v286 = v221;
                    v287 = 2114;
                    v288 = v222;
                    v289 = 2080;
                    v290 = "migration";
                    _os_log_impl(&dword_181A37000, v91, v215, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, no backtrace", buf, 0x52u);
                  }

                  goto LABEL_227;
                }

                v149 = v158;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v150 = gconnectionLogObj;
                v159 = v274;
                if (os_log_type_enabled(v150, v274))
                {
                  v160 = nw_endpoint_handler_get_id_string(v265);
                  v260 = nw_endpoint_handler_dry_run_string(v265);
                  v161 = v160;
                  v256 = nw_endpoint_handler_copy_endpoint(v265);
                  v162 = nw_endpoint_get_logging_description(v256);
                  v163 = nw_endpoint_handler_state_string(v265);
                  v164 = nw_endpoint_handler_mode_string(v265);
                  v165 = nw_endpoint_handler_copy_current_path(v265);
                  *buf = 136448258;
                  v276 = "nw_flow_passthrough_notify";
                  v277 = 2082;
                  v278 = v161;
                  v279 = 2082;
                  v280 = v260;
                  v281 = 2082;
                  v282 = v162;
                  v283 = 2082;
                  v284 = v163;
                  v285 = 2082;
                  v286 = v164;
                  v287 = 2114;
                  v288 = v165;
                  v289 = 2080;
                  v290 = "migration";
                  v291 = 2082;
                  v292 = v149;
                  _os_log_impl(&dword_181A37000, v150, v159, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
                }

LABEL_172:

                free(v149);
                goto LABEL_228;
              }

              goto LABEL_228;
            }

LABEL_102:
            if (a4 && v253 == 1)
            {
              v75 = *a4;
              v76 = *(v14 + 35);
              *(v14 + 35) = v76 & 0xEF | (16 * v75);
              if (!v75 && (v76 & 8) != 0)
              {
                *(v14 + 35) = v76 & 0xE7;
                nw_endpoint_flow_start_child(v265);
              }

              goto LABEL_184;
            }

            v77 = v14;
            v78 = __nwlog_obj();
            *buf = 136446210;
            v276 = "nw_flow_passthrough_notify";
            v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s Invalid argument passed to nw_protocol_notification_type_delay_child", buf, 12);

            v274 = OS_LOG_TYPE_ERROR;
            v273 = 0;
            if (__nwlog_fault(v79, &v274, &v273))
            {
              if (v274 == OS_LOG_TYPE_FAULT)
              {
                v80 = __nwlog_obj();
                v81 = v274;
                if (os_log_type_enabled(v80, v274))
                {
                  *buf = 136446210;
                  v276 = "nw_flow_passthrough_notify";
                  _os_log_impl(&dword_181A37000, v80, v81, "%{public}s Invalid argument passed to nw_protocol_notification_type_delay_child", buf, 0xCu);
                }
              }

              else if (v273 == 1)
              {
                v135 = __nw_create_backtrace_string();
                v80 = __nwlog_obj();
                v136 = v274;
                v137 = os_log_type_enabled(v80, v274);
                if (v135)
                {
                  if (v137)
                  {
                    *buf = 136446466;
                    v276 = "nw_flow_passthrough_notify";
                    v277 = 2082;
                    v278 = v135;
                    _os_log_impl(&dword_181A37000, v80, v136, "%{public}s Invalid argument passed to nw_protocol_notification_type_delay_child, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v135);
                  goto LABEL_207;
                }

                if (v137)
                {
                  *buf = 136446210;
                  v276 = "nw_flow_passthrough_notify";
                  _os_log_impl(&dword_181A37000, v80, v136, "%{public}s Invalid argument passed to nw_protocol_notification_type_delay_child, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v80 = __nwlog_obj();
                v174 = v274;
                if (os_log_type_enabled(v80, v274))
                {
                  *buf = 136446210;
                  v276 = "nw_flow_passthrough_notify";
                  _os_log_impl(&dword_181A37000, v80, v174, "%{public}s Invalid argument passed to nw_protocol_notification_type_delay_child, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_207:
            v14 = v77;
            if (v79)
            {
              free(v79);
            }

            goto LABEL_184;
          }

LABEL_88:
          v264 = v14;
          if (*(v14 + 251) <= 0x13u)
          {
            v63 = nw_endpoint_handler_get_minimize_logging(v265);
            v64 = nw_endpoint_handler_get_logging_disabled(v265);
            if (v63)
            {
              if (v64)
              {
LABEL_96:
                ++*(v14 + 251);
                v74 = a1[6].isa;
                if (v74 && nw_protocol_input_handler_is_flow_replay(v74))
                {
                  nw_protocol_notify(a1[6].isa, a1, 27);
                }

                nw_endpoint_flow_rebuild_stack(v265, a1);
                v265->event = 262147;
                nw_endpoint_handler_report(v265, 0, &v265->event.domain, 0);
                goto LABEL_184;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v65 = gconnectionLogObj;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                v230 = nw_endpoint_handler_get_id_string(v265);
                v231 = nw_endpoint_handler_dry_run_string(v265);
                v232 = nw_endpoint_handler_copy_endpoint(v265);
                v233 = nw_endpoint_get_logging_description(v232);
                v234 = nw_endpoint_handler_state_string(v265);
                v235 = nw_endpoint_handler_mode_string(v265);
                v236 = nw_endpoint_handler_copy_current_path(v265);
                v237 = *(v264 + 251);
                *buf = 136448002;
                v276 = "nw_flow_passthrough_notify";
                v277 = 2082;
                v278 = v230;
                v279 = 2082;
                v280 = v231;
                v281 = 2082;
                v282 = v233;
                v283 = 2082;
                v284 = v234;
                v285 = 2082;
                v286 = v235;
                v287 = 2114;
                v288 = v236;
                v289 = 1024;
                LODWORD(v290) = v237;
                _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart with count %u, rebuilding stack", buf, 0x4Eu);
              }
            }

            else
            {
              if (v64)
              {
                goto LABEL_96;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v65 = gconnectionLogObj;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                v66 = nw_endpoint_handler_get_id_string(v265);
                v67 = nw_endpoint_handler_dry_run_string(v265);
                v68 = nw_endpoint_handler_copy_endpoint(v265);
                v69 = nw_endpoint_get_logging_description(v68);
                v70 = nw_endpoint_handler_state_string(v265);
                v71 = nw_endpoint_handler_mode_string(v265);
                v72 = nw_endpoint_handler_copy_current_path(v265);
                v73 = *(v264 + 251);
                *buf = 136448002;
                v276 = "nw_flow_passthrough_notify";
                v277 = 2082;
                v278 = v66;
                v279 = 2082;
                v280 = v67;
                v281 = 2082;
                v282 = v69;
                v283 = 2082;
                v284 = v70;
                v285 = 2082;
                v286 = v71;
                v287 = 2114;
                v288 = v72;
                v289 = 1024;
                LODWORD(v290) = v73;
                _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart with count %u, rebuilding stack", buf, 0x4Eu);
              }
            }

            v14 = v264;
            goto LABEL_96;
          }

          if (nw_endpoint_handler_get_logging_disabled(v265))
          {
LABEL_217:
            nw_protocol_disconnected(a1, a1[4].isa);
            goto LABEL_184;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v100 = gconnectionLogObj;
          v101 = nw_endpoint_handler_get_id_string(v265);
          v102 = nw_endpoint_handler_dry_run_string(v265);
          v103 = nw_endpoint_handler_copy_endpoint(v265);
          v104 = nw_endpoint_get_logging_description(v103);
          v105 = nw_endpoint_handler_state_string(v265);
          v106 = nw_endpoint_handler_mode_string(v265);
          v107 = nw_endpoint_handler_copy_current_path(v265);
          *buf = 136447746;
          v276 = "nw_flow_passthrough_notify";
          v277 = 2082;
          v278 = v101;
          v279 = 2082;
          v280 = v102;
          v281 = 2082;
          v282 = v104;
          v283 = 2082;
          v284 = v105;
          v285 = 2082;
          v286 = v106;
          v287 = 2114;
          v288 = v107;
          v258 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow", buf, 72);

          v274 = OS_LOG_TYPE_ERROR;
          v273 = 0;
          v108 = v258;
          if ((__nwlog_fault(v258, &v274, &v273) & 1) == 0)
          {
LABEL_215:
            v14 = v264;
            if (v108)
            {
              free(v108);
            }

            goto LABEL_217;
          }

          if (v274 == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v109 = gconnectionLogObj;
            v110 = v274;
            if (os_log_type_enabled(v109, v274))
            {
              v111 = nw_endpoint_handler_get_id_string(v265);
              v112 = nw_endpoint_handler_dry_run_string(v265);
              v113 = nw_endpoint_handler_copy_endpoint(v265);
              v114 = nw_endpoint_get_logging_description(v113);
              v115 = nw_endpoint_handler_state_string(v265);
              v116 = nw_endpoint_handler_mode_string(v265);
              v117 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136447746;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v111;
              v279 = 2082;
              v280 = v112;
              v281 = 2082;
              v282 = v114;
              v283 = 2082;
              v284 = v115;
              v285 = 2082;
              v286 = v116;
              v287 = 2114;
              v288 = v117;
              _os_log_impl(&dword_181A37000, v109, v110, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow", buf, 0x48u);
            }
          }

          else if (v273 == 1)
          {
            v138 = __nw_create_backtrace_string();
            if (v138)
            {
              v139 = v138;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v140 = gconnectionLogObj;
              v141 = v274;
              if (os_log_type_enabled(v140, v274))
              {
                v142 = nw_endpoint_handler_get_id_string(v265);
                v143 = nw_endpoint_handler_dry_run_string(v265);
                v254 = nw_endpoint_handler_copy_endpoint(v265);
                v144 = nw_endpoint_get_logging_description(v254);
                v145 = nw_endpoint_handler_state_string(v265);
                v146 = nw_endpoint_handler_mode_string(v265);
                v147 = nw_endpoint_handler_copy_current_path(v265);
                *buf = 136448002;
                v276 = "nw_flow_passthrough_notify";
                v277 = 2082;
                v278 = v142;
                v279 = 2082;
                v280 = v143;
                v281 = 2082;
                v282 = v144;
                v283 = 2082;
                v284 = v145;
                v285 = 2082;
                v286 = v146;
                v287 = 2114;
                v288 = v147;
                v289 = 2082;
                v290 = v139;
                _os_log_impl(&dword_181A37000, v140, v141, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, dumping backtrace:%{public}s", buf, 0x52u);
              }

              free(v139);
              goto LABEL_214;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v109 = gconnectionLogObj;
            v199 = v274;
            if (os_log_type_enabled(v109, v274))
            {
              v200 = nw_endpoint_handler_get_id_string(v265);
              v201 = nw_endpoint_handler_dry_run_string(v265);
              v202 = nw_endpoint_handler_copy_endpoint(v265);
              v203 = nw_endpoint_get_logging_description(v202);
              v204 = nw_endpoint_handler_state_string(v265);
              v205 = nw_endpoint_handler_mode_string(v265);
              v206 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136447746;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v200;
              v279 = 2082;
              v280 = v201;
              v281 = 2082;
              v282 = v203;
              v283 = 2082;
              v284 = v204;
              v285 = 2082;
              v286 = v205;
              v287 = 2114;
              v288 = v206;
              _os_log_impl(&dword_181A37000, v109, v199, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, no backtrace", buf, 0x48u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v109 = gconnectionLogObj;
            v175 = v274;
            if (os_log_type_enabled(v109, v274))
            {
              v176 = nw_endpoint_handler_get_id_string(v265);
              v177 = nw_endpoint_handler_dry_run_string(v265);
              v178 = nw_endpoint_handler_copy_endpoint(v265);
              v179 = nw_endpoint_get_logging_description(v178);
              v180 = nw_endpoint_handler_state_string(v265);
              v181 = nw_endpoint_handler_mode_string(v265);
              v182 = nw_endpoint_handler_copy_current_path(v265);
              *buf = 136447746;
              v276 = "nw_flow_passthrough_notify";
              v277 = 2082;
              v278 = v176;
              v279 = 2082;
              v280 = v177;
              v281 = 2082;
              v282 = v179;
              v283 = 2082;
              v284 = v180;
              v285 = 2082;
              v286 = v181;
              v287 = 2114;
              v288 = v182;
              _os_log_impl(&dword_181A37000, v109, v175, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, backtrace limit exceeded", buf, 0x48u);
            }
          }

LABEL_214:
          v108 = v258;
          goto LABEL_215;
        }

        a4 = v257;
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_81;
          }

          goto LABEL_107;
        }

LABEL_100:
        v263 = v14;
        v270[0] = MEMORY[0x1E69E9820];
        v270[1] = 3221225472;
        v270[2] = ___ZL26nw_flow_passthrough_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
        v270[3] = &unk_1E6A2DCD0;
        v272 = a1;
        v271 = v265;
        nw_endpoint_handler_access_parent_flow_handler(v271, v270);

        goto LABEL_101;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v223 = nw_endpoint_handler_get_id_string(v18);
        v251 = nw_endpoint_handler_dry_run_string(v18);
        v224 = nw_endpoint_handler_copy_endpoint(v18);
        v247 = nw_endpoint_get_logging_description(v224);
        v225 = nw_endpoint_handler_state_string(v18);
        v226 = nw_endpoint_handler_mode_string(v18);
        v227 = nw_endpoint_handler_copy_current_path(v18);
        v228 = v227;
        if (a3 > 0x1E)
        {
          v229 = "unknown";
        }

        else
        {
          v229 = off_1E6A33500[a3];
        }

        *buf = 136448002;
        v276 = "nw_flow_passthrough_notify";
        v277 = 2082;
        v278 = v223;
        v279 = 2082;
        v280 = v251;
        v281 = 2082;
        v282 = v247;
        v283 = 2082;
        v284 = v225;
        v285 = 2082;
        v286 = v226;
        v287 = 2114;
        v288 = v227;
        v289 = 2082;
        v290 = v229;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received notification %{public}s", buf, 0x52u);
      }

LABEL_52:

      v14 = v261;
      goto LABEL_53;
    }

    v20 = v18;
    v21 = *(v18 + 284);

    if ((v21 & 0x40) != 0)
    {
      goto LABEL_53;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_52;
    }

    v23 = v20;

    v24 = v23;
    v25 = *(v18 + 284);

    if (v25)
    {
      v26 = "dry-run ";
    }

    else
    {
      v26 = "";
    }

    v27 = nw_endpoint_handler_copy_endpoint(v24);
    v28 = v27;
    if (v27)
    {
      v245 = _nw_endpoint_get_logging_description(v27);
    }

    else
    {
      v245 = "<NULL>";
    }

    v29 = v24;
    v30 = v29;
    v31 = v265->state;
    v249 = v26;
    if (v31 > 5)
    {
      v32 = "unknown-state";
    }

    else
    {
      v32 = off_1E6A31048[v31];
    }

    v244 = v32;
    v33 = v23 + 184;

    v34 = v30;
    v35 = v34;
    v36 = v12->mode;
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          v37 = "proxy";
          goto LABEL_48;
        case 4:
          v37 = "fallback";
          goto LABEL_48;
        case 5:
          v37 = "transform";
          goto LABEL_48;
      }
    }

    else
    {
      switch(v36)
      {
        case 0:
          v37 = "path";
          goto LABEL_48;
        case 1:
          v37 = "resolver";
          goto LABEL_48;
        case 2:
          v37 = nw_endpoint_flow_mode_string(v34[33]);
LABEL_48:

          v38 = v35;
          os_unfair_lock_lock(v38 + 28);
          v39 = v38[8];
          os_unfair_lock_unlock(v38 + 28);

          v40 = v39;
          v41 = v40;
          if (a3 > 0x1E)
          {
            v42 = "unknown";
          }

          else
          {
            v42 = off_1E6A33500[a3];
          }

          *buf = 136448002;
          v276 = "nw_flow_passthrough_notify";
          v277 = 2082;
          v278 = v33;
          v279 = 2082;
          v280 = v249;
          v281 = 2082;
          v282 = v245;
          v283 = 2082;
          v284 = v244;
          v285 = 2082;
          v286 = v37;
          v287 = 2114;
          v288 = v40;
          v289 = 2082;
          v290 = v42;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received notification %{public}s", buf, 0x52u);

          goto LABEL_52;
      }
    }

    v37 = "unknown-mode";
    goto LABEL_48;
  }

LABEL_185:
}

void nw_path_apply_override_interface_types_from_path(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_apply_override_interface_types_from_path";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null path_to_modify", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_apply_override_interface_types_from_path";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path_to_modify", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_path_apply_override_interface_types_from_path";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path_to_modify, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v7);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_path_apply_override_interface_types_from_path";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path_to_modify, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_apply_override_interface_types_from_path";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null path_to_modify, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    if (v3 != v4)
    {
      _nw_path_apply_override_interface_types_from_path(v3, v4);
    }

    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_apply_override_interface_types_from_path";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null other_path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_apply_override_interface_types_from_path";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null other_path", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_apply_override_interface_types_from_path";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null other_path, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_path_apply_override_interface_types_from_path";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null other_path, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_apply_override_interface_types_from_path";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null other_path, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_40;
  }

LABEL_5:
}

void nw_protocol_default_notify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_default_notify";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null protocol";
      goto LABEL_42;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_42;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_protocol_default_notify";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_43:
    if (!v7)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_default_notify";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_42;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_42;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_protocol_default_notify";
        v20 = 2082;
        v21 = v14;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v7)
      {
        return;
      }

LABEL_44:
      free(v7);
      return;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_default_notify";
      v10 = "%{public}s called with null other_protocol, no backtrace";
LABEL_42:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  if (a3 > 0x1E)
  {
    goto LABEL_9;
  }

  if (((1 << a3) & 0x44200080) != 0)
  {
    return;
  }

  if (((1 << a3) & 0x1A000) != 0)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      return;
    }
  }

  else
  {
LABEL_9:
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v4 + 160);
    if (v5)
    {

      v5();
    }
  }
}

uint64_t nw_connection_used_fallback_locked(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((*(v1 + 109) & 0x40) != 0)
    {
      v3 = nw_endpoint_handler_copy_connected_flow_handler(v1[18]);
    }

    else
    {
      v3 = v1[19];
    }

    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = v5[4];

      if (v6)
      {
        is_fallback = _nw_parameters_is_fallback(v6);
      }

      else
      {
        is_fallback = 0;
      }
    }

    else
    {
      is_fallback = 0;
    }

    goto LABEL_12;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_connection_used_fallback_locked";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection", buf, 12);

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
        v20 = "nw_connection_used_fallback_locked";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_connection_used_fallback_locked";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_connection_used_fallback_locked";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_connection_used_fallback_locked";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v10)
  {
    free(v10);
  }

  is_fallback = 0;
LABEL_12:

  return is_fallback;
}

uint64_t nw_path_flow_registration_get_nexus_instance(void *a1, void *a2, unsigned __int8 *a3, _DWORD *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (v7)
  {
    v9 = nw_path_copy_flow_for_registration(v7, v8);
    v10 = v9;
    if (v9)
    {
      nexus_instance = _nw_path_flow_get_nexus_instance(v9, a3, a4);
    }

    else
    {
      nexus_instance = 0;
    }

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_path_flow_registration_get_nexus_instance";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v14, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_nexus_instance";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v24 = "nw_path_flow_registration_get_nexus_instance";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v19)
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_nexus_instance";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "nw_path_flow_registration_get_nexus_instance";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v14)
  {
    free(v14);
  }

  nexus_instance = 0;
LABEL_6:

  return nexus_instance;
}

uint64_t __nw_connection_used_fallback_block_invoke(uint64_t a1)
{
  result = nw_connection_used_fallback_locked(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t nw_connection_used_fallback(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_used_fallback_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_used_fallback_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_used_fallback";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_fallback";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_used_fallback";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_fallback";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_fallback";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

  return v3 & 1;
}

uint64_t nw_frame_create_external(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v8 = _os_object_alloc();
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 204);
    if (a1)
    {
      v10 |= 4u;
    }

    *(v8 + 204) = v10 | 2;
    nw_frame_reset(v8, 0, v6, a3, a4);
    return v9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v25 = "nw_frame_create_external";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_obj_alloc failed", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v11, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_frame_create_external";
      v14 = "%{public}s nw_frame_obj_alloc failed";
LABEL_16:
      v19 = v12;
      v20 = v13;
LABEL_17:
      _os_log_impl(&dword_181A37000, v19, v20, v14, buf, 0xCu);
      goto LABEL_18;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_frame_create_external";
      v14 = "%{public}s nw_frame_obj_alloc failed, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type;
    v18 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        v25 = "nw_frame_create_external";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nw_frame_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v18)
    {
      *buf = 136446210;
      v25 = "nw_frame_create_external";
      v14 = "%{public}s nw_frame_obj_alloc failed, no backtrace";
      v19 = v16;
      v20 = v17;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v11)
  {
    free(v11);
  }

  return v9;
}

void nw_connection_fillout_data_transfer_snapshot_on_nw_queue(void *a1, uint64_t *a2, void *a3, _BYTE *a4, int a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (!v9)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
    v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v56, &type, &v96))
    {
      goto LABEL_170;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v57, type);
      if (backtrace_string)
      {
        if (v63)
        {
          *buf = 136446466;
          v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
          v100 = 2082;
          v101 = backtrace_string;
          _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_170:
        if (!v56)
        {
          goto LABEL_93;
        }

LABEL_171:
        free(v56);
        goto LABEL_93;
      }

      if (v63)
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v57 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v77, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_169:

    goto LABEL_170;
  }

  if (!a2)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
    v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null snapshot", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v56, &type, &v96))
    {
      goto LABEL_170;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null snapshot", buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v64 = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v65 = type;
      v66 = os_log_type_enabled(v57, type);
      if (v64)
      {
        if (v66)
        {
          *buf = 136446466;
          v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
          v100 = 2082;
          v101 = v64;
          _os_log_impl(&dword_181A37000, v57, v65, "%{public}s called with null snapshot, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v64);
        if (!v56)
        {
          goto LABEL_93;
        }

        goto LABEL_171;
      }

      if (v66)
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v65, "%{public}s called with null snapshot, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v57 = __nwlog_obj();
      v78 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v57, v78, "%{public}s called with null snapshot, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_169;
  }

  nw_context_assert_queue(v9[3]);
  if ((*(v10 + 109) & 0x40) == 0 || !v10[18])
  {
    goto LABEL_93;
  }

  v11 = v10;
  if (!a3)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null snapshot_length", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v68, &type, &v96))
    {
      goto LABEL_196;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v69 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v69, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null snapshot_length", buf, 0xCu);
      }

      goto LABEL_195;
    }

    if (v96 != 1)
    {
      v69 = __nwlog_obj();
      v91 = type;
      if (os_log_type_enabled(v69, type))
      {
        *buf = 136446210;
        v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v69, v91, "%{public}s called with null snapshot_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_195;
    }

    v79 = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v80 = type;
    v81 = os_log_type_enabled(v69, type);
    if (!v79)
    {
      if (v81)
      {
        *buf = 136446210;
        v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null snapshot_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_195;
    }

    if (v81)
    {
      *buf = 136446466;
      v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
      v100 = 2082;
      v101 = v79;
      _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null snapshot_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v79);
LABEL_196:
    if (!v68)
    {
      goto LABEL_8;
    }

    goto LABEL_197;
  }

  if (a4)
  {
    nw_context_assert_queue(v10[3]);
    nw_endpoint_handler_fillout_data_transfer_snapshot(v10[18], a2, a3, a4, a5 ^ 1);
    goto LABEL_8;
  }

  v75 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
  v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null should_release_snapshot", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (!__nwlog_fault(v68, &type, &v96))
  {
    goto LABEL_196;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v69 = __nwlog_obj();
    v76 = type;
    if (os_log_type_enabled(v69, type))
    {
      *buf = 136446210;
      v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
      _os_log_impl(&dword_181A37000, v69, v76, "%{public}s called with null should_release_snapshot", buf, 0xCu);
    }

LABEL_195:

    goto LABEL_196;
  }

  if (v96 != 1)
  {
    v69 = __nwlog_obj();
    v94 = type;
    if (os_log_type_enabled(v69, type))
    {
      *buf = 136446210;
      v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
      _os_log_impl(&dword_181A37000, v69, v94, "%{public}s called with null should_release_snapshot, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_195;
  }

  v88 = __nw_create_backtrace_string();
  v69 = __nwlog_obj();
  v89 = type;
  v90 = os_log_type_enabled(v69, type);
  if (!v88)
  {
    if (v90)
    {
      *buf = 136446210;
      v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
      _os_log_impl(&dword_181A37000, v69, v89, "%{public}s called with null should_release_snapshot, no backtrace", buf, 0xCu);
    }

    goto LABEL_195;
  }

  if (v90)
  {
    *buf = 136446466;
    v99 = "nw_connection_get_data_transfer_snapshot_for_connected_endpoint_on_nw_queue";
    v100 = 2082;
    v101 = v88;
    _os_log_impl(&dword_181A37000, v69, v89, "%{public}s called with null should_release_snapshot, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v88);
  if (v68)
  {
LABEL_197:
    free(v68);
  }

LABEL_8:

  if (*a2)
  {
    goto LABEL_16;
  }

  v12 = malloc_type_calloc(1uLL, 0xE0uLL, 0xA5FFB9B4uLL);
  if (v12)
  {
LABEL_15:
    *a2 = v12;
    *a3 = 224;
    *a4 = 1;
LABEL_16:
    v17 = v10[18];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      mode = v19->mode;

      if (mode == 2)
      {
        v21 = nw_endpoint_handler_copy_flow(v19);
        v22 = *(v21 + 133);

        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (mode > 5)
      {
        v24 = "unknown-mode";
      }

      else
      {
        v24 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v99 = "nw_endpoint_handler_get_sent_application_byte_count";
      v100 = 2082;
      v101 = v24;
      v102 = 2082;
      v103 = "flow";
      LODWORD(v95) = 32;
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v95);

      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (__nwlog_fault(v25, &type, &v96))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v26, type))
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
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            v100 = 2082;
            v101 = v28;
            v102 = 2082;
            v103 = "flow";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
          }
        }

        else if (v96 == 1)
        {
          v29 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v30 = type;
          v31 = os_log_type_enabled(v26, type);
          if (v29)
          {
            if (v31)
            {
              if (mode > 5)
              {
                v32 = "unknown-mode";
              }

              else
              {
                v32 = off_1E6A31018[mode];
              }

              *buf = 136446978;
              v99 = "nw_endpoint_handler_get_sent_application_byte_count";
              v100 = 2082;
              v101 = v32;
              v102 = 2082;
              v103 = "flow";
              v104 = 2082;
              v105 = v29;
              _os_log_impl(&dword_181A37000, v26, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v29);
            if (!v25)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          if (v31)
          {
            if (mode > 5)
            {
              v35 = "unknown-mode";
            }

            else
            {
              v35 = off_1E6A31018[mode];
            }

            *buf = 136446722;
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            v100 = 2082;
            v101 = v35;
            v102 = 2082;
            v103 = "flow";
            _os_log_impl(&dword_181A37000, v26, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v26, type))
          {
            if (mode > 5)
            {
              v34 = "unknown-mode";
            }

            else
            {
              v34 = off_1E6A31018[mode];
            }

            *buf = 136446722;
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            v100 = 2082;
            v101 = v34;
            v102 = 2082;
            v103 = "flow";
            _os_log_impl(&dword_181A37000, v26, v33, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
          }
        }

LABEL_50:
      }
    }

    else
    {
      v71 = __nwlog_obj();
      *buf = 136446210;
      v99 = "nw_endpoint_handler_get_sent_application_byte_count";
      LODWORD(v95) = 12;
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null handler", buf, v95);

      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (__nwlog_fault(v25, &type, &v96))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v72 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            _os_log_impl(&dword_181A37000, v26, v72, "%{public}s called with null handler", buf, 0xCu);
          }
        }

        else if (v96 == 1)
        {
          v82 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v83 = type;
          v84 = os_log_type_enabled(v26, type);
          if (v82)
          {
            if (v84)
            {
              *buf = 136446466;
              v99 = "nw_endpoint_handler_get_sent_application_byte_count";
              v100 = 2082;
              v101 = v82;
              _os_log_impl(&dword_181A37000, v26, v83, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v82);
            if (!v25)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          if (v84)
          {
            *buf = 136446210;
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            _os_log_impl(&dword_181A37000, v26, v83, "%{public}s called with null handler, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v92 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v99 = "nw_endpoint_handler_get_sent_application_byte_count";
            _os_log_impl(&dword_181A37000, v26, v92, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_50;
      }
    }

    if (!v25)
    {
LABEL_53:
      v22 = 0;
LABEL_54:

      *(*a2 + 176) = v22;
      v36 = v10[18];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
        v39 = v38->mode;

        if (v39 == 2)
        {
          v40 = nw_endpoint_handler_copy_flow(v38);
          v41 = *(v40 + 134);

LABEL_92:
          *(*a2 + 168) = v41;
LABEL_93:

          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = gLogObj;
        if (v39 > 5)
        {
          v43 = "unknown-mode";
        }

        else
        {
          v43 = off_1E6A31018[v39];
        }

        *buf = 136446722;
        v99 = "nw_endpoint_handler_get_received_application_byte_count";
        v100 = 2082;
        v101 = v43;
        v102 = 2082;
        v103 = "flow";
        LODWORD(v95) = 32;
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v95);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (__nwlog_fault(v44, &type, &v96))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = type;
            if (os_log_type_enabled(v45, type))
            {
              if (v39 > 5)
              {
                v47 = "unknown-mode";
              }

              else
              {
                v47 = off_1E6A31018[v39];
              }

              *buf = 136446722;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              v100 = 2082;
              v101 = v47;
              v102 = 2082;
              v103 = "flow";
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
            }
          }

          else if (v96 == 1)
          {
            v48 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v49 = type;
            v50 = os_log_type_enabled(v45, type);
            if (v48)
            {
              if (v50)
              {
                if (v39 > 5)
                {
                  v51 = "unknown-mode";
                }

                else
                {
                  v51 = off_1E6A31018[v39];
                }

                *buf = 136446978;
                v99 = "nw_endpoint_handler_get_received_application_byte_count";
                v100 = 2082;
                v101 = v51;
                v102 = 2082;
                v103 = "flow";
                v104 = 2082;
                v105 = v48;
                _os_log_impl(&dword_181A37000, v45, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v48);
              if (!v44)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }

            if (v50)
            {
              if (v39 > 5)
              {
                v54 = "unknown-mode";
              }

              else
              {
                v54 = off_1E6A31018[v39];
              }

              *buf = 136446722;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              v100 = 2082;
              v101 = v54;
              v102 = 2082;
              v103 = "flow";
              _os_log_impl(&dword_181A37000, v45, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v52 = type;
            if (os_log_type_enabled(v45, type))
            {
              if (v39 > 5)
              {
                v53 = "unknown-mode";
              }

              else
              {
                v53 = off_1E6A31018[v39];
              }

              *buf = 136446722;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              v100 = 2082;
              v101 = v53;
              v102 = 2082;
              v103 = "flow";
              _os_log_impl(&dword_181A37000, v45, v52, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
            }
          }

LABEL_88:
        }
      }

      else
      {
        v73 = __nwlog_obj();
        *buf = 136446210;
        v99 = "nw_endpoint_handler_get_received_application_byte_count";
        LODWORD(v95) = 12;
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null handler", buf, v95);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (__nwlog_fault(v44, &type, &v96))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v45 = __nwlog_obj();
            v74 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              _os_log_impl(&dword_181A37000, v45, v74, "%{public}s called with null handler", buf, 0xCu);
            }
          }

          else if (v96 == 1)
          {
            v85 = __nw_create_backtrace_string();
            v45 = __nwlog_obj();
            v86 = type;
            v87 = os_log_type_enabled(v45, type);
            if (v85)
            {
              if (v87)
              {
                *buf = 136446466;
                v99 = "nw_endpoint_handler_get_received_application_byte_count";
                v100 = 2082;
                v101 = v85;
                _os_log_impl(&dword_181A37000, v45, v86, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v85);
              if (!v44)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }

            if (v87)
            {
              *buf = 136446210;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              _os_log_impl(&dword_181A37000, v45, v86, "%{public}s called with null handler, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v45 = __nwlog_obj();
            v93 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v99 = "nw_endpoint_handler_get_received_application_byte_count";
              _os_log_impl(&dword_181A37000, v45, v93, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_88;
        }
      }

      if (!v44)
      {
LABEL_91:
        v41 = 0;
        goto LABEL_92;
      }

LABEL_90:
      free(v44);
      goto LABEL_91;
    }

LABEL_52:
    free(v25);
    goto LABEL_53;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v99 = "nw_connection_fillout_data_transfer_snapshot_on_nw_queue";
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v100 = 2048;
  v101 = 1;
  v102 = 2048;
  v103 = 224;
  LODWORD(v95) = 32;
  v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v95);

  if (!__nwlog_should_abort(v16))
  {
    free(v16);
    v12 = 0;
    goto LABEL_15;
  }

  __break(1u);
}

id nw_endpoint_handler_copy_connected_path(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_handler_copy_connected_path";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v19, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_handler_copy_connected_path";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "nw_endpoint_handler_copy_connected_path";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_endpoint_handler_copy_connected_path";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_handler_copy_connected_path";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_51:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_33;
  }

  os_unfair_lock_lock(v1 + 28);
  if (v2[29]._os_unfair_lock_opaque != 2)
  {
    os_unfair_lock_unlock(v2 + 28);
    if ((v2[71]._os_unfair_lock_opaque & 0x40) != 0)
    {
LABEL_33:
      v3 = 0;
      goto LABEL_34;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_32:

      goto LABEL_33;
    }

    if (v2[71]._os_unfair_lock_opaque)
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    os_unfair_lock_opaque = v2[30]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[os_unfair_lock_opaque];
    }

    v11 = v2;
    v12 = v11;
    v13 = v2[29]._os_unfair_lock_opaque;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v14 = "proxy";
          goto LABEL_31;
        case 4:
          v14 = "fallback";
          goto LABEL_31;
        case 5:
          v14 = "transform";
          goto LABEL_31;
      }
    }

    else
    {
      switch(v13)
      {
        case 0:
          v14 = "path";
          goto LABEL_31;
        case 1:
          v14 = "resolver";
          goto LABEL_31;
        case 2:
          v14 = nw_endpoint_flow_mode_string(v11[33]);
LABEL_31:

          v15 = v12;
          os_unfair_lock_lock(v2 + 28);
          v16 = v15[8];
          os_unfair_lock_unlock(v2 + 28);

          *buf = 136447746;
          v29 = "nw_endpoint_handler_copy_connected_path";
          v30 = 2082;
          v31 = &v2[46];
          v32 = 2082;
          v33 = v5;
          v34 = 2082;
          v35 = logging_description;
          v36 = 2082;
          v37 = v10;
          v38 = 2082;
          v39 = v14;
          v40 = 2114;
          v41 = v16;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is not flow", buf, 0x48u);

          goto LABEL_32;
      }
    }

    v14 = "unknown-mode";
    goto LABEL_31;
  }

  v3 = nw_endpoint_flow_copy_connected_path(*&v2[66]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 28);
LABEL_34:

  return v3;
}

NWConcrete_nw_endpoint_handler *nw_endpoint_handler_copy_connected_flow_handler(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_handler_copy_connected_flow_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_handler_copy_connected_flow_handler";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v32 = "nw_endpoint_handler_copy_connected_flow_handler";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (v27)
      {
        *buf = 136446210;
        v32 = "nw_endpoint_handler_copy_connected_flow_handler";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_handler_copy_connected_flow_handler";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (mode > 5)
    {
      v9 = "unknown-mode";
    }

    else
    {
      v9 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v32 = "nw_endpoint_handler_copy_connected_flow_handler";
    v33 = 2082;
    v34 = v9;
    v35 = 2082;
    v36 = "flow";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v11, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          if (mode > 5)
          {
            v14 = "unknown-mode";
          }

          else
          {
            v14 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v32 = "nw_endpoint_handler_copy_connected_flow_handler";
          v33 = 2082;
          v34 = v14;
          v35 = 2082;
          v36 = "flow";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v29 == 1)
      {
        v15 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v16 = type;
        v17 = os_log_type_enabled(v12, type);
        if (v15)
        {
          if (v17)
          {
            if (mode > 5)
            {
              v18 = "unknown-mode";
            }

            else
            {
              v18 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v32 = "nw_endpoint_handler_copy_connected_flow_handler";
            v33 = 2082;
            v34 = v18;
            v35 = 2082;
            v36 = "flow";
            v37 = 2082;
            v38 = v15;
            _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v15);
          if (!v11)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        if (v17)
        {
          if (mode > 5)
          {
            v21 = "unknown-mode";
          }

          else
          {
            v21 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v32 = "nw_endpoint_handler_copy_connected_flow_handler";
          v33 = 2082;
          v34 = v21;
          v35 = 2082;
          v36 = "flow";
          _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v12, type))
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
          v32 = "nw_endpoint_handler_copy_connected_flow_handler";
          v33 = 2082;
          v34 = v20;
          v35 = 2082;
          v36 = "flow";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_42;
    }

LABEL_43:
    if (!v11)
    {
LABEL_45:
      v10 = 0;
      goto LABEL_46;
    }

LABEL_44:
    free(v11);
    goto LABEL_45;
  }

  v5 = nw_endpoint_handler_copy_flow(v3);
  os_unfair_lock_lock(v5 + 220);
  if (*(v5 + 32) & 2) != 0 || (*(v5 + 33))
  {
    v7 = v3;
  }

  else
  {
    v6 = *(v5 + 117);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v7 = nw_endpoint_handler_copy_connected_flow_handler(v6);
  }

  v10 = v7;
LABEL_11:
  os_unfair_lock_unlock(v5 + 220);

LABEL_46:
  return v10;
}

id nw_connection_copy_metadata(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy__24471;
    v28 = __Block_byref_object_dispose__24472;
    v29 = 0;
    *type = 0;
    v22 = type;
    v23 = 0x2020000000;
    v24 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_connection_copy_metadata_block_invoke;
    v17[3] = &unk_1E6A36148;
    v3 = v1;
    v18 = v3;
    v19 = type;
    v20 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_metadata_block_invoke(v17);
    os_unfair_lock_unlock(v2 + 34);
    v4 = *&buf[8];
    if (*(v22 + 24) == 1 && !*(*&buf[8] + 40))
    {
      v5 = nw_parameters_copy_metadata(v3[2]);
      v6 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v5;

      v4 = *&buf[8];
    }

    v7 = *(v4 + 40);

    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_metadata";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v10, type, &v25))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_metadata";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type[0];
      v15 = os_log_type_enabled(v11, type[0]);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_copy_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_metadata";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_metadata";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_6:

  return v7;
}

void sub_181BFEB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_copy_metadata_block_invoke(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if ((*(v2 + 109) & 0x40) == 0)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1[4] + 448);
        *buf = 136446466;
        *&buf[4] = "nw_connection_copy_metadata_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_metadata on unconnected nw_connection", buf, 0x12u);
      }
    }

    return;
  }

  *(*(a1[5] + 8) + 24) = 1;
  v6 = *(a1[4] + 144);
  v7 = v6;
  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_copy_metadata";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null handler", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v15, type, &v27))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_metadata";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v19 = type[0];
        v20 = os_log_type_enabled(v16, type[0]);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_copy_metadata";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (v20)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_metadata";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_copy_metadata";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_38:
    if (v15)
    {
      free(v15);
    }

    v11 = 0;
    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__33557;
  v30 = __Block_byref_object_dispose__33558;
  v31 = 0;
  os_unfair_lock_lock(v6 + 28);
  v8 = nw_endpoint_flow_uses_flow_divert(*&v7[66]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v7 + 28);
  if (v8)
  {
    v9 = v7;
    os_unfair_lock_lock(v7 + 28);
    if (v9[29]._os_unfair_lock_opaque == 2)
    {
      v10 = nw_endpoint_flow_copy_connected_socket_wrapper(*&v7[66]._os_unfair_lock_opaque);
    }

    else
    {
      v10 = 0;
    }

    os_unfair_lock_unlock(v7 + 28);

    if (v10)
    {
      *type = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __nw_endpoint_handler_copy_metadata_block_invoke;
      v25 = &unk_1E6A3C0D8;
      v26 = buf;
      nw_fd_wrapper_get_fd(v10, type);
    }
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_19:
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_181BFF014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_flow_uses_flow_divert(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 220);
    if ((v2[8]._os_unfair_lock_opaque & 2) != 0 || (v2[8]._os_unfair_lock_opaque & 0x100) != 0)
    {
      v5 = (BYTE2(v2[8]._os_unfair_lock_opaque) >> 2) & 1;
    }

    else
    {
      v3 = *&v2[234]._os_unfair_lock_opaque;
      if (v3)
      {
        v4 = nw_endpoint_handler_copy_flow(v3);
        v5 = nw_endpoint_flow_uses_flow_divert(v4);
      }

      else
      {
        v5 = 0;
      }
    }

    os_unfair_lock_unlock(v2 + 220);
    goto LABEL_8;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_flow_uses_flow_divert";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null endpoint_flow", buf, 12);

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
        v18 = "nw_endpoint_flow_uses_flow_divert";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint_flow", buf, 0xCu);
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
          v18 = "nw_endpoint_flow_uses_flow_divert";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_uses_flow_divert";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_uses_flow_divert";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

uint64_t nw_parameters_copy_metadata(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_metadata();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_metadata";
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
        v12 = "nw_parameters_copy_metadata";
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
            v12 = "nw_parameters_copy_metadata";
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
        v12 = "nw_parameters_copy_metadata";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_metadata";
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

void __nw_connection_add_data_transfer_report_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) < 4)
  {
    v6 = *(v2 + 424);
    if (!v6)
    {
      v7 = _nw_array_create();
      v8 = *(a1 + 32);
      v9 = *(v8 + 424);
      *(v8 + 424) = v7;

      v2 = *(a1 + 32);
      v6 = *(v2 + 424);
    }

    v10 = *(a1 + 40);
    if (v6)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      _nw_array_append(v6, v10);
      v2 = *(a1 + 32);
    }

    if (*(v2 + 80) == 3)
    {
      v12 = *(a1 + 40);

      nw_connection_initial_data_transfer_report_snapshot_on_nw_queue(v2, v12);
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v13 = 136446466;
        v14 = "nw_connection_add_data_transfer_report_block_invoke";
        v15 = 1024;
        v16 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot add data transfer report to connection past the ready state", &v13, 0x12u);
      }
    }
  }
}

void nw_connection_initial_data_transfer_report_snapshot_on_nw_queue(void *a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v20 = __nwlog_obj();
    LODWORD(aBlock[0]) = 136446210;
    *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null connection", aBlock, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v34) = 0;
    if (!__nwlog_fault(v21, type, &v34))
    {
      goto LABEL_63;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null connection", aBlock, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v27 = type[0];
      v28 = os_log_type_enabled(v22, type[0]);
      if (backtrace_string)
      {
        if (v28)
        {
          LODWORD(aBlock[0]) = 136446466;
          *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
          WORD6(aBlock[0]) = 2082;
          *(aBlock + 14) = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(backtrace_string);
LABEL_63:
        if (!v21)
        {
          goto LABEL_25;
        }

        goto LABEL_64;
      }

      if (v28)
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null connection, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v32, "%{public}s called with null connection, backtrace limit exceeded", aBlock, 0xCu);
      }
    }

LABEL_62:

    goto LABEL_63;
  }

  if (!v4)
  {
    v24 = __nwlog_obj();
    LODWORD(aBlock[0]) = 136446210;
    *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null report", aBlock, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v34) = 0;
    if (!__nwlog_fault(v21, type, &v34))
    {
      goto LABEL_63;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null report", aBlock, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v30 = type[0];
      v31 = os_log_type_enabled(v22, type[0]);
      if (v29)
      {
        if (v31)
        {
          LODWORD(aBlock[0]) = 136446466;
          *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
          WORD6(aBlock[0]) = 2082;
          *(aBlock + 14) = v29;
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null report, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(v29);
        if (!v21)
        {
          goto LABEL_25;
        }

LABEL_64:
        free(v21);
        goto LABEL_25;
      }

      if (v31)
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null report, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        LODWORD(aBlock[0]) = 136446210;
        *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
        _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null report, backtrace limit exceeded", aBlock, 0xCu);
      }
    }

    goto LABEL_62;
  }

  nw_context_assert_queue(v3[3]);
  if ((*(v3 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_flow_handler(v3[18]);
    if (v6)
    {
      v7 = mach_continuous_time();
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = v5;
      *&aBlock[0] = MEMORY[0x1E69E9820];
      *(&aBlock[0] + 1) = 3221225472;
      *&aBlock[1] = __nw_data_transfer_set_initial_snapshot_time_block_invoke;
      *(&aBlock[1] + 1) = &unk_1E6A3AC58;
      v10 = v9;
      *&v38 = v10;
      *(&v38 + 1) = v8;
      v11 = _Block_copy(aBlock);
      os_unfair_lock_lock(v9 + 10);
      v11[2](v11);
      os_unfair_lock_unlock(v9 + 10);

      v36 = 0;
      v34 = 0;
      *type = 0;
      nw_connection_fillout_data_transfer_snapshot_on_nw_queue(v3, &v34, type, &v36, 1);
      v12 = v6;
      os_unfair_lock_lock(&v12->lock);
      v13 = v12->current_path;
      os_unfair_lock_unlock(&v12->lock);

      v14 = nw_path_copy_interface(v13);
      if (v14)
      {
        if (v34 && __ROR8__(0x6DB6DB6DB6DB6DB7 * *type, 5) <= 0x124924924924924uLL)
        {
          if (*type >= 0xE0uLL)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              nw_data_transfer_add_initial_snapshot(v10, v14, (v34 + v18));
              ++v19;
              v18 += 224;
            }

            while (v19 < ((*type >> 5) * 0x2492492492492493uLL) >> 64);
          }
        }

        else
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = 0u;
          memset(aBlock, 0, sizeof(aBlock));
          nw_data_transfer_add_initial_snapshot(v10, v14, aBlock);
        }
      }

      if (v36 == 1 && v34 != 0)
      {
        free(v34);
        v34 = 0;
      }

LABEL_24:
      goto LABEL_25;
    }
  }

  v16 = v3[2];
  if (v16 && !_nw_parameters_get_logging_disabled(v16))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v3 + 112);
      LODWORD(aBlock[0]) = 136446466;
      *(aBlock + 4) = "nw_connection_initial_data_transfer_report_snapshot_on_nw_queue";
      WORD6(aBlock[0]) = 1024;
      *(aBlock + 14) = v17;
      _os_log_impl(&dword_181A37000, &v12->super, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot snapshot data transfer report without a connected endpoint handler", aBlock, 0x12u);
    }

    goto LABEL_24;
  }

LABEL_25:
}

void nw_data_transfer_add_initial_snapshot(void *a1, void *a2, os_unfair_lock_s **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      if (v6)
      {
        if (v8 == _nw_interface_get_index(v6))
        {
          goto LABEL_5;
        }

        v8 = *a3;
      }

      v9 = nw_interface_create_with_index(v8);

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *a3;
        *buf = 136446722;
        v31 = "nw_data_transfer_add_initial_snapshot";
        v32 = 2112;
        v33 = v9;
        v34 = 2048;
        v35 = v11;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s created interface %@ from index %llu", buf, 0x20u);
      }

      goto LABEL_10;
    }

LABEL_5:
    v9 = v7;
LABEL_10:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      radio_type = nw_interface_get_radio_type(v9);
      v14 = nw_interface_radio_type_to_string(radio_type);
      *buf = 136446978;
      v31 = "nw_data_transfer_add_initial_snapshot";
      v32 = 2048;
      v33 = v5;
      v34 = 2112;
      v35 = v9;
      v36 = 2080;
      v37 = v14;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s report %p adding initial snapshot for interface %@[%s]", buf, 0x2Au);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_data_transfer_add_initial_snapshot_block_invoke;
    aBlock[3] = &unk_1E6A3BCF0;
    v25 = v5;
    v7 = v9;
    v26 = v7;
    v27 = a3;
    v15 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 10);
    v15[2](v15);
    os_unfair_lock_unlock(v5 + 10);

    goto LABEL_13;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_data_transfer_add_initial_snapshot";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null snapshot", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v17, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v31 = "nw_data_transfer_add_initial_snapshot";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null snapshot", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v31 = "nw_data_transfer_add_initial_snapshot";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null snapshot, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_data_transfer_add_initial_snapshot";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null snapshot, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v31 = "nw_data_transfer_add_initial_snapshot";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null snapshot, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v17)
  {
    free(v17);
  }

LABEL_13:
}

void __nw_data_transfer_add_initial_snapshot_block_invoke(uint64_t a1)
{
  path_report_for_interface_locked = nw_data_transfer_report_get_path_report_for_interface_locked(*(a1 + 32), *(a1 + 40), 1);
  if (path_report_for_interface_locked)
  {
    if (!path_report_for_interface_locked->interface)
    {
      v3 = path_report_for_interface_locked;
      objc_storeStrong(&path_report_for_interface_locked->interface, *(a1 + 40));
      path_report_for_interface_locked = v3;
    }

    nw_data_transfer_update_path_report_begin(path_report_for_interface_locked, *(a1 + 48));
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 32);

    objc_storeStrong(v5, v4);
  }
}

uint64_t nw_data_transfer_report_get_path_report_for_interface_locked(void *a1, void *a2, int a3)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null report", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (__nwlog_fault(v67, &type, &v94))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v68 = __nwlog_obj();
        v69 = type;
        if (os_log_type_enabled(v68, type))
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
          _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v68 = __nwlog_obj();
        v71 = type;
        v72 = os_log_type_enabled(v68, type);
        if (backtrace_string)
        {
          if (v72)
          {
            *buf = 136446466;
            v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
            v98 = 2082;
            v99 = backtrace_string;
            _os_log_impl(&dword_181A37000, v68, v71, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_122;
        }

        if (v72)
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
          _os_log_impl(&dword_181A37000, v68, v71, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v68 = __nwlog_obj();
        v73 = type;
        if (os_log_type_enabled(v68, type))
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
          _os_log_impl(&dword_181A37000, v68, v73, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_122:
    if (v67)
    {
      free(v67);
    }

    goto LABEL_124;
  }

  if (*(v5 + 11))
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v5[51];
    if (!v8)
    {
      v9 = (v5 + 7);
      goto LABEL_9;
    }

    if (_nw_interface_deep_compare(v8, v7))
    {
LABEL_6:
      v9 = (v5 + 7);
      if (v5[51])
      {
LABEL_10:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          if (v7)
          {
            radio_type = _nw_interface_get_radio_type(v7);
            v12 = nw_interface_radio_type_to_string(radio_type);
          }

          else
          {
            v12 = "none";
          }

          *buf = 136446978;
          v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
          v98 = 2048;
          v99 = v9;
          v100 = 2112;
          *v101 = v7;
          *&v101[8] = 2080;
          v102 = v12;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s found path report %p for interface %@[%s]", buf, 0x2Au);
        }

        goto LABEL_125;
      }

LABEL_9:
      objc_storeStrong(v5 + 51, a2);
      goto LABEL_10;
    }

    if (*(v5 + 11) >= 2u)
    {
      v13 = 1;
      v14 = 352;
      while (!_nw_interface_deep_compare(*&v5[52][v14], v7))
      {
        ++v13;
        v14 += 360;
        if (v13 >= *(v5 + 11))
        {
          goto LABEL_23;
        }
      }

      v15 = v5[52];
      if (v15)
      {
        v9 = &v15[360 * v13 - 360];
        goto LABEL_10;
      }
    }
  }

LABEL_23:
  if (!a3)
  {
LABEL_124:
    v9 = 0;
LABEL_125:

    return v9;
  }

  v16 = nw_interface_get_radio_type(v7);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = nw_interface_get_radio_type(v7);
    *buf = 136446722;
    v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
    v98 = 2112;
    v99 = v7;
    v100 = 2080;
    *v101 = nw_interface_radio_type_to_string(v19);
    v20 = "%{public}s did not find path report for interface %@[%s], creating";
    v21 = v17;
    v22 = 32;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
    v98 = 2112;
    v99 = v7;
    v20 = "%{public}s did not find path report for interface %@, creating";
    v21 = v17;
    v22 = 22;
  }

  _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
LABEL_30:

  v23 = *(v5 + 11) + 1;
  *(v5 + 11) = v23;
  if (v23 == v23 << 31 >> 31)
  {
    goto LABEL_51;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  v25 = *(v5 + 11);
  *buf = 136446978;
  v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
  v98 = 2082;
  v99 = "report->path_count";
  v100 = 2048;
  *v101 = 1;
  *&v101[8] = 2048;
  v102 = v25;
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);

  type = OS_LOG_TYPE_ERROR;
  v94 = 0;
  if (__nwlog_fault(v26, &type, &v94))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        v29 = *(v5 + 11);
        *buf = 136446978;
        v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
        v98 = 2082;
        v99 = "report->path_count";
        v100 = 2048;
        *v101 = 1;
        *&v101[8] = 2048;
        v102 = v29;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
      }
    }

    else if (v94 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v27, type);
      if (v30)
      {
        if (v32)
        {
          v33 = *(v5 + 11);
          *buf = 136447234;
          v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
          v98 = 2082;
          v99 = "report->path_count";
          v100 = 2048;
          *v101 = 1;
          *&v101[8] = 2048;
          v102 = v33;
          v103 = 2082;
          v104 = v30;
          _os_log_impl(&dword_181A37000, v27, v31, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v30);
        if (!v26)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (v32)
      {
        v36 = *(v5 + 11);
        *buf = 136446978;
        v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
        v98 = 2082;
        v99 = "report->path_count";
        v100 = 2048;
        *v101 = 1;
        *&v101[8] = 2048;
        v102 = v36;
        _os_log_impl(&dword_181A37000, v27, v31, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", buf, 0x2Au);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(v27, type))
      {
        v35 = *(v5 + 11);
        *buf = 136446978;
        v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
        v98 = 2082;
        v99 = "report->path_count";
        v100 = 2048;
        *v101 = 1;
        *&v101[8] = 2048;
        v102 = v35;
        _os_log_impl(&dword_181A37000, v27, v34, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
      }
    }
  }

  if (v26)
  {
LABEL_49:
    free(v26);
  }

LABEL_50:
  *(v5 + 11) = -1;
LABEL_51:
  v37 = v5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v38 = gLogObj;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(v5 + 11);
    v40 = *(v37 + 12);
    *buf = 136446978;
    v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
    v98 = 2048;
    v99 = v37;
    v100 = 1024;
    *v101 = v39;
    *&v101[4] = 1024;
    *&v101[6] = v40;
    _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s report %p path_count %u, allocated_path_count %u", buf, 0x22u);
  }

  v41 = *(v5 + 11);
  if (!v41)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
    LODWORD(v92) = 12;
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null report->path_count", buf, v92);

    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v59, &type, &v94))
    {
      goto LABEL_91;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v75 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
        _os_log_impl(&dword_181A37000, v60, v75, "%{public}s called with null report->path_count", buf, 0xCu);
      }
    }

    else if (v94 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v80 = type;
      v81 = os_log_type_enabled(v60, type);
      if (v79)
      {
        if (v81)
        {
          *buf = 136446466;
          v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
          v98 = 2082;
          v99 = v79;
          _os_log_impl(&dword_181A37000, v60, v80, "%{public}s called with null report->path_count, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_91;
      }

      if (v81)
      {
        *buf = 136446210;
        v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
        _os_log_impl(&dword_181A37000, v60, v80, "%{public}s called with null report->path_count, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v60 = __nwlog_obj();
      v88 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
        _os_log_impl(&dword_181A37000, v60, v88, "%{public}s called with null report->path_count, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_90:

    goto LABEL_91;
  }

  v42 = v41 - 1;
  v43 = *(v37 + 12);
  if (v42 <= v43)
  {
    goto LABEL_62;
  }

  v44 = v43 + 4;
  *(v37 + 12) = v44;
  v45 = *(v37 + 52);
  if (!v45)
  {
    if (v43 == -4)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      *buf = 136446210;
      v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
      LODWORD(v92) = 12;
      v91 = _os_log_send_and_compose_impl(v90, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s strict_calloc called with count 0", buf, v92);

      result = __nwlog_should_abort(v91);
      if (result)
      {
        goto LABEL_147;
      }

      free(v91);
    }

    v48 = malloc_type_calloc(v44, 0x168uLL, 0x124A0805uLL);
    if (v48)
    {
      *(v37 + 52) = v48;
LABEL_62:
      if (gLogDatapath == 1)
      {
        v76 = __nwlog_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          v77 = *(v5 + 11);
          v78 = *(v37 + 12);
          *buf = 136446978;
          v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
          v98 = 2048;
          v99 = v37;
          v100 = 1024;
          *v101 = v77;
          *&v101[4] = 1024;
          *&v101[6] = v78;
          _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s report %p after adding path, path_count %u, allocated_path_count %u", buf, 0x22u);
        }
      }

      goto LABEL_63;
    }

    v53 = __nwlog_obj();
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v98 = 2048;
    v99 = v44;
    v100 = 2048;
    *v101 = 360;
    LODWORD(v92) = 32;
    v56 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v92);

    result = __nwlog_should_abort(v56);
    if (result)
    {
      goto LABEL_147;
    }

    free(v56);
    *(v37 + 52) = 0;
    v58 = __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
    LODWORD(v93) = 12;
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null report->secondary_paths", buf, v93);

    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (__nwlog_fault(v59, &type, &v94))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v60 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null report->secondary_paths", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v63 = type;
        v64 = os_log_type_enabled(v60, type);
        if (v62)
        {
          if (v64)
          {
            *buf = 136446466;
            v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
            v98 = 2082;
            v99 = v62;
            _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null report->secondary_paths, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v62);
          if (!v59)
          {
            goto LABEL_63;
          }

LABEL_92:
          free(v59);
LABEL_63:

          v49 = *(v5 + 11);
          if (v49 == 1)
          {
            v9 = (v37 + 56);
          }

          else
          {
            v9 = *(v37 + 52) + 360 * (v49 - 2);
          }

          objc_storeStrong((v9 + 352), a2);
          if (gLogDatapath == 1)
          {
            v50 = __nwlog_obj();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v51 = nw_interface_get_radio_type(v7);
              v52 = nw_interface_radio_type_to_string(v51);
              *buf = 136446978;
              v97 = "nw_data_transfer_report_get_path_report_for_interface_locked";
              v98 = 2048;
              v99 = v9;
              v100 = 2112;
              *v101 = v7;
              *&v101[8] = 2080;
              v102 = v52;
              _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s created path report %p for interface %@[%s]", buf, 0x2Au);
            }
          }

          goto LABEL_125;
        }

        if (v64)
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
          _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null report->secondary_paths, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v65 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446210;
          v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
          _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null report->secondary_paths, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_90;
    }

LABEL_91:
    if (!v59)
    {
      goto LABEL_63;
    }

    goto LABEL_92;
  }

  if (v43 == -4)
  {
    v82 = __nwlog_obj();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *buf = 136446210;
    v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
    LODWORD(v92) = 12;
    v84 = _os_log_send_and_compose_impl(v83, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s strict_reallocf called with size 0", buf, v92);

    result = __nwlog_should_abort(v84);
    if (result)
    {
      goto LABEL_147;
    }

    free(v84);
    v45 = *(v37 + 52);
  }

  v46 = 360 * v44;
  v47 = reallocf(v45, v46);
  if (v47)
  {
LABEL_58:
    *(v37 + 52) = v47;
    bzero(&v47[360 * (*(v37 + 12) - 4)], 0x5A0uLL);
    goto LABEL_62;
  }

  v85 = __nwlog_obj();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    v86 = 3;
  }

  else
  {
    v86 = 2;
  }

  *buf = 136446466;
  v97 = "nw_data_transfer_report_allocate_additional_path_reports_if_necessary_locked";
  v98 = 2048;
  v99 = v46;
  LODWORD(v92) = 22;
  v87 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s strict_reallocf(%zu) failed", buf, v92);

  result = __nwlog_should_abort(v87);
  if (!result)
  {
    free(v87);
    v47 = 0;
    goto LABEL_58;
  }

LABEL_147:
  __break(1u);
  return result;
}

unint64_t nw_interface_get_radio_type(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_radio_type(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_get_radio_type";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_get_radio_type";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_get_radio_type";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_get_radio_type";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_get_radio_type";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

unint64_t _nw_interface_get_radio_type(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 120);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

nw_data_transfer_report_t nw_connection_create_new_data_transfer_report(nw_connection_t connection)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = connection;
  v3 = objc_alloc_init(NWConcrete_nw_data_transfer_report);
  objc_storeStrong(v3 + 3, connection);
  v4 = v2;
  v5 = v3;
  if (v4)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_connection_add_data_transfer_report_block_invoke;
    v18 = &unk_1E6A3D760;
    v19 = v4;
    v20 = v5;
    nw_connection_async_if_needed(v19, buf);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_add_data_transfer_report";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

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
        *&buf[4] = "nw_connection_add_data_transfer_report";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
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
          *&buf[4] = "nw_connection_add_data_transfer_report";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_add_data_transfer_report";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_add_data_transfer_report";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:

  return v5;
}

void nw_data_transfer_update_path_report_begin(nw_data_transfer_path_report *a1, nw_data_transfer_snapshot *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_data_transfer_update_path_report_begin";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null path_report", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v3, &type, &v15))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_update_path_report_begin";
        v6 = "%{public}s called with null path_report";
LABEL_36:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v12 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_data_transfer_update_path_report_begin";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null path_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v3)
        {
          return;
        }

LABEL_39:
        free(v3);
        return;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_update_path_report_begin";
        v6 = "%{public}s called with null path_report, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v18 = "nw_data_transfer_update_path_report_begin";
        v6 = "%{public}s called with null path_report, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v8 = a2;
      v9 = a1;
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v18 = "nw_data_transfer_update_path_report_begin";
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v8;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s updating path report %p with beginning snapshot %p", buf, 0x20u);
      }

      a1 = v9;
      a2 = v8;
    }

    *&a1->incremental.received_ip_packet_count = *&a2->var1;
    *&a1->incremental.received_ip_ect0_packet_count = *&a2->var3;
    *&a1->incremental.sent_ip_packet_count = *&a2->var5;
    *&a1->incremental.received_transport_duplicate_byte_count = *&a2->var7;
    *&a1->incremental.sent_transport_byte_count = *&a2->var9;
    *&a1->incremental.sent_transport_ecn_capable_packet_count = *&a2->var11;
    *&a1->incremental.sent_transport_ecn_capable_marked_packet_count = *&a2->var13;
    *&a1->incremental.received_application_byte_count = *&a2->var21;
    *&a1->total.transport_smoothed_rtt_milliseconds = *&a2->var15;
    *&a1->total.transport_current_rtt_milliseconds = *&a2->var17;
    *&a1->total.transport_congestion_window = *&a2->var19;
    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_data_transfer_update_path_report_begin";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null snapshot", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v3, &type, &v15))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (os_log_type_enabled(v4, type))
    {
      *buf = 136446210;
      v18 = "nw_data_transfer_update_path_report_begin";
      v6 = "%{public}s called with null snapshot";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v15 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (os_log_type_enabled(v4, type))
    {
      *buf = 136446210;
      v18 = "nw_data_transfer_update_path_report_begin";
      v6 = "%{public}s called with null snapshot, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v14 = os_log_type_enabled(v4, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_data_transfer_update_path_report_begin";
      v6 = "%{public}s called with null snapshot, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_data_transfer_update_path_report_begin";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null snapshot, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v3)
  {
    goto LABEL_39;
  }
}

void *_nw_endpoint_copy_host_port_endpoint_for_url(void *a1)
{
  v1 = a1;
  v2 = sub_181C024CC();

  return v2;
}

void *sub_181C024CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v10, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181AA91BC(v6, v9, type metadata accessor for URLEndpoint);
    if (sub_181C029F8())
    {
      v11 = sub_182AD1FE8();
      if (v12)
      {
        *v54 = v11;
        *&v54[8] = v12;
        sub_182AD2FE8();
        sub_18217E730();
        v13 = sub_182AD2FB8();
        v15 = v14;

        if (v15)
        {
          v16 = v13;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0xE000000000000000;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      *v54 = v16;
      *&v54[8] = v17;
      sub_181AC2364();
      v24 = sub_182AD3A28();
      v26 = v25;

      if (!v26 || (sub_18217AB24(v24, v26, v54), *v54 == 1))
      {
        v18 = type metadata accessor for URLEndpoint;
        v19 = v9;
        goto LABEL_17;
      }

      *v50 = *v54;
      *&v50[8] = *&v54[8];
      *&v50[24] = *&v54[24];
      *&v50[40] = *&v54[40];
      *&v50[56] = *&v54[56];
      v32 = objc_allocWithZone(ObjectType);
      v51 = *v54;
      v52 = *&v54[16];
      v53[0] = *&v54[32];
      *(v53 + 12) = *&v54[44];
      sub_181D6B080(&v51, &v45);
      v27 = Endpoint.init(_:)(v50);
      sub_181B2B254(v1);
    }

    else
    {
      v43 = ObjectType;
      v20 = sub_182AD1FF8();
      if (v21)
      {
        v22 = v20;
        v23 = v21;
      }

      else
      {
        v28 = sub_182AD1FE8();
        if (v29)
        {
          *v54 = v28;
          *&v54[8] = v29;
          sub_182AD2FE8();
          sub_18217E730();
          v30 = sub_182AD2FB8();
          v23 = v31;

          if (v23)
          {
            v22 = v30;
          }

          else
          {
            v22 = 0;
          }

          if (!v23)
          {
            v23 = 0xE000000000000000;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }
      }

      v33 = sub_182AD2028();
      if (v34)
      {
        v35 = *&v9[*(v7 + 28)];
      }

      else
      {
        v35 = v33;
      }

      sub_181AB3234(v35, v54);
      v36 = *v54;
      v55 = *&v54[8];
      v56 = *&v54[24];
      v57 = *&v54[40];
      v58 = *&v54[56];
      if (*v54 == 1)
      {
        v37 = sub_182AD2028();
        if (v38)
        {
          v37 = *&v9[*(v7 + 28)];
        }

        v51 = 0uLL;
        *&v52 = v22;
        *(&v52 + 1) = v23;
        LOWORD(v53[0]) = v37;
        *(v53 + 2) = 0;
        v39 = objc_allocWithZone(v43);
        v27 = Endpoint.init(_:)(&v51);
        sub_181B2B254(v1);
        goto LABEL_36;
      }

      *v50 = *v54;
      *&v50[16] = *&v54[16];
      *&v50[32] = *&v54[32];
      *&v50[44] = *&v54[44];
      sub_181D6B080(v50, &v51);

      v45 = v36;
      v46 = v55;
      v47 = v56;
      v48 = v57;
      v49 = v58;
      v40 = objc_allocWithZone(v43);
      v51 = *v54;
      v52 = *&v54[16];
      v53[0] = *&v54[32];
      *(v53 + 12) = *&v54[44];
      sub_181D6B080(&v51, &v44);
      v27 = Endpoint.init(_:)(&v45);
      sub_181B2B254(v1);
      sub_181F49A88(v54, &unk_1EA83A480, &qword_182AFB9A0);
    }

    sub_181F49A88(v54, &unk_1EA83A480, &qword_182AFB9A0);
LABEL_36:
    sub_181A5513C(v9, type metadata accessor for URLEndpoint);
    return v27;
  }

  v18 = type metadata accessor for Endpoint.EndpointType;
  v19 = v6;
LABEL_17:
  sub_181A5513C(v19, v18);
  return 0;
}

uint64_t sub_181C029F8()
{
  type metadata accessor for URLEndpoint(0);
  sub_182AD2038();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_182AD3028();
  v3 = v2;

  v4 = v1 == 0x6E752B7370747468 && v3 == 0xEA00000000007869;
  if (v4 || (sub_182AD4268() & 1) != 0 || (v1 == 0x696E752B70747468 ? (v5 = v3 == 0xE900000000000078) : (v5 = 0), v5 || (sub_182AD4268() & 1) != 0 || v1 == 0x78696E752B737377 && v3 == 0xE800000000000000 || (sub_182AD4268() & 1) != 0 || v1 == 0x78696E752B7377 && v3 == 0xE700000000000000))
  {

    return 1;
  }

  else
  {
    v7 = sub_182AD4268();

    return v7 & 1;
  }
}

void nw_parameters_set_url_endpoint(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_parameters_set_url_endpoint";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_parameters_set_url_endpoint";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v22 == 1)
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
          v25 = "nw_parameters_set_url_endpoint";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v9);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_parameters_set_url_endpoint";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_parameters_set_url_endpoint";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v4 || (v6 = v4, v7 = _nw_endpoint_get_type(v6), v6, v7 == 4))
  {
    _nw_parameters_set_url_endpoint(v3, v5);
    goto LABEL_5;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_parameters_set_url_endpoint";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null (nw_endpoint_get_type(url_endpoint) == nw_endpoint_type_url)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_parameters_set_url_endpoint";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null (nw_endpoint_get_type(url_endpoint) == nw_endpoint_type_url)", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_parameters_set_url_endpoint";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null (nw_endpoint_get_type(url_endpoint) == nw_endpoint_type_url), backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
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
      v25 = "nw_parameters_set_url_endpoint";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null (nw_endpoint_get_type(url_endpoint) == nw_endpoint_type_url), no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_parameters_set_url_endpoint";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null (nw_endpoint_get_type(url_endpoint) == nw_endpoint_type_url), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_40;
  }

LABEL_5:
}

nw_endpoint_t nw_endpoint_create_url(const char *url)
{
  v15 = *MEMORY[0x1E69E9840];
  if (url)
  {

    return _nw_endpoint_create_url(url);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_url";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null url", buf, 12);

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
        v12 = "nw_endpoint_create_url";
        v6 = "%{public}s called with null url";
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
            v12 = "nw_endpoint_create_url";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null url, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_url";
        v6 = "%{public}s called with null url, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_url";
        v6 = "%{public}s called with null url, backtrace limit exceeded";
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

BOOL nw_protocol_options_is_tcp(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_is_tcp();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_is_tcp";
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
        v12 = "nw_protocol_options_is_tcp";
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
            v12 = "nw_protocol_options_is_tcp";
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
        v12 = "nw_protocol_options_is_tcp";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_is_tcp";
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

id nw_endpoint_copy_parent_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_parent_endpoint(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_parent_endpoint";
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
        v16 = "nw_endpoint_copy_parent_endpoint";
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
          v16 = "nw_endpoint_copy_parent_endpoint";
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
        v16 = "nw_endpoint_copy_parent_endpoint";
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
        v16 = "nw_endpoint_copy_parent_endpoint";
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

BOOL nw_parameters_get_sensitive_redacted_for_endpoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = 0;
  if (!v3 || nw_parameters_get_sensitive_redacted(v3))
  {
    if (!v4 || (v5 = v4, do_not_redact = _nw_endpoint_get_do_not_redact(v5), v5, (do_not_redact & 1) == 0))
    {
      v7 = 1;
    }
  }

  return v7;
}

uint64_t _nw_endpoint_get_do_not_redact(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_context];
  v2 = a1;
  LOBYTE(v1) = nw_context_get_sensitive_redacted(v1);
  v3 = *&v2[OBJC_IVAR____TtC7Network8Endpoint_flags];

  return ((v1 & 1) == 0) | (v3 >> 7) & 1;
}

uint64_t nw_endpoint_get_parent_endpoint_domain(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    parent_endpoint_domain = _nw_endpoint_get_parent_endpoint_domain(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_parent_endpoint_domain";
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
        v16 = "nw_endpoint_get_parent_endpoint_domain";
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
          v16 = "nw_endpoint_get_parent_endpoint_domain";
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
        v16 = "nw_endpoint_get_parent_endpoint_domain";
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
        v16 = "nw_endpoint_get_parent_endpoint_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  parent_endpoint_domain = 0;
LABEL_3:

  return parent_endpoint_domain;
}

uint64_t _nw_endpoint_get_parent_endpoint_domain(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
  v2 = a1;
  domain_for_policy = nw_endpoint_get_domain_for_policy(v1);

  return domain_for_policy;
}

uint64_t nw_endpoint_get_domain_for_policy(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    domain_for_policy = _nw_endpoint_get_domain_for_policy(v1);
  }

  else
  {
    domain_for_policy = 0;
  }

  return domain_for_policy;
}

uint64_t nw_parameters_get_enable_tls_keylog()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v1 = nw_setting_tcpconn_enable_tls_keylog;

    return networkd_settings_get_BOOL(v1);
  }

  return result;
}

char *_nw_endpoint_copy_original_endpoint(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_181C03CEC(a2);

  return v4;
}

char *sub_181C03CEC(uint64_t a1)
{
  v3 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_181BBDBA8();
  if (v9)
  {
    v10 = v9;
    v11 = sub_181C03CEC(a1);

    return v11;
  }

  else
  {
    v13 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181ACC828(&v1[v13], v8, type metadata accessor for Endpoint.EndpointType);
    sub_181AA91BC(v8, v5, type metadata accessor for Endpoint.EndpointType);
    v14 = dword_182AE69B4[swift_getEnumCaseMultiPayload()];
    sub_181A5513C(v5, type metadata accessor for Endpoint.EndpointType);
    if (v14 == a1 || (v15 = *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint]) == 0)
    {
      v17 = v1;
    }

    else if (v15 == v1)
    {
      v18 = qword_1ED40FE10;
      v19 = v15;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1ED411BA0);
      v21 = sub_182AD2678();
      v22 = sub_182AD38C8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_181A37000, v21, v22, "An endpoint cannot be its own parent", v23, 2u);
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      return 0;
    }

    else
    {
      v16 = v15;
      v1 = sub_181C03CEC(a1);
    }

    return v1;
  }
}

uint64_t sub_181C03F60(uint64_t a1)
{
  v2 = *(a1 + 88);

  if ((~v2 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 80);
  v5 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = &unk_1ED40FF50;
        v7 = &unk_1EA838DE0;
        v8 = &unk_182AE6F00;
      }

      else
      {
        v6 = &qword_1ED40F830;
        v7 = &qword_1EA838AB0;
        v8 = &qword_182AE6A10;
      }
    }

    else
    {
      v6 = &qword_1ED40F850;
      v7 = &unk_1EA838710;
      v8 = &qword_182AE4BA0;
    }

    goto LABEL_15;
  }

  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      v6 = qword_1ED40FB50;
      v7 = &unk_1EA838750;
      v8 = &unk_182AE4BD0;
    }

    else
    {
      v6 = &unk_1EA838AE0;
      v7 = &unk_1EA838DD0;
      v8 = &qword_182AE4BE0;
    }

LABEL_15:
    v9 = sub_181AA8428(v6, v7, v8);
    goto LABEL_16;
  }

  if (v5 != 5)
  {
LABEL_2:

    return 0;
  }

  v9 = v2 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_16:
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 336);
  v12 = sub_181AACFF4(v4, v2);
  v13 = v11(ObjectType, v9, v12);

  sub_181A53008(v4, v2);
  return v13;
}

void nw_protocol_connected(char *a1, uint64_t a2)
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
        v51 = "__nw_protocol_connected";
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
          v51 = "__nw_protocol_connected";
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
          v51 = "__nw_protocol_connected";
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
          v51 = "__nw_protocol_connected";
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
          v51 = "__nw_protocol_connected";
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

    v17 = *(v10 + 40);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_connected";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);
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
      v51 = "__nw_protocol_connected";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
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
          v51 = "__nw_protocol_connected";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v51 = "__nw_protocol_connected";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
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
      v51 = "__nw_protocol_connected";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_connected";
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
      v51 = "__nw_protocol_connected";
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
          v51 = "__nw_protocol_connected";
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
      v51 = "__nw_protocol_connected";
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
      v51 = "__nw_protocol_connected";
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