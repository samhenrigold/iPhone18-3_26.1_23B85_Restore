void sub_1822E4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  v34 = a32;

  if ((v34 & 1) == 0)
  {
    _Unwind_Resume(a1);
  }

  nw::release_if_needed<nw_protocol *>(&a31);
  _Unwind_Resume(a1);
}

uint64_t nw_aop2_offload_hash_table_key_hash(unsigned int *a1, int a2)
{
  if (a2 != 4)
  {
    __assert_rtn("nw_aop2_offload_hash_table_key_hash", "protocol_aop2_offload.mm", 414, "key_length == sizeof(uint32_t)");
  }

  return *a1;
}

void ___ZL37nw_aop2_offload_setup_aon_net_serviceP30nw_aop2_offload_aon_net_clientPKcS2_S2_S2__block_invoke_40(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_aop2_offload_setup_aon_net_service_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 1024;
      LODWORD(v26) = a2;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s aop2_offload: notification(%llu) for flow tag 0x%x", buf, 0x1Cu);
    }
  }

  if (a3 == 1)
  {
    if (a4)
    {
      if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
      {
        dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
      }

      v7 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
      psk = aon_net_tls_psk_data_get_psk();
      psk_len = aon_net_tls_psk_data_get_psk_len();
      if (psk && psk_len)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:psk length:psk_len];
        psk_id = aon_net_tls_psk_data_get_psk_id();
        psk_id_len = aon_net_tls_psk_data_get_psk_id_len();
        if (psk_id && psk_id_len)
        {
          v13 = [MEMORY[0x1E695DEF0] dataWithBytes:psk_id length:psk_id_len];
          negotiated_cipher = aon_net_tls_psk_data_get_negotiated_cipher();
          psk_ticket_age_add = aon_net_tls_psk_data_get_psk_ticket_age_add();
          psk_ticket_lifetime = aon_net_tls_psk_data_get_psk_ticket_lifetime();
          v24.tv_sec = 0;
          *&v24.tv_usec = 0;
          gettimeofday(&v24, 0);
          v17 = [objc_alloc(MEMORY[0x1E697AAB8]) initWithPSK:v10 :v13 :psk_ticket_age_add :v24.tv_sec :psk_ticket_lifetime];
          v18 = *(v7 + 688);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL39nw_aop2_offload_aon_net_client_psk_infojP22aon_net_tls_psk_data_s_block_invoke;
          v26 = &unk_1E6A2B0A0;
          v29 = a2;
          v27 = v17;
          v28 = v7;
          v30 = negotiated_cipher;
          v19 = v17;
          nw_queue_context_async(v18, buf);
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_aop2_offload_aon_net_client_psk_info";
            *&buf[12] = 1024;
            *&buf[14] = a2;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s Flow tag 0x%x: psk info does not contain psk id", buf, 0x12u);
          }

          v13 = 0;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_aop2_offload_aon_net_client_psk_info";
          *&buf[12] = 1024;
          *&buf[14] = a2;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Flow tag 0x%x: psk info does not contain psk", buf, 0x12u);
        }

        v13 = 0;
        v10 = 0;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_aop2_offload_aon_net_client_process_notification";
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s val is null for AON_NET_NOTIFICATION_TYPE_TLS_PSK", buf, 0xCu);
      }
    }
  }
}

void ___ZL39nw_aop2_offload_aon_net_client_psk_infojP22aon_net_tls_psk_data_s_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 656);
  if (v2)
  {
    node = nw_hash_table_get_node(v2, a1 + 48, 4);
    if (node)
    {
      v4 = node[2];
      if (v4)
      {
        v5 = v4 - 96;
        v6 = *(a1 + 32);
        v7 = *(v4 - 56);
        v8 = v4 - 96;
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v4 - 32)) != 0)
        {
          v12 = *(v8 + 88);
          if (v12)
          {
            *(v8 + 88) = v12 + 1;
          }

          v9 = 0;
          v32 = v4 - 96;
          v33 = -1;
          if (v7 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v32 = v4 - 96;
          v33 = 0;
          v9 = 1;
        }

        if (v7 != &nw_protocol_ref_counted_additional_handle)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          *buf = 136446210;
          *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
          v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null aop2_offload", buf, 12);

          type[0] = OS_LOG_TYPE_ERROR;
          v31 = 0;
          if (__nwlog_fault(v14, type, &v31))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              v16 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
                _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null aop2_offload", buf, 0xCu);
              }
            }

            else if (v31 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              if (backtrace_string)
              {
                v26 = backtrace_string;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v27 = gLogObj;
                v28 = type[0];
                if (os_log_type_enabled(v27, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
                  *&buf[12] = 2082;
                  *&buf[14] = v26;
                  _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null aop2_offload, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v26);
                if (!v14)
                {
                  goto LABEL_39;
                }

                goto LABEL_21;
              }

              v15 = __nwlog_obj();
              v30 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
                _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null aop2_offload, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              v29 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
                _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null aop2_offload, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v14)
          {
LABEL_39:
            if ((v9 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(&v32);
            }

            return;
          }

LABEL_21:
          free(v14);
          goto LABEL_39;
        }

        v5 = *(v4 - 32);
LABEL_23:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v40 = __Block_byref_object_copy__55;
        v41 = __Block_byref_object_dispose__56;
        v42 = 0;
        v17 = nw_protocol_copy_info_quiet(*(v4 - 64));
        v18 = v17;
        if (v17)
        {
          *type = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = ___ZL42nw_protocol_aop2_offload_copy_tls_metadataP11nw_protocol_block_invoke;
          v37 = &unk_1E6A39B60;
          v38 = buf;
          _nw_array_apply(v17, type);
        }

        v19 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        if (v19)
        {
          sec_protocol_metadata_set_session_ticket_info();
          sec_protocol_metadata_set_negotiated_tls_ciphersuite();
          v20 = *(v5 + 136);
          if (!v20)
          {
            goto LABEL_38;
          }

          v21 = *(v5 + 144);
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = v21;
          v23 = _Block_copy(v20);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL41nw_protocol_aop2_offload_set_tls_psk_infoP11nw_protocolP14SecSessionInfo17tls_ciphersuite_t_block_invoke;
          v40 = &unk_1E6A3D710;
          v42 = v23;
          v41 = v19;
          v24 = v23;
          dispatch_async(v22, buf);
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_aop2_offload_set_tls_psk_info";
            *&buf[12] = 2082;
            *&buf[14] = v5 + 288;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tls metadata is nil", buf, 0x16u);
          }
        }

LABEL_38:
        goto LABEL_39;
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 48);
    *buf = 136446466;
    *&buf[4] = "nw_aop2_offload_aon_net_client_psk_info_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s failed to find client for connected flow tag %u", buf, 0x12u);
  }
}

void sub_1822E5CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  if ((v28 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL42nw_protocol_aop2_offload_copy_tls_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (nw_protocol_metadata_is_tls(v5))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  return 1;
}

uint64_t ___ZL37nw_aop2_offload_setup_aon_net_serviceP30nw_aop2_offload_aon_net_clientPKcS2_S2_S2__block_invoke_36(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = a2;
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 136446466;
      *&v7[4] = "nw_aop2_offload_setup_aon_net_service_block_invoke";
      *&v7[12] = 1024;
      *&v7[14] = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s aop2_offload: tx complete buffers count %u", v7, 0x12u);
    }

    a2 = v4;
  }

  if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
  {
    v6 = a2;
    dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
    a2 = v6;
  }

  v2 = *(nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager + 688);
  *v7 = MEMORY[0x1E69E9820];
  *&v7[8] = 3221225472;
  *&v7[16] = ___ZL44nw_aop2_offload_manager_process_tx_availablej_block_invoke;
  v8 = &__block_descriptor_44_e5_v8__0l;
  v9 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
  v10 = a2;
  nw_queue_context_async(v2, v7);
  return 0;
}

void ___ZL44nw_aop2_offload_manager_process_tx_availablej_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 600) += *(a1 + 40);
  if (nw_hash_table_count(*(v2 + 656)))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 656);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZL44nw_aop2_offload_manager_process_tx_availablej_block_invoke_2;
    v5[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
    v5[4] = v3;
    nw_hash_table_apply(v4, v5);
  }
}

BOOL ___ZL44nw_aop2_offload_manager_process_tx_availablej_block_invoke_2(uint64_t a1, uint64_t a2)
{
  nw_hash_node_get_object(a2);
  v4 = *(*(*(nw_hash_node_get_extra(a2) + 16) + 24) + 72);
  if (v4)
  {
    v4();
  }

  return *(*(a1 + 32) + 600) != 0;
}

uint64_t ___ZL37nw_aop2_offload_setup_aon_net_serviceP30nw_aop2_offload_aon_net_clientPKcS2_S2_S2__block_invoke_32(uint64_t a1, int a2, int a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = a4;
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 136446722;
      *&v13[4] = "nw_aop2_offload_setup_aon_net_service_block_invoke";
      *&v13[12] = 1024;
      *&v13[14] = v6;
      *&v13[18] = 1024;
      *&v13[20] = v8;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s aop2_offload: rx submit buffers count %u, wake buffer id %u", v13, 0x18u);
    }

    LOWORD(a4) = v8;
    a2 = v7;
    a3 = v6;
  }

  if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
  {
    v10 = a2;
    v11 = a4;
    v12 = a3;
    dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
    a3 = v12;
    a2 = v10;
    LOWORD(a4) = v11;
    if (!v12)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (a3)
  {
LABEL_4:
    v4 = *(nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager + 688);
    *v13 = MEMORY[0x1E69E9820];
    *&v13[8] = 3221225472;
    *&v13[16] = ___ZL44nw_aop2_offload_manager_process_rx_availablejjt_block_invoke;
    v14 = &__block_descriptor_50_e5_v8__0l;
    v15 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
    v16 = a3;
    v17 = a2;
    v18 = a4;
    nw_queue_context_async(v4, v13);
  }

  return 0;
}

void ___ZL44nw_aop2_offload_manager_process_rx_availablejjt_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = "aon_net_rx_buffer_is_valid(client, net_buffer)";
    while (1)
    {
      v3 = *(a1 + 32);
      v62 = *(a1 + 48);
      memset(v72, 0, sizeof(v72));
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 608);
      v5 = 0;
      *v64 = 0;
      while (1)
      {
        v6 = v4;
        if (!v4)
        {
          nw_aop2_offload_manager_allocate_frames(v3);
          v6 = *(v3 + 608);
          if (!v6)
          {
            break;
          }
        }

        v7 = aon_net_rx_dequeue_buffer();
        if ((aon_net_rx_buffer_is_valid() & 1) == 0)
        {
          v59 = 800;
          goto LABEL_103;
        }

        *v64 = aon_net_rx_get_buffer_flow_id();
        buffer_address = aon_net_rx_get_buffer_address();
        buffer_length = aon_net_rx_get_buffer_length();
        if (!buffer_address)
        {
          v59 = 805;
          v2 = "buffer != NULL";
          goto LABEL_103;
        }

        v10 = buffer_length;
        if (!buffer_length)
        {
          v59 = 806;
          v2 = "length > 0";
LABEL_103:
          __assert_rtn("nw_aop2_offload_manager_add_input_frames", "protocol_aop2_offload.mm", v59, v2);
        }

        v11 = *(v3 + 656);
        if (v11 && (node = nw_hash_table_get_node(v11, v64, 4)) != 0 && (v13 = node, (v14 = node[6]) != 0))
        {
          nw_frame_reset(v6, buffer_address, v10, nw_aop2_offload_manager_input_frame_finalize, v3);
          nw_frame_set_metadata(v6, 0, 1, 0);
          v15 = *(v6 + 102);
          *(v6 + 102) = v15 & 0x7FFF | ((v7 == v62) << 15);
          if ((v15 & 4) == 0)
          {
            __assert_rtn("nw_aop2_offload_manager_add_input_frames", "protocol_aop2_offload.mm", 834, "frame_info");
          }

          v17 = v6 + 16;
          v16 = *(v6 + 2);
          *(v6 + 104) = v7;
          if (!v16 && !*(v6 + 3))
          {
            v16 = 0;
          }

          v4 = v16;
          v18 = *(v6 + 2);
          v19 = *(v6 + 3);
          v20 = (v18 + 24);
          if (!v18)
          {
            v20 = (v3 + 616);
          }

          *v20 = v19;
          *v19 = v18;
          *v17 = 0;
          *(v6 + 3) = 0;
          v21 = *(v3 + 648);
          *(v6 + 3) = v21;
          *v21 = v6;
          *(v3 + 648) = v17;
          ++*(v3 + 684);
          *(v6 + 4) = 0;
          v22 = v13[5];
          *(v6 + 5) = v22;
          *v22 = v6;
          v13[5] = (v6 + 32);

          if (v5)
          {
            v23 = v72;
            v24 = v5;
            v2 = "aon_net_rx_buffer_is_valid(client, net_buffer)";
            while (*v23 != v14)
            {
              ++v23;
              if (!--v24)
              {
                v25 = v5;
                goto LABEL_31;
              }
            }
          }

          else
          {
            v25 = 0;
            v2 = "aon_net_rx_buffer_is_valid(client, net_buffer)";
LABEL_31:
            *(v72 + v25) = v14;
            ++v5;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v67 = "nw_aop2_offload_manager_add_input_frames";
            v68 = 1024;
            LODWORD(v69) = *v64;
            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s failed to find client for buffer with flow tag 0x%x", buf, 0x12u);
          }

          aon_net_dealloc_rx_buffer();
          v4 = v6;
          v2 = "aon_net_rx_buffer_is_valid(client, net_buffer)";
        }

        --v1;
        if (v5 > 0x1F || !v1)
        {
          goto LABEL_33;
        }
      }

      v4 = 0;
LABEL_33:
      if (v5)
      {
        v27 = v72;
        v28 = v5;
        while (1)
        {
          v29 = *(*v27 + 56);
          if (!v29 || (*(v29 + 93) & 1) == 0)
          {
            goto LABEL_36;
          }

          v30 = *(*v27 + 24);
          if (v30 && (v31 = *(v30 + 64)) != 0)
          {
            v31();
          }

          else
          {
            v32 = *v27;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v34 = v32;
            v35 = *(v32 + 16);
            if (!v35)
            {
              v35 = "invalid";
            }

            *buf = 136446466;
            v67 = "nw_aop2_offload_manager_add_input_frames";
            v68 = 2082;
            v69 = v35;
            LODWORD(v60) = 22;
            v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s protocol %{public}s has invalid input_available callback", buf, v60);

            type = OS_LOG_TYPE_ERROR;
            v63 = 0;
            if (__nwlog_fault(v36, &type, &v63))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v37 = gLogObj;
                v38 = type;
                if (os_log_type_enabled(v37, type))
                {
                  v39 = *(v34 + 16);
                  if (!v39)
                  {
                    v39 = "invalid";
                  }

                  *buf = 136446466;
                  v67 = "nw_aop2_offload_manager_add_input_frames";
                  v68 = 2082;
                  v69 = v39;
                  _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol %{public}s has invalid input_available callback", buf, 0x16u);
                }
              }

              else if (v63 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v37 = __nwlog_obj();
                v41 = type;
                v42 = os_log_type_enabled(v37, type);
                if (backtrace_string)
                {
                  if (v42)
                  {
                    v43 = *(v34 + 16);
                    if (!v43)
                    {
                      v43 = "invalid";
                    }

                    *buf = 136446722;
                    v67 = "nw_aop2_offload_manager_add_input_frames";
                    v68 = 2082;
                    v69 = v43;
                    v70 = 2082;
                    v71 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v37, v41, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(backtrace_string);
                  if (!v36)
                  {
                    goto LABEL_36;
                  }

LABEL_51:
                  free(v36);
                  goto LABEL_36;
                }

                if (v42)
                {
                  v46 = *(v34 + 16);
                  if (!v46)
                  {
                    v46 = "invalid";
                  }

                  *buf = 136446466;
                  v67 = "nw_aop2_offload_manager_add_input_frames";
                  v68 = 2082;
                  v69 = v46;
                  _os_log_impl(&dword_181A37000, v37, v41, "%{public}s protocol %{public}s has invalid input_available callback, no backtrace", buf, 0x16u);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v37 = gLogObj;
                v44 = type;
                if (os_log_type_enabled(v37, type))
                {
                  v45 = *(v34 + 16);
                  if (!v45)
                  {
                    v45 = "invalid";
                  }

                  *buf = 136446466;
                  v67 = "nw_aop2_offload_manager_add_input_frames";
                  v68 = 2082;
                  v69 = v45;
                  _os_log_impl(&dword_181A37000, v37, v44, "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded", buf, 0x16u);
                }
              }
            }

            if (v36)
            {
              goto LABEL_51;
            }
          }

LABEL_36:
          v27 = (v27 + 8);
          if (!--v28)
          {
            v47 = v72;
            do
            {
              if (*(*v47 + 56))
              {
                v48 = *(*v47 + 24);
                if (v48)
                {
                  v49 = *(v48 + 264);
                  if (v49)
                  {
                    v49();
                  }
                }
              }

              v47 = (v47 + 8);
              --v5;
            }

            while (v5);
            goto LABEL_78;
          }
        }
      }

      if (!*(v3 + 640))
      {
        *(v3 + 684) = 0;
        aon_net_rx_ring_sync();
      }

LABEL_78:

LABEL_79:
      v2 = "aon_net_rx_buffer_is_valid(client, net_buffer)";
      if (!v1)
      {
        return;
      }
    }

    v50 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_aop2_offload_manager_add_input_frames";
    LODWORD(v60) = 12;
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null aop2_offload_manager", buf, v60);

    v64[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v51, v64, &type))
    {
      if (v64[0] == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = v64[0];
        if (os_log_type_enabled(v52, v64[0]))
        {
          *buf = 136446210;
          v67 = "nw_aop2_offload_manager_add_input_frames";
          _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null aop2_offload_manager", buf, 0xCu);
        }
      }

      else
      {
        if (type == OS_LOG_TYPE_INFO)
        {
          v54 = __nw_create_backtrace_string();
          v55 = __nwlog_obj();
          v56 = v64[0];
          v57 = os_log_type_enabled(v55, v64[0]);
          if (v54)
          {
            if (v57)
            {
              *buf = 136446466;
              v67 = "nw_aop2_offload_manager_add_input_frames";
              v68 = 2082;
              v69 = v54;
              _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null aop2_offload_manager, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v54);
          }

          else
          {
            if (v57)
            {
              *buf = 136446210;
              v67 = "nw_aop2_offload_manager_add_input_frames";
              _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null aop2_offload_manager, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_97;
        }

        v52 = __nwlog_obj();
        v58 = v64[0];
        if (os_log_type_enabled(v52, v64[0]))
        {
          *buf = 136446210;
          v67 = "nw_aop2_offload_manager_add_input_frames";
          _os_log_impl(&dword_181A37000, v52, v58, "%{public}s called with null aop2_offload_manager, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_97:
    if (v51)
    {
      free(v51);
    }

    goto LABEL_79;
  }
}

void nw_aop2_offload_manager_input_frame_finalize(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  if (!nw_frame_get_metadata(v9))
  {
    __assert_rtn("nw_aop2_offload_manager_input_frame_finalize", "protocol_aop2_offload.mm", 754, "frame_info");
  }

  aon_net_dealloc_rx_buffer();
  v4 = (a3 + 648);
  v5 = v9 + 2;
  v6 = v9[2];
  v7 = v9[3];
  if (v6)
  {
    v4 = (v6 + 24);
  }

  *v4 = v7;
  *v7 = v6;
  v9[3] = 0;
  *v5 = 0;
  v8 = *(a3 + 616);
  v9[3] = v8;
  *v8 = v9;
  *(a3 + 616) = v5;
  if (!*(a3 + 640))
  {
    *(a3 + 684) = 0;
    aon_net_rx_ring_sync();
  }
}

uint64_t ___ZL37nw_aop2_offload_setup_aon_net_serviceP30nw_aop2_offload_aon_net_clientPKcS2_S2_S2__block_invoke_28(uint64_t a1, int a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 136446722;
    *&v8[4] = "nw_aop2_offload_setup_aon_net_service_block_invoke";
    *&v8[12] = 1024;
    *&v8[14] = a3;
    *&v8[18] = 1024;
    *&v8[20] = a2;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s received disconnected(%d) for flow tag 0x%x", v8, 0x18u);
  }

  if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
  {
    dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
  }

  v6 = *(nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager + 688);
  *v8 = MEMORY[0x1E69E9820];
  *&v8[8] = 3221225472;
  *&v8[16] = ___ZL43nw_aop2_offload_aon_net_client_disconnectedji_block_invoke;
  v9 = &__block_descriptor_48_e5_v8__0l;
  v10 = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
  v11 = a2;
  v12 = a3;
  nw_queue_context_async(v6, v8);
  return 0;
}

void ___ZL43nw_aop2_offload_aon_net_client_disconnectedji_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 656);
  if (v2 && (node = nw_hash_table_get_node(v2, a1 + 40, 4)) != 0 && (v4 = node[2]) != 0)
  {
    v5 = (v4 - 96);
    nw_protocol_error_quiet(*(v4 - 48), v4 - 96);

    nw_protocol_aop2_offload_disconnected(v5, v6);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 136446466;
      v10 = "nw_aop2_offload_aon_net_client_disconnected_block_invoke";
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s failed to find client for disconnected flow tag 0x%x", &v9, 0x12u);
    }
  }
}

uint64_t ___ZL37nw_aop2_offload_setup_aon_net_serviceP30nw_aop2_offload_aon_net_clientPKcS2_S2_S2__block_invoke(uint64_t a1, int a2, __int128 *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "nw_aop2_offload_setup_aon_net_service_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s received connected for flow tag 0x%x", buf, 0x12u);
  }

  if (nw_aop2_offload_get_offload_manager(void)::onceToken != -1)
  {
    dispatch_once(&nw_aop2_offload_get_offload_manager(void)::onceToken, &__block_literal_global_19);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x7812000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = &unk_182E7191A;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  if (a3)
  {
    v6 = a3[3];
    v19 = a3[2];
    v20 = v6;
    v21 = *(a3 + 8);
    v7 = a3[1];
    v17 = *a3;
    v18 = v7;
  }

  v8 = *(nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager + 688);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL40nw_aop2_offload_aon_net_client_connectedjPK23aon_net_flow_metadata_s_block_invoke;
  v10[3] = &unk_1E6A2B038;
  v11 = a2;
  v12 = a3 != 0;
  v10[4] = buf;
  v10[5] = nw_aop2_offload_get_offload_manager(void)::aop2_offload_manager;
  nw_queue_context_async(v8, v10);
  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_1822E7190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

void ___ZL40nw_aop2_offload_aon_net_client_connectedjPK23aon_net_flow_metadata_s_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 656);
  if (v2 && (node = nw_hash_table_get_node(v2, a1 + 48, 4)) != 0 && (v5 = node[2]) != 0)
  {
    if (*(a1 + 52) == 1)
    {
      flow_type = aon_net_metadata_get_flow_type();
      if (flow_type == 1)
      {
        if (aon_net_flow_metadata_get_tls_metadata())
        {
          *(v5 + 104) = aon_net_tls_metadata_get_tls_setup_time();
          *(v5 + 144) = aon_net_tls_metadata_get_tls_version();
          alpn = aon_net_tls_metadata_get_alpn();
          if (alpn)
          {
            v8 = *alpn;
            *(v5 + 112) = v8;
            if (v8)
            {
              v9 = alpn[1];
              *(v5 + 113) = v9;
              if (v9)
              {
                v10 = alpn[2];
                *(v5 + 114) = v10;
                if (v10)
                {
                  v11 = alpn[3];
                  *(v5 + 115) = v11;
                  if (v11)
                  {
                    v12 = alpn[4];
                    *(v5 + 116) = v12;
                    if (v12)
                    {
                      v13 = alpn[5];
                      *(v5 + 117) = v13;
                      if (v13)
                      {
                        v14 = alpn[6];
                        *(v5 + 118) = v14;
                        if (v14)
                        {
                          v15 = alpn[7];
                          *(v5 + 119) = v15;
                          if (v15)
                          {
                            v16 = alpn[8];
                            *(v5 + 120) = v16;
                            if (v16)
                            {
                              v17 = alpn[9];
                              *(v5 + 121) = v17;
                              if (v17)
                              {
                                v18 = alpn[10];
                                *(v5 + 122) = v18;
                                if (v18)
                                {
                                  v19 = alpn[11];
                                  *(v5 + 123) = v19;
                                  if (v19)
                                  {
                                    v20 = alpn[12];
                                    *(v5 + 124) = v20;
                                    if (v20)
                                    {
                                      v21 = alpn[13];
                                      *(v5 + 125) = v21;
                                      if (v21)
                                      {
                                        v22 = alpn[14];
                                        *(v5 + 126) = v22;
                                        if (v22)
                                        {
                                          v23 = alpn[15];
                                          *(v5 + 127) = v23;
                                          if (v23)
                                          {
                                            v24 = alpn[16];
                                            *(v5 + 128) = v24;
                                            if (v24)
                                            {
                                              v25 = alpn[17];
                                              *(v5 + 129) = v25;
                                              if (v25)
                                              {
                                                v26 = alpn[18];
                                                *(v5 + 130) = v26;
                                                if (v26)
                                                {
                                                  v27 = alpn[19];
                                                  *(v5 + 131) = v27;
                                                  if (v27)
                                                  {
                                                    v28 = alpn[20];
                                                    *(v5 + 132) = v28;
                                                    if (v28)
                                                    {
                                                      v29 = alpn[21];
                                                      *(v5 + 133) = v29;
                                                      if (v29)
                                                      {
                                                        v30 = alpn[22];
                                                        *(v5 + 134) = v30;
                                                        if (v30)
                                                        {
                                                          v31 = alpn[23];
                                                          *(v5 + 135) = v31;
                                                          if (v31)
                                                          {
                                                            v32 = alpn[24];
                                                            *(v5 + 136) = v32;
                                                            if (v32)
                                                            {
                                                              v33 = alpn[25];
                                                              *(v5 + 137) = v33;
                                                              if (v33)
                                                              {
                                                                v34 = alpn[26];
                                                                *(v5 + 138) = v34;
                                                                if (v34)
                                                                {
                                                                  v35 = alpn[27];
                                                                  *(v5 + 139) = v35;
                                                                  if (v35)
                                                                  {
                                                                    v36 = alpn[28];
                                                                    *(v5 + 140) = v36;
                                                                    if (v36)
                                                                    {
                                                                      v37 = alpn[29];
                                                                      *(v5 + 141) = v37;
                                                                      if (v37)
                                                                      {
                                                                        v38 = alpn[30];
                                                                        *(v5 + 142) = v38;
                                                                        if (v38)
                                                                        {
                                                                          *(v5 + 143) = 0;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (aon_net_flow_metadata_get_tcp_metadata())
        {
          *(v5 + 152) = aon_net_tcp_metadata_get_tcp_setup_time();
        }
      }

      else
      {
        v41 = flow_type;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = gLogObj;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = 136446722;
          v44 = "nw_aop2_offload_parse_flow_metadata";
          v45 = 2082;
          v46 = v5 + 192;
          v47 = 2048;
          v48 = v41;
          _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unsupported flow type %llu", &v43, 0x20u);
        }
      }
    }

    nw_protocol_aop2_offload_connected((v5 - 96), v4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 48);
      v43 = 136446466;
      v44 = "nw_aop2_offload_aon_net_client_connected_block_invoke";
      v45 = 1024;
      LODWORD(v46) = v40;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s failed to find client for connected flow tag %u", &v43, 0x12u);
    }
  }
}

double __nw_protocol_aop2_offload_identifier_block_invoke()
{
  dword_1EA83EC8C = 0;
  unk_1EA83EC7D = 0u;
  strcpy(&nw_protocol_aop2_offload_identifier::identifier, "aop2_offload");
  *&result = 0x100000004;
  qword_1EA83EC90 = 0x100000004;
  return result;
}

void sub_1822E7ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1822E89B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1822E8CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1822EA5AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 160));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void nw_protocol_udp_error(nw_protocol *a1, nw_protocol *a2)
{
  v81 = *MEMORY[0x1E69E9840];
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
    if (v7 != &nw_protocol_ref_counted_handle && v7 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      default_input_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(default_input_handler, &type, &v71))
      {
        goto LABEL_78;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v74 = "nw_protocol_udp_error";
        v11 = "%{public}s called with null udp";
        goto LABEL_76;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v74 = "nw_protocol_udp_error";
        v11 = "%{public}s called with null udp, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (!v18)
        {
          goto LABEL_34;
        }

        *buf = 136446466;
        v74 = "nw_protocol_udp_error";
        v75 = 2082;
        v76 = backtrace_string;
        v19 = "%{public}s called with null udp, dumping backtrace:%{public}s";
        goto LABEL_33;
      }

      if (!v18)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v11 = "%{public}s called with null udp, no backtrace";
LABEL_95:
      v42 = v16;
      v43 = v17;
      goto LABEL_77;
    }

    if (a2)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        v12 = *(default_input_handler + 40);
        v13 = a1->default_input_handler;
        if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(default_input_handler + 64)) != 0)
        {
          v21 = v13[1].callbacks;
          v14 = 0;
          if (v21)
          {
            v13[1].callbacks = (&v21->add_input_handler + 1);
          }
        }

        else
        {
          v14 = 1;
        }

        v22 = a2->handle;
        v23 = a2;
        if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *a2[1].flow_id) != 0)
        {
          v26 = v23[1].callbacks;
          if (v26)
          {
            v24 = 0;
            v23[1].callbacks = (&v26->add_input_handler + 1);
            v25 = *(default_input_handler + 24);
            if (!v25)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v24 = 0;
            v25 = *(default_input_handler + 24);
            if (!v25)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          v24 = 1;
          v25 = *(default_input_handler + 24);
          if (!v25)
          {
            goto LABEL_100;
          }
        }

        v27 = *(v25 + 56);
        if (v27)
        {
          v27(default_input_handler);
          v29 = a2;
          if (v24)
          {
            goto LABEL_61;
          }

          goto LABEL_50;
        }

LABEL_100:
        v53 = __nwlog_obj();
        v54 = *(default_input_handler + 16);
        *buf = 136446722;
        v74 = "__nw_protocol_error";
        if (!v54)
        {
          v54 = "invalid";
        }

        v75 = 2082;
        v76 = v54;
        v77 = 2048;
        v78 = default_input_handler;
        v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);
        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (__nwlog_fault(v55, &type, &v71))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_149;
            }

            v58 = *(default_input_handler + 16);
            if (!v58)
            {
              v58 = "invalid";
            }

            *buf = 136446722;
            v74 = "__nw_protocol_error";
            v75 = 2082;
            v76 = v58;
            v77 = 2048;
            v78 = default_input_handler;
            v59 = "%{public}s protocol %{public}s (%p) has invalid error callback";
LABEL_148:
            _os_log_impl(&dword_181A37000, v56, v57, v59, buf, 0x20u);
            goto LABEL_149;
          }

          if (v71 != 1)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_149;
            }

            v68 = *(default_input_handler + 16);
            if (!v68)
            {
              v68 = "invalid";
            }

            *buf = 136446722;
            v74 = "__nw_protocol_error";
            v75 = 2082;
            v76 = v68;
            v77 = 2048;
            v78 = default_input_handler;
            v59 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
            goto LABEL_148;
          }

          v63 = __nw_create_backtrace_string();
          v56 = __nwlog_obj();
          v57 = type;
          v64 = os_log_type_enabled(v56, type);
          if (!v63)
          {
            if (!v64)
            {
              goto LABEL_149;
            }

            v69 = *(default_input_handler + 16);
            if (!v69)
            {
              v69 = "invalid";
            }

            *buf = 136446722;
            v74 = "__nw_protocol_error";
            v75 = 2082;
            v76 = v69;
            v77 = 2048;
            v78 = default_input_handler;
            v59 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
            goto LABEL_148;
          }

          if (v64)
          {
            v65 = *(default_input_handler + 16);
            if (!v65)
            {
              v65 = "invalid";
            }

            *buf = 136446978;
            v74 = "__nw_protocol_error";
            v75 = 2082;
            v76 = v65;
            v77 = 2048;
            v78 = default_input_handler;
            v79 = 2082;
            v80 = v63;
            _os_log_impl(&dword_181A37000, v56, v57, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v63);
        }

LABEL_149:
        if (v55)
        {
          free(v55);
        }

        v29 = a2;
        if (v24)
        {
LABEL_61:
          if ((v14 & 1) == 0)
          {
            v37 = *(default_input_handler + 40);
            if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *(default_input_handler + 64)) != 0)
            {
              v38 = *(default_input_handler + 88);
              if (v38)
              {
                v39 = v38 - 1;
                *(default_input_handler + 88) = v39;
                if (!v39)
                {
                  v40 = *(default_input_handler + 64);
                  if (v40)
                  {
                    *(default_input_handler + 64) = 0;
                    v40[2](v40);
                    _Block_release(v40);
                  }

                  if (*(default_input_handler + 72))
                  {
                    v41 = *(default_input_handler + 64);
                    if (v41)
                    {
                      _Block_release(v41);
                    }
                  }

                  goto LABEL_79;
                }
              }
            }
          }

LABEL_80:
          if ((v5 & 1) == 0)
          {
            v44 = v2->handle;
            if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
            {
              v45 = v2[1].callbacks;
              if (v45)
              {
                v46 = (v45 - 1);
                v2[1].callbacks = v46;
                if (!v46)
                {
                  v47 = *v2[1].flow_id;
                  if (v47)
                  {
                    *v2[1].flow_id = 0;
                    v47[2](v47);
                    _Block_release(v47);
                  }

                  if (v2[1].flow_id[8])
                  {
                    v48 = *v2[1].flow_id;
                    if (v48)
                    {
                      _Block_release(v48);
                    }
                  }

                  goto LABEL_91;
                }
              }
            }
          }

          return;
        }

LABEL_50:
        v30 = v29->handle;
        if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v29 = *v29[1].flow_id) != 0)
        {
          v31 = v29[1].callbacks;
          if (v31)
          {
            v32 = (v31 - 1);
            v29[1].callbacks = v32;
            if (!v32)
            {
              v33 = *v29[1].flow_id;
              if (v33)
              {
                *v29[1].flow_id = 0;
                v34 = v29;
                v33[2](v33);
                _Block_release(v33);
                v29 = v34;
              }

              if (v29[1].flow_id[8])
              {
                v35 = *v29[1].flow_id;
                if (v35)
                {
                  v36 = v29;
                  _Block_release(v35);
                  v29 = v36;
                }
              }

              free(v29);
            }
          }
        }

        goto LABEL_61;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      default_input_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s udp_error requires a default input handler", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(default_input_handler, &type, &v71))
      {
        goto LABEL_78;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v74 = "nw_protocol_udp_error";
        v11 = "%{public}s udp_error requires a default input handler";
        goto LABEL_76;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v74 = "nw_protocol_udp_error";
        v11 = "%{public}s udp_error requires a default input handler, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v20 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (!v20)
        {
          goto LABEL_34;
        }

        *buf = 136446466;
        v74 = "nw_protocol_udp_error";
        v75 = 2082;
        v76 = backtrace_string;
        v19 = "%{public}s udp_error requires a default input handler, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v16, v17, v19, buf, 0x16u);
LABEL_34:
        free(backtrace_string);
        if (!default_input_handler)
        {
          goto LABEL_80;
        }

LABEL_79:
        free(default_input_handler);
        goto LABEL_80;
      }

      if (v20)
      {
        *buf = 136446210;
        v74 = "nw_protocol_udp_error";
        v11 = "%{public}s udp_error requires a default input handler, no backtrace";
        goto LABEL_95;
      }

LABEL_78:
      if (!default_input_handler)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    v60 = __nwlog_obj();
    *buf = 136446210;
    v74 = "nw_protocol_udp_error";
    default_input_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(default_input_handler, &type, &v71))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v11 = "%{public}s called with null other_protocol";
    }

    else if (v71 == 1)
    {
      v66 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v67 = os_log_type_enabled(v9, type);
      if (v66)
      {
        if (v67)
        {
          *buf = 136446466;
          v74 = "nw_protocol_udp_error";
          v75 = 2082;
          v76 = v66;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
        if (default_input_handler)
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      if (!v67)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v11 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_76:
    v42 = v9;
    v43 = v10;
LABEL_77:
    _os_log_impl(&dword_181A37000, v42, v43, v11, buf, 0xCu);
    goto LABEL_78;
  }

  v49 = __nwlog_obj();
  *buf = 136446210;
  v74 = "nw_protocol_udp_error";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (__nwlog_fault(v2, &type, &v71))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v52 = "%{public}s called with null protocol";
    }

    else if (v71 == 1)
    {
      v61 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v62 = os_log_type_enabled(v50, type);
      if (v61)
      {
        if (v62)
        {
          *buf = 136446466;
          v74 = "nw_protocol_udp_error";
          v75 = 2082;
          v76 = v61;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v61);
        if (v2)
        {
          goto LABEL_91;
        }

        return;
      }

      if (!v62)
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v52 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v74 = "nw_protocol_udp_error";
      v52 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
  }

LABEL_142:
  if (v2)
  {
LABEL_91:
    free(v2);
  }
}

void nw_protocol_udp_get_message_properties(char *a1, uint64_t a2, int *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_udp_get_message_properties";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v3, &type, &v32))
    {
      goto LABEL_63;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v35 = "nw_protocol_udp_get_message_properties";
      v29 = "%{public}s called with null protocol";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v31 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v35 = "nw_protocol_udp_get_message_properties";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_44;
        }

        return;
      }

      if (!v31)
      {
LABEL_63:
        if (!v3)
        {
          return;
        }

        goto LABEL_44;
      }

      *buf = 136446210;
      v35 = "nw_protocol_udp_get_message_properties";
      v29 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v35 = "nw_protocol_udp_get_message_properties";
      v29 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
    goto LABEL_63;
  }

  v3 = a1;
  v4 = *(a1 + 5);
  v5 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v4 != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v7 = *(v5 + 11);
    v6 = 0;
    if (v7)
    {
      *(v5 + 11) = v7 + 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v4 = *(a1 + 5);
LABEL_11:
  v8 = a1;
  if (v4 != &nw_protocol_ref_counted_handle)
  {
    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v35 = "nw_protocol_udp_get_message_properties";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v32 = 0;
      if (!__nwlog_fault(v9, &type, &v32))
      {
        goto LABEL_31;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v35 = "nw_protocol_udp_get_message_properties";
        v12 = "%{public}s called with null udp";
      }

      else
      {
        if (v32 == 1)
        {
          v15 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type;
          v18 = os_log_type_enabled(gLogObj, type);
          if (v15)
          {
            if (v18)
            {
              *buf = 136446466;
              v35 = "nw_protocol_udp_get_message_properties";
              v36 = 2082;
              v37 = v15;
              _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v15);
            goto LABEL_31;
          }

          if (!v18)
          {
LABEL_31:
            if (v9)
            {
              free(v9);
            }

            goto LABEL_33;
          }

          *buf = 136446210;
          v35 = "nw_protocol_udp_get_message_properties";
          v12 = "%{public}s called with null udp, no backtrace";
          v19 = v16;
          v20 = v17;
LABEL_30:
          _os_log_impl(&dword_181A37000, v19, v20, v12, buf, 0xCu);
          goto LABEL_31;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v35 = "nw_protocol_udp_get_message_properties";
        v12 = "%{public}s called with null udp, backtrace limit exceeded";
      }

      v19 = v10;
      v20 = v11;
      goto LABEL_30;
    }

    v8 = *(a1 + 8);
  }

  if (a3)
  {
    v13 = *(v8 + 45);
    if (!v13)
    {
      v13 = 4000;
    }

    v14 = a3[1] & 0xFFFFFFF8 | 1;
    *a3 = v13;
    a3[1] = v14;
  }

LABEL_33:
  if ((v6 & 1) == 0)
  {
    v21 = *(v3 + 5);
    if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 8)) != 0)
    {
      v22 = *(v3 + 11);
      if (v22)
      {
        v23 = v22 - 1;
        *(v3 + 11) = v23;
        if (!v23)
        {
          v24 = *(v3 + 8);
          if (v24)
          {
            *(v3 + 8) = 0;
            v24[2](v24, a2);
            _Block_release(v24);
          }

          if (v3[72])
          {
            v25 = *(v3 + 8);
            if (v25)
            {
              _Block_release(v25);
            }
          }

LABEL_44:
          free(v3);
        }
      }
    }
  }
}

uint64_t nw_protocol_udp_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *object)
{
  v120 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
        v113 = "nw_protocol_udp_updated_path";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v108) = 0;
        if (__nwlog_fault(v9, type, &v108))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446210;
              v113 = "nw_protocol_udp_updated_path";
              v12 = "%{public}s called with null udp";
LABEL_40:
              v25 = v10;
              v26 = v11;
LABEL_41:
              _os_log_impl(&dword_181A37000, v25, v26, v12, buf, 0xCu);
            }
          }

          else if (v108 == 1)
          {
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
                v113 = "nw_protocol_udp_updated_path";
                v114 = 2082;
                v115 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_42;
            }

            if (v24)
            {
              *buf = 136446210;
              v113 = "nw_protocol_udp_updated_path";
              v12 = "%{public}s called with null udp, no backtrace";
              v25 = v22;
              v26 = v23;
              goto LABEL_41;
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
              *buf = 136446210;
              v113 = "nw_protocol_udp_updated_path";
              v12 = "%{public}s called with null udp, backtrace limit exceeded";
              goto LABEL_40;
            }
          }
        }

LABEL_42:
        if (v9)
        {
          free(v9);
        }

        result = 0;
LABEL_127:
        if ((v6 & 1) == 0)
        {
          v68 = v3->handle;
          if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
          {
            v69 = v3[1].callbacks;
            if (v69)
            {
              v70 = (v69 - 1);
              v3[1].callbacks = v70;
              if (!v70)
              {
                v71 = result;
                v72 = *v3[1].flow_id;
                if (v72)
                {
                  *v3[1].flow_id = 0;
                  v72[2](v72);
                  _Block_release(v72);
                }

                if (v3[1].flow_id[8])
                {
                  v73 = *v3[1].flow_id;
                  if (v73)
                  {
                    _Block_release(v73);
                  }
                }

                free(v3);
                return v71;
              }
            }
          }
        }

        return result;
      }

      v8 = *a1[1].flow_id;
    }

    if (!object)
    {
      v79 = __nwlog_obj();
      *buf = 136446210;
      v113 = "nw_protocol_udp_updated_path";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null path", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v108) = 0;
      if (!__nwlog_fault(v9, type, &v108))
      {
        goto LABEL_42;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v12 = "%{public}s called with null path";
        goto LABEL_40;
      }

      if (v108 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v12 = "%{public}s called with null path, backtrace limit exceeded";
        goto LABEL_40;
      }

      v87 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v88 = os_log_type_enabled(v10, type[0]);
      if (v87)
      {
        if (v88)
        {
          *buf = 136446466;
          v113 = "nw_protocol_udp_updated_path";
          v114 = 2082;
          v115 = v87;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
        goto LABEL_42;
      }

      if (v88)
      {
        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v12 = "%{public}s called with null path, no backtrace";
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    if (gLogDatapath == 1)
    {
      v80 = object;
      v81 = __nwlog_obj();
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
      object = v80;
      if (v82)
      {
        output_handler_context_low = LOWORD(v8[2].output_handler_context);
        v84 = WORD1(v8[2].output_handler_context);
        *buf = 136446978;
        v113 = "nw_protocol_udp_updated_path";
        v114 = 2082;
        v115 = v8 + 3;
        v116 = 1024;
        *v117 = output_handler_context_low;
        *&v117[4] = 1024;
        *&v117[6] = v84;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp[%u,%u]", buf, 0x22u);
        object = v80;
      }
    }

    default_input_handler = v8[1].default_input_handler;
    v14 = object;
    v8[1].default_input_handler = os_retain(object);
    if (default_input_handler)
    {
      os_release(default_input_handler);
    }

    nw_protocol_udp_update_flow_registration(&v8[1].output_handler);
    output_handler_context = v8[1].output_handler_context;
    if (!output_handler_context)
    {
      goto LABEL_88;
    }

    v104 = 0;
    v105 = 0;
    if (!nw_path_flow_registration_get_ctl_command(v8[1].default_input_handler, output_handler_context, &v105, &v104, 0))
    {
      goto LABEL_88;
    }

    if (gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = LOWORD(v8[2].output_handler_context);
        v91 = WORD1(v8[2].output_handler_context);
        *buf = 136447490;
        v113 = "nw_protocol_udp_updated_path";
        v114 = 2082;
        v115 = v8 + 3;
        v116 = 1024;
        *v117 = v90;
        *&v117[4] = 1024;
        *&v117[6] = v91;
        LOWORD(v118) = 1024;
        *(&v118 + 2) = v105;
        HIWORD(v118) = 1024;
        v119 = v104;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp[%u,%u] Protocol event %u=%u", buf, 0x2Eu);
      }
    }

    v16 = v105;
    output_handler_context_high = HIWORD(v8[2].output_handler_context);
    if ((output_handler_context_high & 4) != 0)
    {
      if (LODWORD(v8[2].identifier))
      {
        goto LABEL_46;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v113 = "udp_ctlinput";
      v114 = 2082;
      v115 = v8 + 3;
      v20 = "%{public}s %{public}s Protocol event reported for socket with faddr INADDR_ANY";
    }

    else
    {
      if (v8[2].identifier != *MEMORY[0x1E69E99B8] || v8[2].callbacks != *(MEMORY[0x1E69E99B8] + 8))
      {
LABEL_46:
        if (v105 <= 0x15 && v105 - 14 >= 4 && ((0xFC01FuLL >> v105) & 1) == 0 && ((output_handler_context_high & 0x80) == 0 || v105 != 5 && v105 != 12))
        {
          v28 = v8->default_input_handler;
          if (v28)
          {
            v29 = v28->callbacks;
            if (v29)
            {
              if (v29->error)
              {
                HIWORD(v8[2].output_handler_context) = output_handler_context_high | 0x200;
                v30 = udpctlerrmap[v16];
                nw::share(type, v28);
                nw::share(&v108, v8);
                v31 = v28->callbacks;
                if (v31)
                {
                  error = v31->error;
                  if (error)
                  {
                    error(v28, v8, v30);
                    if ((v109 & 1) == 0)
                    {
LABEL_70:
                      if (v111)
                      {
                        v39 = *type;
                        if (*type)
                        {
                          v40 = *(*type + 40);
                          if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v39 = *(*type + 64)) != 0)
                          {
                            v41 = *(v39 + 88);
                            if (v41)
                            {
                              v42 = v41 - 1;
                              *(v39 + 88) = v42;
                              if (!v42)
                              {
                                v43 = *(v39 + 64);
                                if (v43)
                                {
                                  *(v39 + 64) = 0;
                                  v43[2](v43);
                                  _Block_release(v43);
                                }

                                if (*(v39 + 72))
                                {
                                  v44 = *(v39 + 64);
                                  if (v44)
                                  {
                                    _Block_release(v44);
                                  }
                                }

                                free(v39);
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_88;
                    }

LABEL_58:
                    v33 = v108;
                    if (v108)
                    {
                      v34 = *(v108 + 5);
                      if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v33 = *(v108 + 8)) != 0)
                      {
                        v35 = v33[11];
                        if (v35)
                        {
                          v36 = v35 - 1;
                          v33[11] = v36;
                          if (!v36)
                          {
                            v37 = v33[8];
                            if (v37)
                            {
                              v33[8] = 0;
                              v37[2](v37);
                              _Block_release(v37);
                            }

                            if (v33[9])
                            {
                              v38 = v33[8];
                              if (v38)
                              {
                                _Block_release(v38);
                              }
                            }

                            free(v33);
                          }
                        }
                      }
                    }

                    goto LABEL_70;
                  }
                }

                v92 = __nwlog_obj();
                name = v28->identifier->name;
                *buf = 136446722;
                v113 = "__nw_protocol_error";
                if (!name)
                {
                  name = "invalid";
                }

                v114 = 2082;
                v115 = name;
                v116 = 2048;
                *v117 = v28;
                v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);
                v107 = OS_LOG_TYPE_ERROR;
                v106 = 0;
                if (__nwlog_fault(v94, &v107, &v106))
                {
                  if (v107 == OS_LOG_TYPE_FAULT)
                  {
                    v95 = __nwlog_obj();
                    v96 = v107;
                    if (!os_log_type_enabled(v95, v107))
                    {
                      goto LABEL_198;
                    }

                    v97 = v28->identifier->name;
                    if (!v97)
                    {
                      v97 = "invalid";
                    }

                    *buf = 136446722;
                    v113 = "__nw_protocol_error";
                    v114 = 2082;
                    v115 = v97;
                    v116 = 2048;
                    *v117 = v28;
                    v98 = "%{public}s protocol %{public}s (%p) has invalid error callback";
LABEL_197:
                    _os_log_impl(&dword_181A37000, v95, v96, v98, buf, 0x20u);
                    goto LABEL_198;
                  }

                  if (v106 != 1)
                  {
                    v95 = __nwlog_obj();
                    v96 = v107;
                    if (!os_log_type_enabled(v95, v107))
                    {
                      goto LABEL_198;
                    }

                    v102 = v28->identifier->name;
                    if (!v102)
                    {
                      v102 = "invalid";
                    }

                    *buf = 136446722;
                    v113 = "__nw_protocol_error";
                    v114 = 2082;
                    v115 = v102;
                    v116 = 2048;
                    *v117 = v28;
                    v98 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
                    goto LABEL_197;
                  }

                  v99 = __nw_create_backtrace_string();
                  v95 = __nwlog_obj();
                  v96 = v107;
                  v100 = os_log_type_enabled(v95, v107);
                  if (!v99)
                  {
                    if (!v100)
                    {
                      goto LABEL_198;
                    }

                    v103 = v28->identifier->name;
                    if (!v103)
                    {
                      v103 = "invalid";
                    }

                    *buf = 136446722;
                    v113 = "__nw_protocol_error";
                    v114 = 2082;
                    v115 = v103;
                    v116 = 2048;
                    *v117 = v28;
                    v98 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
                    goto LABEL_197;
                  }

                  if (v100)
                  {
                    v101 = v28->identifier->name;
                    if (!v101)
                    {
                      v101 = "invalid";
                    }

                    *buf = 136446978;
                    v113 = "__nw_protocol_error";
                    v114 = 2082;
                    v115 = v101;
                    v116 = 2048;
                    *v117 = v28;
                    *&v117[8] = 2082;
                    v118 = v99;
                    _os_log_impl(&dword_181A37000, v95, v96, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v99);
                }

LABEL_198:
                if (v94)
                {
                  free(v94);
                }

                if ((v109 & 1) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_58;
              }
            }
          }
        }

LABEL_88:
        LODWORD(v8[2].default_input_handler) = nw_path_get_effective_traffic_class(v8[1].default_input_handler);
        output_handler = v8->output_handler;
        if (output_handler && (v46 = output_handler->callbacks) != 0 && (updated_path = v46->updated_path) != 0)
        {
          v48 = output_handler->handle;
          v49 = output_handler;
          if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *output_handler[1].flow_id) != 0)
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

          v52 = v3->handle;
          v53 = v3;
          if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v53 = *v3[1].flow_id) != 0)
          {
            v54 = v53[1].callbacks;
            if (v54)
            {
              v53[1].callbacks = (&v54->add_input_handler + 1);
            }

            result = updated_path(output_handler, v3, v14);
            v55 = v3->handle;
            v56 = v3;
            if (v55 == &nw_protocol_ref_counted_handle || v55 == &nw_protocol_ref_counted_additional_handle && (v56 = *v3[1].flow_id) != 0)
            {
              v57 = v56[1].callbacks;
              if (v57)
              {
                v58 = (v57 - 1);
                v56[1].callbacks = v58;
                if (!v58)
                {
                  v59 = result;
                  v60 = *v56[1].flow_id;
                  if (v60)
                  {
                    *v56[1].flow_id = 0;
                    v60[2](v60);
                    _Block_release(v60);
                  }

                  if (v56[1].flow_id[8])
                  {
                    v61 = *v56[1].flow_id;
                    if (v61)
                    {
                      _Block_release(v61);
                    }
                  }

                  free(v56);
                  result = v59;
                }
              }
            }
          }

          else
          {
            result = (updated_path)(output_handler, v3);
          }

          if ((v50 & 1) == 0)
          {
            v62 = output_handler->handle;
            if (v62 == &nw_protocol_ref_counted_handle || v62 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
            {
              v63 = output_handler[1].callbacks;
              if (v63)
              {
                v64 = (v63 - 1);
                output_handler[1].callbacks = v64;
                if (!v64)
                {
                  v65 = result;
                  v66 = *output_handler[1].flow_id;
                  if (v66)
                  {
                    *output_handler[1].flow_id = 0;
                    v66[2](v66);
                    _Block_release(v66);
                  }

                  if (output_handler[1].flow_id[8])
                  {
                    v67 = *output_handler[1].flow_id;
                    if (v67)
                    {
                      _Block_release(v67);
                    }
                  }

                  free(output_handler);
                  result = v65;
                }
              }
            }
          }
        }

        else
        {
          result = 1;
        }

        goto LABEL_127;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v113 = "udp_ctlinput";
      v114 = 2082;
      v115 = v8 + 3;
      v20 = "%{public}s %{public}s Protocol event reported for socket with faddr IN6ADDR_ANY";
    }

    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    goto LABEL_88;
  }

  v74 = __nwlog_obj();
  *buf = 136446210;
  v113 = "nw_protocol_udp_updated_path";
  v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v108) = 0;
  if (__nwlog_fault(v75, type, &v108))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (os_log_type_enabled(v76, type[0]))
      {
        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v78 = "%{public}s called with null protocol";
LABEL_168:
        _os_log_impl(&dword_181A37000, v76, v77, v78, buf, 0xCu);
      }
    }

    else if (v108 == 1)
    {
      v85 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v77 = type[0];
      v86 = os_log_type_enabled(v76, type[0]);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446466;
          v113 = "nw_protocol_udp_updated_path";
          v114 = 2082;
          v115 = v85;
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
        goto LABEL_169;
      }

      if (v86)
      {
        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v78 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_168;
      }
    }

    else
    {
      v76 = __nwlog_obj();
      v77 = type[0];
      if (os_log_type_enabled(v76, type[0]))
      {
        *buf = 136446210;
        v113 = "nw_protocol_udp_updated_path";
        v78 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_168;
      }
    }
  }

LABEL_169:
  if (v75)
  {
    free(v75);
  }

  return 0;
}

void nw_protocol_udp_update_flow_registration(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = a1 - 96;
  v4 = *(a1 - 48);
  if (v4)
  {
    v5 = *(v4 + 40);
    v6 = *(a1 - 48);
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
    {
      v9 = *(v6 + 88);
      if (v9)
      {
        v7 = 0;
        *(v6 + 88) = v9 + 1;
        v8 = *(v4 + 24);
        if (!v8)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v7 = 0;
        v8 = *(v4 + 24);
        if (!v8)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v7 = 1;
      v8 = *(v4 + 24);
      if (!v8)
      {
        goto LABEL_37;
      }
    }

    v10 = *(v8 + 112);
    if (v10)
    {
      v11 = v10(v4);
      if (v7)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

LABEL_37:
    v24 = __nwlog_obj();
    v25 = *(v4 + 16);
    *buf = 136446722;
    v46 = "__nw_protocol_get_parameters";
    if (!v25)
    {
      v25 = "invalid";
    }

    v47 = 2082;
    v48 = v25;
    v49 = 2048;
    v50 = v4;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v26, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_72;
        }

        v29 = *(v4 + 16);
        if (!v29)
        {
          v29 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_get_parameters";
        v47 = 2082;
        v48 = v29;
        v49 = 2048;
        v50 = v4;
        v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_71:
        _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x20u);
        goto LABEL_72;
      }

      if (v43 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_72;
        }

        v41 = *(v4 + 16);
        if (!v41)
        {
          v41 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_get_parameters";
        v47 = 2082;
        v48 = v41;
        v49 = 2048;
        v50 = v4;
        v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
        goto LABEL_71;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v37 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (!v37)
        {
          goto LABEL_72;
        }

        v42 = *(v4 + 16);
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_get_parameters";
        v47 = 2082;
        v48 = v42;
        v49 = 2048;
        v50 = v4;
        v30 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
        goto LABEL_71;
      }

      if (v37)
      {
        v38 = *(v4 + 16);
        if (!v38)
        {
          v38 = "invalid";
        }

        *buf = 136446978;
        v46 = "__nw_protocol_get_parameters";
        v47 = 2082;
        v48 = v38;
        v49 = 2048;
        v50 = v4;
        v51 = 2082;
        v52 = backtrace_string;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_72:
    if (v26)
    {
      free(v26);
    }

    v11 = 0;
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_13:
    v12 = *(v4 + 40);
    if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
    {
      v13 = *(v4 + 88);
      if (v13)
      {
        v14 = v13 - 1;
        *(v4 + 88) = v14;
        if (!v14)
        {
          v15 = v11;
          v16 = *(v4 + 64);
          if (v16)
          {
            *(v4 + 64) = 0;
            v16[2](v16);
            _Block_release(v16);
          }

          if (*(v4 + 72))
          {
            v17 = *(v4 + 64);
            if (v17)
            {
              _Block_release(v17);
            }
          }

          free(v4);
          v11 = v15;
        }
      }
    }

    goto LABEL_24;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  v46 = "__nw_protocol_get_parameters";
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v32, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v46 = "__nw_protocol_get_parameters";
        v35 = "%{public}s called with null protocol";
LABEL_78:
        _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v40 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v46 = "__nw_protocol_get_parameters";
          v47 = 2082;
          v48 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        goto LABEL_79;
      }

      if (v40)
      {
        *buf = 136446210;
        v46 = "__nw_protocol_get_parameters";
        v35 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_78;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v46 = "__nw_protocol_get_parameters";
        v35 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  if (v32)
  {
    free(v32);
  }

  v11 = 0;
LABEL_24:
  v18 = nw_parameters_copy_context(v11);
  v19 = nw_path_copy_flow_registration(v18, v3);
  *(a1 + 24) = v19;
  if (v18)
  {
    os_release(v18);
    v19 = *(a1 + 24);
  }

  if (!v19)
  {
    if (!v2)
    {
      return;
    }

    *(a1 + 64) = &g_udp_stats;
    *(a1 + 72) = 0;
    goto LABEL_35;
  }

  v20 = v19;
  v21 = v20[148];

  *(a1 + 94) = *(a1 + 94) & 0xFFF7 | (4 * v21) & 8;
  *(a1 + 72) = nw_path_flow_registration_get_stats_area(*(a1 + 24), 2);
  stats_region = nw_path_flow_registration_get_stats_region(*(a1 + 24), *(a1 - 80));
  *(a1 + 64) = stats_region;
  if (!stats_region)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v46 = "nw_protocol_udp_update_flow_registration";
      v47 = 2082;
      v48 = (a1 + 96);
      v49 = 2048;
      v50 = &g_udp_stats;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp->udp_stats is NULL setting to global %p", buf, 0x20u);
    }

    *(a1 + 64) = &g_udp_stats;
  }

  if (v2)
  {
LABEL_35:
    os_release(v2);
  }
}

void nw_protocol_udp_link_state(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a1;
    if (a1)
    {
      v4 = *(a1 + 40);
      v5 = a1;
      if (v4 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_7;
      }

      if (v4 != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = 1;
        goto LABEL_12;
      }

      v5 = *(a1 + 64);
      if (v5)
      {
LABEL_7:
        v7 = *(v5 + 88);
        v6 = 0;
        if (v7)
        {
          *(v5 + 88) = v7 + 1;
        }
      }

      else
      {
        v6 = 1;
      }

      v4 = *(a1 + 40);
LABEL_12:
      v8 = a1;
      if (v4 != &nw_protocol_ref_counted_handle)
      {
        if (v4 != &nw_protocol_ref_counted_additional_handle)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          v85 = "nw_protocol_udp_link_state";
          v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v82 = 0;
          if (__nwlog_fault(v9, &type, &v82))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              v11 = type;
              if (os_log_type_enabled(gLogObj, type))
              {
                *buf = 136446210;
                v85 = "nw_protocol_udp_link_state";
                v12 = "%{public}s called with null udp";
LABEL_38:
                v28 = v10;
                v29 = v11;
LABEL_39:
                _os_log_impl(&dword_181A37000, v28, v29, v12, buf, 0xCu);
              }
            }

            else if (v82 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v25 = gLogObj;
              v26 = type;
              v27 = os_log_type_enabled(gLogObj, type);
              if (backtrace_string)
              {
                if (v27)
                {
                  *buf = 136446466;
                  v85 = "nw_protocol_udp_link_state";
                  v86 = 2082;
                  v87 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_40;
              }

              if (v27)
              {
                *buf = 136446210;
                v85 = "nw_protocol_udp_link_state";
                v12 = "%{public}s called with null udp, no backtrace";
                v28 = v25;
                v29 = v26;
                goto LABEL_39;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              v11 = type;
              if (os_log_type_enabled(gLogObj, type))
              {
                *buf = 136446210;
                v85 = "nw_protocol_udp_link_state";
                v12 = "%{public}s called with null udp, backtrace limit exceeded";
                goto LABEL_38;
              }
            }
          }

LABEL_40:
          if (!v9)
          {
            goto LABEL_112;
          }

          v30 = v9;
          goto LABEL_42;
        }

        v8 = *(a1 + 64);
      }

      v13 = a3;
      v14 = v13[2];

      if (v14 == 1)
      {
        if (gLogDatapath == 1)
        {
          v81 = __nwlog_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v85 = "nw_protocol_udp_link_state";
            v86 = 2082;
            v87 = (v8 + 192);
            _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp flow controlled", buf, 0x16u);
          }
        }

        v23 = *(v8 + 190) | 1;
      }

      else
      {
        if (v14)
        {
          goto LABEL_80;
        }

        if (gLogDatapath == 1)
        {
          v80 = __nwlog_obj();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v85 = "nw_protocol_udp_link_state";
            v86 = 2082;
            v87 = (v8 + 192);
            _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp flow resumed", buf, 0x16u);
          }
        }

        v15 = *(v8 + 190);
        v16 = v15 & 0xFFFE;
        *(v8 + 190) = v15 & 0xFFFE;
        if ((v15 & 2) == 0)
        {
          goto LABEL_80;
        }

        v17 = *(v8 + 48);
        if (v17)
        {
          v18 = *(v17 + 24);
          if (v18)
          {
            v19 = *(v18 + 72);
            if (v19)
            {
              v20 = *(v17 + 40);
              v21 = *(v8 + 48);
              if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v21 = *(v17 + 64)) != 0)
              {
                v31 = *(v21 + 88);
                v22 = 0;
                if (v31)
                {
                  *(v21 + 88) = v31 + 1;
                }
              }

              else
              {
                v22 = 1;
              }

              v32 = *(v8 + 40);
              v33 = v8;
              if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *(v8 + 64)) != 0)
              {
                v34 = *(v33 + 88);
                if (v34)
                {
                  *(v33 + 88) = v34 + 1;
                }

                v19(v17, v8);
                v35 = *(v8 + 40);
                v36 = v8;
                if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *(v8 + 64)) != 0)
                {
                  v37 = *(v36 + 88);
                  if (v37)
                  {
                    v38 = v37 - 1;
                    *(v36 + 88) = v38;
                    if (!v38)
                    {
                      v39 = *(v36 + 64);
                      if (v39)
                      {
                        *(v36 + 64) = 0;
                        v39[2](v39);
                        _Block_release(v39);
                      }

                      if (*(v36 + 72))
                      {
                        v40 = *(v36 + 64);
                        if (v40)
                        {
                          _Block_release(v40);
                        }
                      }

                      free(v36);
                    }
                  }
                }
              }

              else
              {
                v19(v17, v8);
              }

              if ((v22 & 1) == 0)
              {
                v41 = *(v17 + 40);
                if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v17 = *(v17 + 64)) != 0)
                {
                  v42 = *(v17 + 88);
                  if (v42)
                  {
                    v43 = v42 - 1;
                    *(v17 + 88) = v43;
                    if (!v43)
                    {
                      v44 = *(v17 + 64);
                      if (v44)
                      {
                        *(v17 + 64) = 0;
                        v44[2](v44);
                        _Block_release(v44);
                      }

                      if (*(v17 + 72))
                      {
                        v45 = *(v17 + 64);
                        if (v45)
                        {
                          _Block_release(v45);
                        }
                      }

                      free(v17);
                    }
                  }
                }
              }

              v16 = *(v8 + 190);
            }
          }
        }

        v23 = v16 & 0xFFFD;
      }

      *(v8 + 190) = v23;
LABEL_80:
      v46 = *(v8 + 48);
      if (!v46)
      {
        goto LABEL_112;
      }

      v47 = *(v46 + 24);
      if (!v47)
      {
        goto LABEL_112;
      }

      v48 = *(v47 + 104);
      if (!v48)
      {
        goto LABEL_112;
      }

      v49 = *(v46 + 40);
      v50 = *(v8 + 48);
      if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = *(v46 + 64)) != 0)
      {
        v52 = *(v50 + 88);
        v51 = 0;
        if (v52)
        {
          *(v50 + 88) = v52 + 1;
        }
      }

      else
      {
        v51 = 1;
      }

      v53 = *(v8 + 40);
      v54 = v8;
      if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v54 = *(v8 + 64)) != 0)
      {
        v55 = *(v54 + 88);
        if (v55)
        {
          *(v54 + 88) = v55 + 1;
        }

        v48(v46, v8, v13);
        v56 = *(v8 + 40);
        if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v8 + 64)) != 0)
        {
          v57 = *(v8 + 88);
          if (v57)
          {
            v58 = v57 - 1;
            *(v8 + 88) = v58;
            if (!v58)
            {
              v59 = *(v8 + 64);
              if (v59)
              {
                *(v8 + 64) = 0;
                v59[2](v59);
                _Block_release(v59);
              }

              if (*(v8 + 72))
              {
                v60 = *(v8 + 64);
                if (v60)
                {
                  _Block_release(v60);
                }
              }

              free(v8);
            }
          }
        }
      }

      else
      {
        v48(v46, v8, v13);
      }

      if ((v51 & 1) != 0 || (v61 = *(v46 + 40), v61 != &nw_protocol_ref_counted_handle) && (v61 != &nw_protocol_ref_counted_additional_handle || (v46 = *(v46 + 64)) == 0) || (v62 = *(v46 + 88)) == 0 || (v63 = v62 - 1, (*(v46 + 88) = v63) != 0))
      {
LABEL_112:
        if ((v6 & 1) == 0)
        {
          v64 = *(v3 + 40);
          if (v64 == &nw_protocol_ref_counted_handle || v64 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v65 = *(v3 + 88);
            if (v65)
            {
              v66 = v65 - 1;
              *(v3 + 88) = v66;
              if (!v66)
              {
                v67 = *(v3 + 64);
                if (v67)
                {
                  *(v3 + 64) = 0;
                  v67[2](v67);
                  _Block_release(v67);
                }

                if (*(v3 + 72))
                {
                  v68 = *(v3 + 64);
                  if (v68)
                  {
                    _Block_release(v68);
                  }
                }

                goto LABEL_123;
              }
            }
          }
        }

        return;
      }

      v69 = *(v46 + 64);
      if (v69)
      {
        *(v46 + 64) = 0;
        v69[2](v69);
        _Block_release(v69);
      }

      if (*(v46 + 72))
      {
        v70 = *(v46 + 64);
        if (v70)
        {
          _Block_release(v70);
        }
      }

      v30 = v46;
LABEL_42:
      free(v30);
      goto LABEL_112;
    }

    v75 = __nwlog_obj();
    *buf = 136446210;
    v85 = "nw_protocol_udp_link_state";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v3, &type, &v82))
    {
LABEL_163:
      if (!v3)
      {
        return;
      }

      goto LABEL_123;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null protocol";
      goto LABEL_162;
    }

    if (v82 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_162;
    }

    v76 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type;
    v79 = os_log_type_enabled(v72, type);
    if (!v76)
    {
      if (!v79)
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_162;
    }

    if (v79)
    {
      *buf = 136446466;
      v85 = "nw_protocol_udp_link_state";
      v86 = 2082;
      v87 = v76;
      v78 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_147;
    }
  }

  else
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    v85 = "nw_protocol_udp_link_state";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null link_info", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v3, &type, &v82))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null link_info";
LABEL_162:
      _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      goto LABEL_163;
    }

    if (v82 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null link_info, backtrace limit exceeded";
      goto LABEL_162;
    }

    v76 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type;
    v77 = os_log_type_enabled(v72, type);
    if (!v76)
    {
      if (!v77)
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v85 = "nw_protocol_udp_link_state";
      v74 = "%{public}s called with null link_info, no backtrace";
      goto LABEL_162;
    }

    if (v77)
    {
      *buf = 136446466;
      v85 = "nw_protocol_udp_link_state";
      v86 = 2082;
      v87 = v76;
      v78 = "%{public}s called with null link_info, dumping backtrace:%{public}s";
LABEL_147:
      _os_log_impl(&dword_181A37000, v72, v73, v78, buf, 0x16u);
    }
  }

  free(v76);
  if (v3)
  {
LABEL_123:
    free(v3);
  }
}

void nw_protocol_udp_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_udp_disconnected";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v2, &type, &v49))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v52 = "nw_protocol_udp_disconnected";
      v46 = "%{public}s called with null protocol";
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v48 = os_log_type_enabled(v44, type);
      if (backtrace_string)
      {
        if (v48)
        {
          *buf = 136446466;
          v52 = "nw_protocol_udp_disconnected";
          v53 = 2082;
          v54 = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_83;
        }

        return;
      }

      if (!v48)
      {
LABEL_102:
        if (!v2)
        {
          return;
        }

        goto LABEL_83;
      }

      *buf = 136446210;
      v52 = "nw_protocol_udp_disconnected";
      v46 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v52 = "nw_protocol_udp_disconnected";
      v46 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
    goto LABEL_102;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
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

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v7[2].output_handler = 0;
    v7[2].handle = 0;
    default_input_handler = v2->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_72;
    }

    v12 = *(default_input_handler + 24);
    if (!v12)
    {
      goto LABEL_72;
    }

    v13 = *(v12 + 48);
    if (!v13)
    {
      goto LABEL_72;
    }

    v14 = *(default_input_handler + 40);
    v15 = v2->default_input_handler;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
    {
      v21 = v15[1].callbacks;
      v16 = 0;
      if (v21)
      {
        v15[1].callbacks = (&v21->add_input_handler + 1);
      }
    }

    else
    {
      v16 = 1;
    }

    v22 = v2->handle;
    v23 = v2;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *v2[1].flow_id) != 0)
    {
      v24 = v23[1].callbacks;
      if (v24)
      {
        v23[1].callbacks = (&v24->add_input_handler + 1);
      }

      v13(default_input_handler, v2);
      v25 = v2->handle;
      v26 = v2;
      if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v26 = *v2[1].flow_id) != 0)
      {
        v27 = v26[1].callbacks;
        if (v27)
        {
          v28 = (v27 - 1);
          v26[1].callbacks = v28;
          if (!v28)
          {
            v29 = *v26[1].flow_id;
            if (v29)
            {
              *v26[1].flow_id = 0;
              v29[2](v29);
              _Block_release(v29);
            }

            if (v26[1].flow_id[8])
            {
              v30 = *v26[1].flow_id;
              if (v30)
              {
                _Block_release(v30);
              }
            }

            free(v26);
          }
        }
      }
    }

    else
    {
      v13(default_input_handler, v2);
    }

    if (v16)
    {
      goto LABEL_72;
    }

    v31 = *(default_input_handler + 40);
    if (v31 != &nw_protocol_ref_counted_handle)
    {
      if (v31 != &nw_protocol_ref_counted_additional_handle)
      {
        goto LABEL_72;
      }

      default_input_handler = *(default_input_handler + 64);
      if (!default_input_handler)
      {
        goto LABEL_72;
      }
    }

    v32 = *(default_input_handler + 88);
    if (!v32)
    {
      goto LABEL_72;
    }

    v33 = v32 - 1;
    *(default_input_handler + 88) = v33;
    if (v33)
    {
      goto LABEL_72;
    }

    v34 = *(default_input_handler + 64);
    if (v34)
    {
      *(default_input_handler + 64) = 0;
      v34[2](v34);
      _Block_release(v34);
    }

    if (*(default_input_handler + 72))
    {
      v35 = *(default_input_handler + 64);
      if (v35)
      {
        _Block_release(v35);
      }
    }

LABEL_71:
    free(default_input_handler);
    goto LABEL_72;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v52 = "nw_protocol_udp_disconnected";
  default_input_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (!__nwlog_fault(default_input_handler, &type, &v49))
  {
    goto LABEL_70;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_70;
    }

    *buf = 136446210;
    v52 = "nw_protocol_udp_disconnected";
    v11 = "%{public}s called with null udp";
LABEL_68:
    v36 = v9;
    v37 = v10;
    goto LABEL_69;
  }

  if (v49 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_70;
    }

    *buf = 136446210;
    v52 = "nw_protocol_udp_disconnected";
    v11 = "%{public}s called with null udp, backtrace limit exceeded";
    goto LABEL_68;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (!v17)
  {
    if (!v20)
    {
LABEL_70:
      if (!default_input_handler)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    *buf = 136446210;
    v52 = "nw_protocol_udp_disconnected";
    v11 = "%{public}s called with null udp, no backtrace";
    v36 = v18;
    v37 = v19;
LABEL_69:
    _os_log_impl(&dword_181A37000, v36, v37, v11, buf, 0xCu);
    goto LABEL_70;
  }

  if (v20)
  {
    *buf = 136446466;
    v52 = "nw_protocol_udp_disconnected";
    v53 = 2082;
    v54 = v17;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (default_input_handler)
  {
    goto LABEL_71;
  }

LABEL_72:
  if ((v5 & 1) == 0)
  {
    v38 = v2->handle;
    if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v39 = v2[1].callbacks;
      if (v39)
      {
        v40 = (v39 - 1);
        v2[1].callbacks = v40;
        if (!v40)
        {
          v41 = *v2[1].flow_id;
          if (v41)
          {
            *v2[1].flow_id = 0;
            v41[2](v41);
            _Block_release(v41);
          }

          if (v2[1].flow_id[8])
          {
            v42 = *v2[1].flow_id;
            if (v42)
            {
              _Block_release(v42);
            }
          }

LABEL_83:
          free(v2);
        }
      }
    }
  }
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke_142()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

__int128 *nw_protocol_udp_identifier()
{
  if (nw_protocol_udp_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
  }

  return &nw_protocol_udp_identifier::identifier;
}

uint64_t udp_validate_cksum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 1);
  v5 = 8;
  if (v4 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 8;
  }

  if (*(a4 + 1) == 2)
  {
    v5 = 4;
  }

  return udp_validate_cksum_internal(a1, a2, (a3 + v6), (a4 + v5), v4 == 30, 0);
}

uint64_t nw::zlib_encoder::encode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v9 = (a1 + 8);
  *(a1 + 16) = a3;
  v10 = (*(a5 + 16))(a5, a3);
  if (v10)
  {
    v11 = 0;
    *(a1 + 32) = v10;
    if (a4)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    while (1)
    {
      *(a1 + 40) = a3;
      v13 = deflate(v9, v12);
      if (v13 && v13 != -5)
      {
        v17 = v13;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v19 = zError(v17);
          *buf = 136446466;
          v34 = "encode";
          v35 = 2080;
          v36 = v19;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s deflate returned %s", buf, 0x16u);
        }

        return -1;
      }

      v14 = *(a1 + 40);
      v15 = (a3 - v14);
      if (gLogDatapath == 1)
      {
        log = __nwlog_obj();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v34 = "encode";
          v35 = 2048;
          v36 = v15;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s writing %zu bytes of compressed data", buf, 0x16u);
        }

        v11 += v15;
        if (*(a1 + 40))
        {
          return v11;
        }
      }

      else
      {
        v11 += v15;
        if (v14)
        {
          return v11;
        }
      }

      v16 = (*(a5 + 16))(a5, a3);
      if (!v16)
      {
        break;
      }

      *(a1 + 32) = v16;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v34 = "encode";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null out_bytes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v22, &type, &v31))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v34 = "encode";
      v25 = "%{public}s called with null out_bytes";
      goto LABEL_45;
    }

    if (v31 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v34 = "encode";
      v25 = "%{public}s called with null out_bytes, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v34 = "encode";
      v25 = "%{public}s called with null out_bytes, no backtrace";
      goto LABEL_45;
    }

    if (!v27)
    {
      goto LABEL_28;
    }

    *buf = 136446466;
    v34 = "encode";
    v35 = 2082;
    v36 = backtrace_string;
    goto LABEL_27;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v34 = "encode";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null out_bytes", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v22, &type, &v31))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v34 = "encode";
    v25 = "%{public}s called with null out_bytes";
LABEL_45:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_46;
  }

  if (v31 != 1)
  {
    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v34 = "encode";
    v25 = "%{public}s called with null out_bytes, backtrace limit exceeded";
    goto LABEL_45;
  }

  backtrace_string = __nw_create_backtrace_string();
  v23 = __nwlog_obj();
  v24 = type;
  v29 = os_log_type_enabled(v23, type);
  if (!backtrace_string)
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v34 = "encode";
    v25 = "%{public}s called with null out_bytes, no backtrace";
    goto LABEL_45;
  }

  if (!v29)
  {
    goto LABEL_28;
  }

  *buf = 136446466;
  v34 = "encode";
  v35 = 2082;
  v36 = backtrace_string;
LABEL_27:
  _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null out_bytes, dumping backtrace:%{public}s", buf, 0x16u);
LABEL_28:
  free(backtrace_string);
LABEL_46:
  if (v22)
  {
    free(v22);
  }

  return 0;
}

void nw::zlib_encoder::~zlib_encoder(nw::zlib_encoder *this)
{
  *this = &unk_1EEFDA0B0;
  deflateEnd((this + 8));

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA0B0;
  deflateEnd((this + 8));
}

uint64_t nw::brotli_encoder::encode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 16) = 0x4000;
  v8 = (*(a5 + 16))(a5, 0x4000);
  if (v8)
  {
    for (i = 0; ; i += 0x4000)
    {
      *(a1 + 8) = v8;
      v10 = compression_stream_process((a1 + 8), a4);
      if (v10)
      {
        if (v10 == COMPRESSION_STATUS_ERROR)
        {
          return -1;
        }

        v11 = *(a1 + 16);
        return i - v11 + 0x4000;
      }

      v11 = *(a1 + 16);
      if (v11)
      {
        return i - v11 + 0x4000;
      }

      *(a1 + 16) = 0x4000;
      v8 = (*(a5 + 16))(a5, 0x4000);
      if (!v8)
      {
        break;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446210;
      v15 = "encode";
      goto LABEL_14;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446210;
      v15 = "encode";
LABEL_14:
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s allocation failed", &v14, 0xCu);
    }
  }

  return -1;
}

void nw::brotli_encoder::~brotli_encoder(nw::brotli_encoder *this)
{
  *this = &unk_1EEFDA0D8;
  compression_stream_destroy((this + 8));

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA0D8;
  compression_stream_destroy((this + 8));
}

void nw::zstd_encoder::encode(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v299 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = (*(a5 + 16))(a5, 131591);
  if (!v9)
  {
    v231 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_encoder_zstd_encode";
    v232 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v231, 16, "%{public}s called with null out_bytes", buf, 12);
    type[0] = 16;
    LOBYTE(v287) = 0;
    if (!__nwlog_fault(v232, type, &v287))
    {
      goto LABEL_539;
    }

    if (type[0] == 17)
    {
      v233 = __nwlog_obj();
      v234 = type[0];
      if (!os_log_type_enabled(v233, type[0]))
      {
        goto LABEL_539;
      }

      *buf = 136446210;
      *&buf[4] = "nw_encoder_zstd_encode";
      v235 = "%{public}s called with null out_bytes";
    }

    else if (v287 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v233 = __nwlog_obj();
      v234 = type[0];
      v237 = os_log_type_enabled(v233, type[0]);
      if (backtrace_string)
      {
        if (v237)
        {
          *buf = 136446466;
          *&buf[4] = "nw_encoder_zstd_encode";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null out_bytes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_539:
        if (v232)
        {
LABEL_540:
          free(v232);
        }

        return;
      }

      if (!v237)
      {
        goto LABEL_539;
      }

      *buf = 136446210;
      *&buf[4] = "nw_encoder_zstd_encode";
      v235 = "%{public}s called with null out_bytes, no backtrace";
    }

    else
    {
      v233 = __nwlog_obj();
      v234 = type[0];
      if (!os_log_type_enabled(v233, type[0]))
      {
        goto LABEL_539;
      }

      *buf = 136446210;
      *&buf[4] = "nw_encoder_zstd_encode";
      v235 = "%{public}s called with null out_bytes, backtrace limit exceeded";
    }

LABEL_538:
    _os_log_impl(&dword_181A37000, v233, v234, v235, buf, 0xCu);
    goto LABEL_539;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = (a2 + a3);
  if (!a2)
  {
    v13 = 0;
  }

  v262 = v13;
  v260 = a4;
  v261 = a4;
  v256 = v8;
  v14 = a3;
LABEL_5:
  v258 = v12;
  v15 = *v8;
  v16 = *(*v8 + 3608);
  v259 = v10;
  if (v16)
  {
    v17 = *(v15 + 356);
    if (v17 != 1)
    {
      goto LABEL_296;
    }

LABEL_294:
    if (*(v15 + 3616) != a2 || *(v15 + 3632) != v11)
    {
      return;
    }

    goto LABEL_296;
  }

  v18 = *(v15 + 3640);
  v19 = v18 + v14;
  v20 = v260;
  if (*(v15 + 140) != 1)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0 && !(v19 >> 17))
  {
    if (v18 && (*(v15 + 3616) != a2 || v11 != *(v15 + 3624)))
    {
      return;
    }

    *(v15 + 3616) = a2;
    *(v15 + 3624) = a3;
    *(v15 + 3632) = a3;
    *(v15 + 3640) = v19;
    if (*(v15 + 16))
    {
      v196 = 2;
    }

    else
    {
      v196 = 6;
    }

LABEL_480:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_encoder_zstd_encode";
    *&buf[12] = 2048;
    *&buf[14] = v196;
    LODWORD(v241) = 22;
    v221 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s out buffer not fully consumed when remaining is %zu", buf, v241);
    type[0] = 16;
    LOBYTE(v287) = 0;
    if (!__nwlog_fault(v221, type, &v287))
    {
      goto LABEL_508;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v222 = gLogObj;
      v223 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_508;
      }

      *buf = 136446466;
      *&buf[4] = "nw_encoder_zstd_encode";
      *&buf[12] = 2048;
      *&buf[14] = v196;
      v224 = "%{public}s out buffer not fully consumed when remaining is %zu";
    }

    else if (v287 == 1)
    {
      v229 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v222 = gLogObj;
      v223 = type[0];
      v230 = os_log_type_enabled(gLogObj, type[0]);
      if (v229)
      {
        if (v230)
        {
          *buf = 136446722;
          *&buf[4] = "nw_encoder_zstd_encode";
          *&buf[12] = 2048;
          *&buf[14] = v196;
          *&buf[22] = 2082;
          *&buf[24] = v229;
          _os_log_impl(&dword_181A37000, v222, v223, "%{public}s out buffer not fully consumed when remaining is %zu, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v229);
        goto LABEL_508;
      }

      if (!v230)
      {
LABEL_508:
        if (v221)
        {
          free(v221);
        }

        return;
      }

      *buf = 136446466;
      *&buf[4] = "nw_encoder_zstd_encode";
      *&buf[12] = 2048;
      *&buf[14] = v196;
      v224 = "%{public}s out buffer not fully consumed when remaining is %zu, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v222 = gLogObj;
      v223 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_508;
      }

      *buf = 136446466;
      *&buf[4] = "nw_encoder_zstd_encode";
      *&buf[12] = 2048;
      *&buf[14] = v196;
      v224 = "%{public}s out buffer not fully consumed when remaining is %zu, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v222, v223, v224, buf, 0x16u);
    goto LABEL_508;
  }

  v252 = a2;
  v21 = *(v15 + 192);
  v272 = *(v15 + 176);
  v273 = v21;
  v274 = *(v15 + 208);
  v275 = *(v15 + 224);
  v22 = *(v15 + 128);
  v268 = *(v15 + 112);
  v269 = v22;
  v23 = *(v15 + 160);
  v270 = *(v15 + 144);
  v271 = v23;
  v24 = *(v15 + 64);
  v264 = *(v15 + 48);
  v265 = v24;
  v25 = *(v15 + 96);
  v266 = *(v15 + 80);
  v267 = v25;
  v26 = *(v15 + 32);
  *type = *(v15 + 16);
  *&type[16] = v26;
  v27 = *(v15 + 3704);
  v28 = *(v15 + 3712);
  v249 = *(v15 + 3720);
  v29 = *(v15 + 3664);
  v253 = a3;
  v250 = v27;
  v251 = v28;
  if (v29 && !*(v15 + 3688))
  {
    v242 = v19;
    v30 = *(v15 + 3672);
    v245 = *(v15 + 3680);
    v31 = *(v15 + 872);
    v32 = *(v15 + 880);
    v246 = *(v15 + 888);
    v33 = *(v15 + 16);
    *v283 = *(v15 + 20);
    *&v283[16] = *(v15 + 36);
    v34 = *(v15 + 44);
    v281 = *(v15 + 48);
    v35 = *(v15 + 60);
    v282 = *(v15 + 56);
    v280 = *(v15 + 64);
    v254 = *(v15 + 80);
    v36 = *(v15 + 84);
    *(v292 + 12) = *(v15 + 96);
    v292[0] = v36;
    v248 = *(v15 + 112);
    v37 = *(v15 + 116);
    v38 = *(v15 + 136);
    v279 = *(v15 + 132);
    v278 = v37;
    v39 = *(v15 + 140);
    v277 = *(v15 + 156);
    v276 = v39;
    v40 = *(v15 + 160);
    v41 = *(v15 + 164);
    v42 = *(v15 + 180);
    v43 = *(v15 + 196);
    v44 = *(v15 + 212);
    v291 = *(v15 + 228);
    v289 = v43;
    v290 = v44;
    v287 = v41;
    v288 = v42;
    if ((v31 == 0) != (v32 == 0))
    {
      goto LABEL_503;
    }

    v247 = v31;
    v244 = v33;
    v243 = v32;
    if (v38)
    {
      if (v35)
      {
        if (v35 < 0)
        {
          v45 = 0;
        }

        else if (v35 >= 0x16)
        {
          v45 = 22;
        }

        else
        {
          v45 = v35;
        }
      }

      else
      {
        v45 = 3;
      }

      v51 = v30 < 0x40001;
      if (v30 < 0x20001)
      {
        ++v51;
      }

      if (v30 <= 0x4000)
      {
        ++v51;
      }

      v52 = &ZSTD_defaultCParameters + 644 * v51 + 28 * v45;
      v53 = *v52;
      v54 = *(v52 + 5);
      if (v35 <= 0xFFFE0000)
      {
        v55 = -131072;
      }

      else
      {
        v55 = v35;
      }

      if (v35 < 0)
      {
        v54 = -v55;
      }

      if (v30 >= 0x40000001)
      {
        goto LABEL_55;
      }

      v56 = 32 - __clz(v30 - 1);
      if (v30 < 0x40)
      {
        v56 = 6;
      }

      if (v53 >= v56)
      {
        v53 = v56;
      }

      v57 = v53;
      if (v30)
      {
LABEL_55:
        if (1 << v53 >= v30)
        {
          v57 = v53;
        }

        else
        {
          v58 = (1 << v53) + v30;
          if (v58 >> 31)
          {
            v57 = 31;
          }

          else
          {
            v57 = 32 - __clz(v58 - 1);
          }
        }
      }

      v60 = *(v52 + 1);
      v59 = *(v52 + 2);
      v61 = *(v52 + 12);
      v62 = *(v52 + 6);
      if (v62 <= 5)
      {
        v63 = v57;
      }

      else
      {
        v63 = v57 + 1;
      }

      if (v59 >= v57 + 1)
      {
        v59 = v57 + 1;
      }

      if (v60 - (v62 > 5) <= v57)
      {
        v64 = v60;
      }

      else
      {
        v64 = v63;
      }

      if (v53 <= 0xA)
      {
        v53 = 10;
      }

      if (v62 - 3 >= 0xFFFFFFFE)
      {
        if (v59 >= 0x18)
        {
          v59 = 24;
        }

        if (v64 >= 0x18)
        {
          v64 = 24;
        }
      }

      else
      {
        if (v62 - 6 >= 0xFFFFFFFD)
        {
          v65 = v61 | 0x18;
          if (v61 >= 6)
          {
            v65 = 30;
          }

          if (v61 >= 4)
          {
            v66 = v65;
          }

          else
          {
            v66 = 28;
          }

          if (v59 >= v66)
          {
            v59 = v66;
          }
        }

        if (v62 - 3 < 3)
        {
          v59 += 2;
        }
      }

      if (*v283)
      {
        v53 = *v283;
      }

      v67.i64[1] = v61;
      v67.i64[0] = __PAIR64__(v59, v64);
      v68 = vbslq_s8(vceqzq_s32(*&v283[4]), v67, *&v283[4]);
      if (*&v283[20])
      {
        v54 = *&v283[20];
      }

      v69 = v34 ? v34 : v62;
    }

    else
    {
      if (v30 || v254 >= 1)
      {
        if (v254 < 1)
        {
          v46 = -1;
        }

        else
        {
          v46 = v254;
        }

        if (v30)
        {
          v48 = v254 < 1;
        }

        else
        {
          v48 = 0;
        }

        v49 = 500;
        if (!v48)
        {
          v49 = 0;
        }

        v47 = v46 + v30 + v49;
      }

      else
      {
        v46 = -1;
        v47 = -1;
      }

      if (v35)
      {
        if (v35 < 0)
        {
          v50 = 0;
        }

        else if (v35 >= 0x16)
        {
          v50 = 22;
        }

        else
        {
          v50 = v35;
        }
      }

      else
      {
        v50 = 3;
      }

      v70 = v47 < 0x40001;
      if (v47 < 0x20001)
      {
        ++v70;
      }

      if (v47 > 0x4000)
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 + 1;
      }

      v72 = &ZSTD_defaultCParameters + 644 * v71 + 28 * v50;
      *buf = *v72;
      v73 = *(v72 + 4);
      v74 = *(v72 + 5);
      v75 = *(v72 + 6);
      if (v35 <= 0xFFFE0000)
      {
        v76 = -131072;
      }

      else
      {
        v76 = v35;
      }

      if (v35 < 0)
      {
        v74 = -v76;
      }

      *&buf[16] = v73;
      *&buf[20] = v74;
      *&buf[24] = v75;
      ZSTD_adjustCParams_internal(&v284, buf, v46, v30, 2, 0);
      v77 = v284;
      if (v248 == 1)
      {
        v77 = 27;
      }

      v78.i64[0] = __PAIR64__(*v285, v77);
      v79 = vbsl_s8(vceqz_s32(*&v283[16]), *&v285[12], *&v283[16]);
      v80 = v34 ? v34 : v286;
      v78.i64[1] = *&v285[4];
      *buf = vbslq_s8(vceqzq_s32(*v283), v78, *v283);
      *&buf[16] = v79;
      *&buf[24] = v80;
      ZSTD_adjustCParams_internal(&v284, buf, v46, v30, 2, v40);
      v68 = *v285;
      v53 = v284;
      v54 = *&v285[16];
      v69 = v286;
      v31 = v247;
    }

    if (v69 - 6 < 0xFFFFFFFD || v68.i32[1] <= v68.i32[0] || v68.i32[0] >= 0x19u)
    {
      if (v30 || v254 >= 1)
      {
        if (v254 < 1)
        {
          v81 = -1;
        }

        else
        {
          v81 = v254;
        }

        if (v30)
        {
          v83 = v254 < 1;
        }

        else
        {
          v83 = 0;
        }

        v84 = 500;
        if (!v83)
        {
          v84 = 0;
        }

        v82 = v81 + v30 + v84;
      }

      else
      {
        v81 = -1;
        v82 = -1;
      }

      if (v35)
      {
        if (v35 < 0)
        {
          v85 = 0;
        }

        else if (v35 >= 0x16)
        {
          v85 = 22;
        }

        else
        {
          v85 = v35;
        }
      }

      else
      {
        v85 = 3;
      }

      v86 = v82 < 0x40001;
      if (v82 < 0x20001)
      {
        ++v86;
      }

      if (v82 > 0x4000)
      {
        v87 = v86;
      }

      else
      {
        v87 = v86 + 1;
      }

      v88 = &ZSTD_defaultCParameters + 644 * v87 + 28 * v85;
      *buf = *v88;
      v89 = *(v88 + 4);
      v90 = *(v88 + 5);
      v91 = *(v88 + 6);
      if (v35 <= 0xFFFE0000)
      {
        v92 = -131072;
      }

      else
      {
        v92 = v35;
      }

      if (v35 < 0)
      {
        v90 = -v92;
      }

      *&buf[16] = v89;
      *&buf[20] = v90;
      *&buf[24] = v91;
      ZSTD_adjustCParams_internal(&v284, buf, v81, v30, 2, 0);
      v93 = v284;
      if (v248 == 1)
      {
        v93 = 27;
      }

      v94.i64[0] = __PAIR64__(*v285, v93);
      v95 = vbsl_s8(vceqz_s32(*&v283[16]), *&v285[12], *&v283[16]);
      if (v34)
      {
        v96 = v34;
      }

      else
      {
        v96 = v286;
      }

      v94.i64[1] = *&v285[4];
      *buf = vbslq_s8(vceqzq_s32(*v283), v94, *v283);
      *&buf[16] = v95;
      *&buf[24] = v96;
      ZSTD_adjustCParams_internal(&v284, buf, v81, v30, 2, v40);
      v38 = 0;
      v68 = *v285;
      v53 = v284;
      v54 = *&v285[16];
      v69 = v286;
      v31 = v247;
    }

    *&v283[4] = v68;
    *v283 = v53;
    *&v283[20] = v54;
    if (!v40)
    {
      if (v69 - 6 >= 0xFFFFFFFD)
      {
        if (v53 > 0xE)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }
      }

      else
      {
        v40 = 2;
      }
    }

    if (!v38 && (v69 == 1 || v69 - 3 <= 2 && v40 == 1))
    {
      v97 = 128;
    }

    else
    {
      v97 = (4 << v68.i8[0]) + 128;
    }

    v98 = v40 == 1 && v69 - 6 >= 0xFFFFFFFD;
    v99 = ((1 << v68.i8[4]) + 63) & 0xFFFFFFFFFFFFFFC0;
    if (!v98)
    {
      v99 = 0;
    }

    v100 = (4 << v68.i8[4]) + v97 + 14784;
    v101 = v100 + v99;
    v102 = v31 ? v31(v246, v100 + v99) : malloc_type_malloc(v100 + v99, 0xB2223D72uLL);
    v103 = v102;
    if (!v102)
    {
      goto LABEL_503;
    }

    v104 = &v102[v101] & 0xFFFFFFFFFFFFFFC0;
    v105 = v102 + 6080;
    *(v102 + 4) = v102;
    *(v102 + 5) = &v102[v101];
    *(v102 + 6) = v102 + 6080;
    *(v102 + 7) = v102 + 6080;
    *(v102 + 8) = v102 + 6080;
    *(v102 + 9) = v104;
    *(v102 + 10) = v104;
    *(v102 + 11) = 0;
    *(v102 + 12) = 0;
    *(v102 + 755) = v247;
    *(v102 + 756) = v243;
    *(v102 + 757) = v246;
    *(v102 + 1517) = 0;
    *(v102 + 1518) = v40;
    *&buf[4] = *v283;
    *&buf[20] = *&v283[16];
    *buf = v244;
    *&buf[28] = v69;
    *&v294 = v281;
    *(&v294 + 1) = __PAIR64__(v35, v282);
    v295 = v280;
    *v296 = v254;
    *&v296[16] = *(v292 + 12);
    *&v296[4] = v292[0];
    *&v297[20] = v279;
    *&v297[4] = v278;
    *v297 = v248;
    *&v297[24] = v38;
    *&v297[44] = v277;
    *&v297[28] = v276;
    *v298 = v40;
    *&v298[4] = v287;
    *&v298[68] = v291;
    *&v298[52] = v290;
    *&v298[36] = v289;
    *&v298[20] = v288;
    v106 = *v283;
    *(v102 + 372) = *&buf[16];
    *(v102 + 360) = v106;
    *(v102 + 61) = v38;
    *v102 = v29;
    *(v102 + 1) = v30;
    *(v102 + 4) = v245;
    if (v101 >> 6 > 0xE6)
    {
      *(v102 + 6) = v102 + 14784;
      *(v102 + 7) = v102 + 14784;
      *(v102 + 8) = v102 + 14784;
    }

    else
    {
      v105 = 0;
      v102[88] = 1;
    }

    a4 = v261;
    v10 = v259;
    *(v102 + 3) = v105;
    *(v102 + 753) = 0x400000001;
    *(v102 + 1508) = 8;
    *(v102 + 616) = 0;
    *(v102 + 1503) = 0;
    *(v102 + 752) = 0;
    v27 = v250;
    v28 = v251;
    if (ZSTD_reset_matchState((v102 + 104), (v102 + 32), &buf[4], v40, 0, 1, 0) <= 0xFFFFFFFFFFFFFF88)
    {
      HIDWORD(v294) = 3;
      LODWORD(v294) = 1;
      inserted = ZSTD_compress_insertDictionary((v103 + 408), v103 + 13, 0, v103 + 4, buf, *v103, *(v103 + 1), v245, 0x100000001, *(v103 + 3));
      if (inserted < 0xFFFFFFFFFFFFFF89)
      {
        *(v103 + 1516) = inserted;
        *(v15 + 3688) = v103;
        *(v15 + 3696) = v103;
        v19 = v242;
        goto LABEL_176;
      }
    }

    v225 = *(v103 + 756);
    v226 = *(v103 + 757);
    v227 = *(v103 + 4);
    v228 = v227 > v103 || *(v103 + 5) <= v103;
    *(v103 + 12) = 0;
    *(v103 + 4) = 0u;
    *(v103 + 5) = 0u;
    *(v103 + 2) = 0u;
    *(v103 + 3) = 0u;
    if (v227)
    {
      if (!v225)
      {
        free(v227);
        if (!v228)
        {
          goto LABEL_503;
        }

        goto LABEL_502;
      }

      v225(v226);
    }

    if (!v228)
    {
LABEL_503:
      *(v15 + 3688) = 0;
      return;
    }

    if (v225)
    {
      (v225)(v226, v103);
      goto LABEL_503;
    }

LABEL_502:
    free(v103);
    goto LABEL_503;
  }

LABEL_176:
  *(v15 + 3704) = 0;
  *(v15 + 3712) = 0;
  *(v15 + 3720) = 0;
  v108 = *(v15 + 3696);
  if (v108 && !*(v15 + 3688))
  {
    HIDWORD(v264) = *(v108 + 6068);
  }

  if (a4)
  {
    *(v15 + 760) = v19 + 1;
  }

  v255 = v11;
  v109 = v10;
  if (v27)
  {
    v110 = *(v15 + 760) - 1;
    if (!v108)
    {
      v113 = v28;
      goto LABEL_194;
    }

    v111 = v265;
    v112 = DWORD1(v266);
    v113 = v28;
    if (*(v108 + 244))
    {
      goto LABEL_197;
    }
  }

  else
  {
    if (!v108)
    {
      v113 = 0;
      v110 = *(v15 + 760) - 1;
      goto LABEL_194;
    }

    v113 = *(v108 + 8);
    v110 = *(v15 + 760) - 1;
    v111 = v265;
    v112 = DWORD1(v266);
    if (*(v108 + 244))
    {
      goto LABEL_197;
    }
  }

  if (v110 != -1 && attachDictSizeCutoffs[*(v108 + 384)] < v110)
  {
    if (v112 == 1 && !v111)
    {
      v114 = 0;
      v115 = 1;
      v116 = HIDWORD(v264);
      goto LABEL_199;
    }

    goto LABEL_194;
  }

  if (v112 == 2 || v111)
  {
LABEL_194:
    v115 = 0;
    v114 = v113;
    goto LABEL_198;
  }

LABEL_197:
  v114 = 0;
  v115 = 1;
LABEL_198:
  v116 = HIDWORD(v264);
  if (v110 == -1)
  {
    v117 = v266 < 1;
    if (v266 < 1)
    {
      v118 = -1;
    }

    else
    {
      v118 = v266;
    }

    if (!v114)
    {
      v121 = -1;
      v120 = -1;
      if (v266 < 1)
      {
        goto LABEL_204;
      }
    }

    goto LABEL_200;
  }

LABEL_199:
  v117 = 0;
  v118 = v110;
LABEL_200:
  v145 = !v117 || v114 == 0;
  v119 = 500;
  if (v145)
  {
    v119 = 0;
  }

  v120 = v118 + v114 + v119;
  v121 = v118;
LABEL_204:
  if (v116)
  {
    if (v116 < 0)
    {
      v122 = 0;
    }

    else if (v116 >= 0x16)
    {
      v122 = 22;
    }

    else
    {
      v122 = v116;
    }
  }

  else
  {
    v122 = 3;
  }

  v123 = v120 < 0x40001;
  if (v120 < 0x20001)
  {
    ++v123;
  }

  if (v120 <= 0x4000)
  {
    ++v123;
  }

  v124 = &ZSTD_defaultCParameters + 644 * v123 + 28 * v122;
  *buf = *v124;
  v125 = *(v124 + 4);
  v126 = *(v124 + 5);
  v127 = *(v124 + 6);
  if (v116 <= 0xFFFE0000)
  {
    v128 = -131072;
  }

  else
  {
    v128 = v116;
  }

  if (v116 < 0)
  {
    v126 = -v128;
  }

  *&buf[16] = v125;
  *&buf[20] = v126;
  *&buf[24] = v127;
  ZSTD_adjustCParams_internal(&v287, buf, v121, v113, v115, 0);
  v129 = v287;
  v130 = v268;
  v131 = *&type[28];
  if (v268 == 1)
  {
    v129 = 27;
  }

  v132.i64[0] = __PAIR64__(DWORD1(v287), v129);
  v133 = vbsl_s8(vceqz_s32(*&type[20]), *&v288, *&type[20]);
  if (!*&type[28])
  {
    v131 = DWORD2(v288);
  }

  v134 = v271;
  v132.i64[1] = *(&v287 + 1);
  *buf = vbslq_s8(vceqzq_s32(*&type[4]), v132, *&type[4]);
  *&buf[16] = v133;
  *&buf[24] = v131;
  ZSTD_adjustCParams_internal(&type[4], buf, v121, v113, v115, v271);
  v10 = v109;
  v11 = v255;
  if (HIDWORD(v270))
  {
    if (v130)
    {
      goto LABEL_244;
    }

    goto LABEL_232;
  }

  if (*&type[28] < 7u)
  {
    HIDWORD(v270) = 2;
    if (v130)
    {
      goto LABEL_244;
    }

    goto LABEL_232;
  }

  if (*&type[4] > 0x10u)
  {
    v135 = 1;
  }

  else
  {
    v135 = 2;
  }

  HIDWORD(v270) = v135;
  if (!v130)
  {
LABEL_232:
    if (*&type[28] < 7u)
    {
      v130 = 2;
    }

    else if (*&type[4] > 0x1Au)
    {
      v130 = 1;
    }

    else
    {
      v130 = 2;
    }
  }

LABEL_244:
  LODWORD(v268) = v130;
  if (!v134)
  {
    if ((*&type[28] - 6) >= 0xFFFFFFFD)
    {
      if (*&type[4] > 0xEu)
      {
        v134 = 1;
      }

      else
      {
        v134 = 2;
      }
    }

    else
    {
      v134 = 2;
    }
  }

  LODWORD(v271) = v134;
  v136 = *(&v274 + 1);
  if (!*(&v274 + 1))
  {
    v136 = 0x20000;
  }

  *(&v274 + 1) = v136;
  v137 = v275;
  if (v116 >= 10)
  {
    v138 = 1;
  }

  else
  {
    v138 = 2;
  }

  if (!v275)
  {
    v137 = v138;
  }

  LODWORD(v275) = v137;
  if (v108)
  {
    v139 = *(v108 + 8);
    a4 = v261;
    if (v139 && (v110 < 0x20000 || v110 == -1 || 6 * v139 > v110 || !*(v108 + 6068)) && DWORD1(v266) != 3)
    {
      v140 = *(v108 + 244);
      v141 = *(v108 + 384);
      if (v140)
      {
        goto LABEL_262;
      }

      if (v110 == -1 || attachDictSizeCutoffs[v141] >= v110)
      {
        if (DWORD1(v266) == 2)
        {
          goto LABEL_409;
        }
      }

      else if (DWORD1(v266) != 1)
      {
        goto LABEL_409;
      }

      if (!v265)
      {
LABEL_262:
        *&v298[16] = v272;
        *&v298[32] = v273;
        *&v298[48] = v274;
        *&v298[64] = v275;
        *v297 = v268;
        *&v297[16] = v269;
        *&v297[32] = v270;
        *v298 = v271;
        v294 = v264;
        v295 = v265;
        *v296 = v266;
        *&v296[16] = v267;
        v142 = *(v108 + 368);
        v143 = v142 - 2;
        *buf = *type;
        *&buf[16] = *&type[16];
        if (v142 - 2 <= 6)
        {
          v143 = 6;
        }

        v144 = *(v108 + 360);
        v145 = v141 - 3 >= 3 || v140 == 0;
        if (v145)
        {
          v146 = v142;
        }

        else
        {
          v146 = v143;
        }

        v147 = *(v108 + 364);
        if (v110 >= 0x40000001)
        {
          if (v110 == -1)
          {
LABEL_393:
            v174 = *(v108 + 372);
            if (v141 - 6 >= 0xFFFFFFFD && *v298 <= 1u)
            {
              v175 = v174 | 0x18;
              if (v174 >= 6)
              {
                v175 = 30;
              }

              if (v174 < 4)
              {
                v175 = 28;
              }

              if (v146 >= v175)
              {
                v146 = v175;
              }
            }

            v176 = *(v108 + 376);
            *&buf[8] = v147;
            *&buf[12] = v146;
            *&buf[20] = v176;
            *&buf[16] = v174;
            *&buf[28] = v141;
            *v298 = *(v108 + 6072);
            v177 = ZSTD_resetCCtx_internal(v15, buf, v110, 0, 0);
            if (v177 <= 0xFFFFFFFFFFFFFF88)
            {
              v178 = *(v108 + 104) - *(v108 + 112);
              if (*(v108 + 128) != v178)
              {
                *(v15 + 3464) = v108 + 104;
                v179 = *(v15 + 3240);
                if (v179 < v178)
                {
                  *(v15 + 3216) = *(v15 + 3224) + v178;
                  *(v15 + 3244) = v178;
                  *(v15 + 3240) = v178;
                  v179 = v178;
                }

                *(v15 + 3256) = v179;
              }

              *(v15 + 664) = *(v108 + 6064);
              *(v15 + 672) = *(v108 + 8);
              memcpy(*(v15 + 3200), (v108 + 408), 0x1600uLL);
              v177 = 0;
            }

            goto LABEL_472;
          }
        }

        else
        {
          v148 = 32 - __clz(v110 - 1);
          if (v110 < 0x40)
          {
            v148 = 6;
          }

          if (v144 >= v148)
          {
            v144 = v148;
          }
        }

        if (v146 >= v144 + 1)
        {
          v146 = v144 + 1;
        }

        if (v147 - (v141 > 5) > v144)
        {
          if (v141 <= 5)
          {
            v147 = v144;
          }

          else
          {
            v147 = v144 + 1;
          }
        }

        goto LABEL_393;
      }

LABEL_409:
      *&v298[16] = v272;
      *&v298[32] = v273;
      *&v298[48] = v274;
      *&v298[64] = v275;
      *v297 = v268;
      *&v297[16] = v269;
      *&v297[32] = v270;
      *v298 = v271;
      v294 = v264;
      v295 = v265;
      *v296 = v266;
      *&v296[16] = v267;
      *buf = *type;
      *&buf[16] = *&type[16];
      *&buf[4] = *(v108 + 360);
      *&buf[16] = *(v108 + 372);
      v180 = *(v108 + 6072);
      *&buf[4] = *&type[4];
      *v298 = v180;
      v177 = ZSTD_resetCCtx_internal(v15, buf, v110, 0, 1);
      if (v177 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_472;
      }

      *(v15 + 712) = *(v15 + 696);
      v181 = *(v108 + 384);
      v182 = v10;
      if (v181 == 1)
      {
        v183 = 0;
        v184 = 1 << *(v108 + 368);
        v185 = v15 + 3216;
        v186 = *(v15 + 3328);
        v187 = *(v108 + 216);
LABEL_412:
        if (v184 < 8 || (v186 - v187) <= 0x1F)
        {
          v200 = 0;
          do
          {
            v186->i32[v200] = v187->i32[v200] >> 8;
            ++v200;
          }

          while (v184 != v200);
        }

        else
        {
          v188 = v184 & 0xFFFFFFFFFFFFFFF8;
          v189 = v186 + 1;
          v190 = v187 + 1;
          do
          {
            v191 = vshrq_n_u32(*v190, 8uLL);
            v189[-1] = vshrq_n_u32(v190[-1], 8uLL);
            *v189 = v191;
            v189 += 2;
            v190 += 2;
            v188 -= 8;
          }

          while (v188);
        }

        goto LABEL_445;
      }

      v198 = v181 - 3;
      if ((v181 - 3) <= 2 && *(v108 + 6072) == 1)
      {
        v183 = 0;
        v199 = *(v108 + 368);
        v184 = 1 << v199;
        v185 = v15 + 3216;
        v186 = *(v15 + 3328);
        v187 = *(v108 + 216);
      }

      else
      {
        v183 = 1 << *(v108 + 364);
        v199 = *(v108 + 368);
        v184 = 1 << v199;
        v185 = v15 + 3216;
        v186 = *(v15 + 3328);
        v187 = *(v108 + 216);
        if (v198 >= 0xFFFFFFFE)
        {
          goto LABEL_412;
        }
      }

      memcpy(v186, v187, 4 << v199);
LABEL_445:
      v201 = *(v15 + 260);
      if (v201 != 1 && ((v201 - 3) > 2 || *(v15 + 376) != 1))
      {
        v203 = *(v15 + 3344);
        v204 = *(v108 + 232);
        if ((*(v108 + 384) - 3) >= 0xFFFFFFFE)
        {
          if (v183)
          {
            v205 = 0;
            if (v183 < 8)
            {
              goto LABEL_458;
            }

            if ((v203 - v204) < 0x20)
            {
              goto LABEL_458;
            }

            v205 = v183 & 0xFFFFFFFFFFFFFFF8;
            v206 = v203 + 1;
            v207 = v204 + 1;
            v208 = v183 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v209 = vshrq_n_u32(*v207, 8uLL);
              v206[-1] = vshrq_n_u32(v207[-1], 8uLL);
              *v206 = v209;
              v206 += 2;
              v207 += 2;
              v208 -= 8;
            }

            while (v208);
            if (v183 != v205)
            {
LABEL_458:
              v210 = v183 - v205;
              v211 = v205;
              v212 = &v203->i8[4 * v205];
              v213 = &v204->i32[v211];
              do
              {
                v214 = *v213++;
                *v212 = v214 >> 8;
                v212 += 4;
                --v210;
              }

              while (v210);
            }
          }
        }

        else
        {
          memcpy(v203, v204, 4 * v183);
        }
      }

      if ((*(v108 + 384) - 6) >= 0xFFFFFFFD && *(v108 + 6072) == 1)
      {
        memcpy(*(v15 + 3272), *(v108 + 160), v184);
        *(v15 + 3312) = *(v108 + 200);
      }

      v216 = *(v15 + 3264);
      if (v216)
      {
        v217 = 4 << v216;
      }

      else
      {
        v217 = 0;
      }

      bzero(*(v15 + 3336), v217);
      v218 = *(v15 + 704);
      if (*(v15 + 712) < v218)
      {
        *(v15 + 712) = v218;
      }

      v219 = *(v108 + 104);
      v220 = *(v108 + 120);
      *(v185 + 32) = *(v108 + 136);
      *v185 = v219;
      *(v185 + 16) = v220;
      *(v15 + 3256) = *(v108 + 144);
      *(v15 + 664) = *(v108 + 6064);
      *(v15 + 672) = *(v108 + 8);
      memcpy(*(v15 + 3200), (v108 + 408), 0x1600uLL);
      v177 = 0;
      a4 = v261;
      v10 = v182;
      v11 = v255;
LABEL_472:
      if (v177 > 0xFFFFFFFFFFFFFF88)
      {
        return;
      }

      goto LABEL_284;
    }

    if (ZSTD_resetCCtx_internal(v15, type, v110, *(v108 + 8), 0) >= 0xFFFFFFFFFFFFFF89)
    {
      return;
    }

    v149 = ZSTD_compress_insertDictionary(*(v15 + 3200), (v15 + 3216), v15 + 1032, (v15 + 680), (v15 + 232), *v108, *(v108 + 8), *(v108 + 16), 0, *(v15 + 3520));
  }

  else
  {
    v139 = v251;
    a4 = v261;
    if (ZSTD_resetCCtx_internal(v15, type, v110, v251, 0) >= 0xFFFFFFFFFFFFFF89)
    {
      return;
    }

    v149 = ZSTD_compress_insertDictionary(*(v15 + 3200), (v15 + 3216), v15 + 1032, (v15 + 680), (v15 + 232), v250, v251, v249, 0, *(v15 + 3520));
  }

  if (v149 > 0xFFFFFFFFFFFFFF88)
  {
    return;
  }

  *(v15 + 664) = v149;
  *(v15 + 672) = v139;
LABEL_284:
  *(v15 + 3552) = 0u;
  v17 = *(v15 + 356);
  if (v17)
  {
    *(v15 + 3568) = 0;
    *(v15 + 3592) = 0uLL;
    *(v15 + 3608) = 1;
    a2 = v252;
    a3 = v253;
    if (v17 == 1)
    {
      *(v15 + 3616) = v252;
      *(v15 + 3624) = v253;
      *(v15 + 3632) = v11;
    }
  }

  else
  {
    v150 = *(v15 + 752);
    if (v150 == v110)
    {
      ++v150;
    }

    *(v15 + 3568) = v150;
    *(v15 + 3592) = 0uLL;
    *(v15 + 3608) = 1;
    a2 = v252;
    a3 = v253;
  }

  v16 = *(v15 + 360);
  if (v16 == 1)
  {
    *(v15 + 3648) = 131591;
    if (v17 != 1)
    {
      goto LABEL_296;
    }

    goto LABEL_294;
  }

  v16 = 1;
  if (v17 == 1)
  {
    goto LABEL_294;
  }

LABEL_296:
  if (*(v15 + 360) != 1 || *(v15 + 3648) == 131591)
  {
    if (a2)
    {
      v151 = &v11[a2];
    }

    else
    {
      v151 = 0;
    }

    if (v17 == 1)
    {
      if (v151)
      {
        v151 -= *(v15 + 3640);
      }

      else
      {
        v151 = 0;
      }

      *(v15 + 3640) = 0;
    }

    v152 = v10 + 131591;
    while (1)
    {
      while (1)
      {
        if (!v16)
        {
          return;
        }

        if (v16 == 1)
        {
          break;
        }

        if (v16 == 2)
        {
          v153 = *(v15 + 3592);
          v154 = *(v15 + 3600);
          goto LABEL_365;
        }
      }

      if (a4)
      {
        v155 = v262 - v151;
        if ((v262 - v151) > 0xFF00FF00FF00FEFFLL)
        {
          goto LABEL_316;
        }

        v156 = (0x20000 - v155) >> 11;
        if (v155 >= 0x20000)
        {
          v156 = 0;
        }

        v157 = v155 + (v155 >> 8) + v156;
        if (!v157)
        {
LABEL_316:
          v157 = -72;
        }

        v158 = v152 - v10;
        if ((v152 - v10 >= v157 || *(v15 + 360) == 1) && !*(v15 + 3560))
        {
          v192 = ZSTD_compressEnd_public(v15, v10, v158, v151, v155);
          if (v192 > 0xFFFFFFFFFFFFFF88)
          {
            return;
          }

          v10 = (v10 + v192);
          *(v15 + 3608) = 0x100000000;
          *(v15 + 760) = 0;
          v151 = v262;
          goto LABEL_421;
        }

        if (!*(v15 + 356))
        {
LABEL_326:
          v159 = *(v15 + 3560);
          if (*(v15 + 3568) - v159 >= (v262 - v151))
          {
            v160 = v262 - v151;
          }

          else
          {
            v160 = *(v15 + 3568) - v159;
          }

          if (v160)
          {
            memcpy((*(v15 + 3536) + v159), v151, v160);
            v159 = *(v15 + 3560);
          }

          v161 = v159 + v160;
          *(v15 + 3560) = v161;
          if (v151)
          {
            v151 += v160;
          }

          else
          {
            v151 = 0;
          }

          a4 = v261;
          if ((v261 & 1) == 0 && v161 < *(v15 + 3568))
          {
            goto LABEL_421;
          }

          goto LABEL_336;
        }

        if (a4)
        {
          goto LABEL_337;
        }
      }

      else if (!*(v15 + 356))
      {
        goto LABEL_326;
      }

      if ((v262 - v151) < *(v15 + 752))
      {
        *(v15 + 3640) = v262 - v151;
        v151 = v262;
        goto LABEL_421;
      }

LABEL_336:
      v158 = v152 - v10;
      if (!*(v15 + 356))
      {
        v163 = *(v15 + 3560) - *(v15 + 3552);
        v162 = 1;
        goto LABEL_341;
      }

LABEL_337:
      v162 = 0;
      if ((v262 - v151) >= *(v15 + 752))
      {
        v163 = *(v15 + 752);
      }

      else
      {
        v163 = v262 - v151;
      }

      if (v163 > 0xFF00FF00FF00FEFFLL)
      {
        goto LABEL_353;
      }

LABEL_341:
      v164 = (0x20000 - v163) >> 11;
      if (v163 >= 0x20000)
      {
        v164 = 0;
      }

      v165 = v163 + (v163 >> 8) + v164;
      if (v165)
      {
        if (v158 < v165)
        {
          goto LABEL_346;
        }

LABEL_354:
        v166 = v10;
        if (v162)
        {
          goto LABEL_349;
        }

LABEL_355:
        v168 = &v151[v163];
        if (&v151[v163] != v262)
        {
          a4 = 0;
        }

        if (a4 == 1)
        {
          v153 = ZSTD_compressEnd_public(v15, v166, v158, v151, v163);
        }

        else
        {
          v153 = ZSTD_compressContinue_internal(v15, v166, v158, v151, v163, 0);
        }

        if (v153 > 0xFFFFFFFFFFFFFF88)
        {
          return;
        }

        if (v151)
        {
          v151 = v168;
        }

        else
        {
          v151 = 0;
        }

        *(v15 + 3612) = a4;
        if (v166 != v10)
        {
          goto LABEL_364;
        }

LABEL_379:
        v10 = (v10 + v153);
        if (a4)
        {
          *(v15 + 3608) = 0;
          *(v15 + 760) = 0;
LABEL_420:
          a4 = v261;
LABEL_421:
          v193 = *(v15 + 356);
          if (!*(v15 + 3612))
          {
            if (v193 == 1)
            {
              v194 = *(v15 + 752) - *(v15 + 3640);
            }

            else
            {
              v194 = *(v15 + 3568) - *(v15 + 3560);
              if (!v194)
              {
                v194 = *(v15 + 752);
              }
            }

            if (v194 > 0xFFFFFFFFFFFFFF88)
            {
              return;
            }
          }

          v11 = &v151[-a2];
          if (v193 == 1)
          {
            *(v15 + 3616) = a2;
            *(v15 + 3624) = a3;
            *(v15 + 3632) = v11;
          }

          v195 = (v10 - v259);
          if (*(v15 + 360) == 1)
          {
            *(v15 + 3648) = 131591 - v195;
          }

          v196 = *(v15 + 3592) - *(v15 + 3600);
          if (v196 > 0xFFFFFFFFFFFFFF88 || !v196)
          {
            return;
          }

          if (v195 != 131591)
          {
            goto LABEL_480;
          }

          v197 = (*(a5 + 16))(a5, 131591);
          if (v197)
          {
            v10 = v197;
            v12 = v258 + 131591;
            v8 = v256;
            v14 = a3 - v11;
            if (a3 >= v11)
            {
              goto LABEL_5;
            }

            return;
          }

          v238 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_encoder_zstd_encode";
          LODWORD(v241) = 12;
          v232 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v238, 16, "%{public}s called with null out_bytes", buf, v241);
          type[0] = 16;
          LOBYTE(v287) = 0;
          if (!__nwlog_fault(v232, type, &v287))
          {
            goto LABEL_539;
          }

          if (type[0] == 17)
          {
            v233 = __nwlog_obj();
            v234 = type[0];
            if (!os_log_type_enabled(v233, type[0]))
            {
              goto LABEL_539;
            }

            *buf = 136446210;
            *&buf[4] = "nw_encoder_zstd_encode";
            v235 = "%{public}s called with null out_bytes";
            goto LABEL_538;
          }

          if (v287 != 1)
          {
            v233 = __nwlog_obj();
            v234 = type[0];
            if (!os_log_type_enabled(v233, type[0]))
            {
              goto LABEL_539;
            }

            *buf = 136446210;
            *&buf[4] = "nw_encoder_zstd_encode";
            v235 = "%{public}s called with null out_bytes, backtrace limit exceeded";
            goto LABEL_538;
          }

          v239 = __nw_create_backtrace_string();
          v233 = __nwlog_obj();
          v234 = type[0];
          v240 = os_log_type_enabled(v233, type[0]);
          if (!v239)
          {
            if (!v240)
            {
              goto LABEL_539;
            }

            *buf = 136446210;
            *&buf[4] = "nw_encoder_zstd_encode";
            v235 = "%{public}s called with null out_bytes, no backtrace";
            goto LABEL_538;
          }

          if (v240)
          {
            *buf = 136446466;
            *&buf[4] = "nw_encoder_zstd_encode";
            *&buf[12] = 2082;
            *&buf[14] = v239;
            _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null out_bytes, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v239);
          if (v232)
          {
            goto LABEL_540;
          }

          return;
        }

        v16 = *(v15 + 3608);
        a4 = v261;
      }

      else
      {
LABEL_353:
        if (v158 >= 0xFFFFFFFFFFFFFFB8)
        {
          goto LABEL_354;
        }

LABEL_346:
        v166 = v10;
        if (*(v15 + 360) != 1)
        {
          v166 = *(v15 + 3576);
          v158 = *(v15 + 3584);
        }

        if (!v162)
        {
          goto LABEL_355;
        }

LABEL_349:
        if (v151 != v262)
        {
          a4 = 0;
        }

        v167 = (*(v15 + 3536) + *(v15 + 3552));
        if (a4 == 1)
        {
          v153 = ZSTD_compressEnd_public(v15, v166, v158, v167, v163);
        }

        else
        {
          v153 = ZSTD_compressContinue_internal(v15, v166, v158, v167, v163, 0);
        }

        if (v153 > 0xFFFFFFFFFFFFFF88)
        {
          return;
        }

        *(v15 + 3612) = a4;
        v169 = *(v15 + 3560);
        v170 = *(v15 + 752);
        *(v15 + 3568) = v170 + v169;
        if ((v170 + v169) > *(v15 + 3544))
        {
          v169 = 0;
          *(v15 + 3560) = 0;
          *(v15 + 3568) = v170;
        }

        *(v15 + 3552) = v169;
        if (v166 == v10)
        {
          goto LABEL_379;
        }

LABEL_364:
        v154 = 0;
        *(v15 + 3592) = v153;
        *(v15 + 3600) = 0;
        *(v15 + 3608) = 2;
LABEL_365:
        v171 = v153 - v154;
        v172 = v152 - v10;
        if (v152 - v10 >= v153 - v154)
        {
          v173 = v153 - v154;
        }

        else
        {
          v173 = v152 - v10;
        }

        if (v173)
        {
          memcpy(v10, (*(v15 + 3576) + v154), v173);
          v154 = *(v15 + 3600);
        }

        v10 = (v10 + v173);
        *(v15 + 3600) = v154 + v173;
        if (v171 > v172)
        {
          goto LABEL_420;
        }

        *(v15 + 3592) = 0;
        *(v15 + 3600) = 0;
        a4 = v261;
        if (*(v15 + 3612))
        {
          *(v15 + 3608) = 0;
          *(v15 + 760) = 0;
          goto LABEL_421;
        }

        v16 = 1;
        *(v15 + 3608) = 1;
      }
    }
  }
}

void nw::zstd_encoder::~zstd_encoder(unint64_t **this)
{
  *this = &unk_1EEFDA100;
  nw_encoder_zstd_destroy(this[1]);

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA100;
  nw_encoder_zstd_destroy(this[1]);
}

uint64_t nw::zlib_decoder::decode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v10 = (a1 + 8);
  *(a1 + 16) = a3;
  v11 = 0;
  for (*(a1 + 32) = (*(a6 + 16))(a6, 0x4000); ; *(a1 + 32) = v13)
  {
    *(a1 + 40) = 0x4000;
    v12 = inflate(v10, 0);
    if (v12 != -5 && v12)
    {
      if (v12 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    if (*(a1 + 40))
    {
      break;
    }

    if (gLogDatapath == 1)
    {
      v32 = v12;
      log = __nwlog_obj();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v37 = "decode";
        v38 = 2048;
        v39 = 0x4000;
        v40 = 1024;
        v41 = v32;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s delivering %zu bytes of uncompressed data %d", buf, 0x1Cu);
      }
    }

    v13 = (*(a6 + 16))(a6, 0x4000);
    if (!v13)
    {
      v21 = __nwlog_obj();
      *buf = 136446210;
      v37 = "decode";
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null out_bytes", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v22, &type, &v34))
      {
        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "decode";
          v25 = "%{public}s called with null out_bytes";
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v27 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v37 = "decode";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null out_bytes, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_40;
        }

        if (!v27)
        {
LABEL_40:
          if (v22)
          {
            free(v22);
          }

          return 0;
        }

        *buf = 136446210;
        v37 = "decode";
        v25 = "%{public}s called with null out_bytes, no backtrace";
      }

      else
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v37 = "decode";
        v25 = "%{public}s called with null out_bytes, backtrace limit exceeded";
      }

LABEL_39:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      goto LABEL_40;
    }

    v11 += 0x4000;
  }

  if (*(a1 + 16))
  {
LABEL_13:
    v14 = v12;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v16 = zError(v14);
      *buf = 136446466;
      v37 = "decode";
      v38 = 2080;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s inflate returned %s", buf, 0x16u);
    }

    v17 = -1;
LABEL_22:
    if (a4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v37 = "decode";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s truncated data", buf, 0xCu);
      }
    }

    return v17;
  }

LABEL_16:
  if (gLogDatapath == 1)
  {
    v28 = v12;
    v29 = __nwlog_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    v12 = v28;
    if (v30)
    {
      *buf = 136446466;
      v37 = "decode";
      v38 = 2048;
      v39 = a3;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s finished processing %zu bytes of compressed data", buf, 0x16u);
      v12 = v28;
    }
  }

  v17 = v11 - *(a1 + 40) + 0x4000;
  if (v12 != 1)
  {
    goto LABEL_22;
  }

  if (*(a1 + 16))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "decode";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s extra data", buf, 0xCu);
    }
  }

  *a5 = 1;
  return v17;
}

void nw::zlib_decoder::~zlib_decoder(nw::zlib_decoder *this)
{
  *this = &unk_1EEFDA128;
  inflateEnd((this + 8));

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA128;
  inflateEnd((this + 8));
}

uint64_t nw::brotli_decoder::decode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 16) = 0x4000;
  v10 = (*(a6 + 16))(a6, 0x4000);
  if (v10)
  {
    for (i = 0; ; i += 0x4000)
    {
      *(a1 + 8) = v10;
      v12 = compression_stream_process((a1 + 8), 0);
      if (v12)
      {
        break;
      }

      if (*(a1 + 16))
      {
        if (a4)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v16 = 136446210;
            v17 = "decode";
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s truncated data", &v16, 0xCu);
          }
        }

        return i - *(a1 + 16) + 0x4000;
      }

      *(a1 + 16) = 0x4000;
      v10 = (*(a6 + 16))(a6, 0x4000);
      if (!v10)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v16 = 136446210;
          v17 = "decode";
LABEL_18:
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s allocation failed", &v16, 0xCu);
        }

        return -1;
      }
    }

    if (v12 == COMPRESSION_STATUS_ERROR)
    {
      return -1;
    }

    if (v12 == COMPRESSION_STATUS_END)
    {
      *a5 = 1;
    }

    return i - *(a1 + 16) + 0x4000;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v16 = 136446210;
    v17 = "decode";
    goto LABEL_18;
  }

  return -1;
}

void nw::brotli_decoder::~brotli_decoder(nw::brotli_decoder *this)
{
  *this = &unk_1EEFDA150;
  compression_stream_destroy((this + 8));

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA150;
  compression_stream_destroy((this + 8));
}

uint64_t nw::zstd_decoder::decode(uint64_t a1, uint64_t a2, char *a3, int a4, _BYTE *a5, uint64_t a6)
{
  v165 = *MEMORY[0x1E69E9840];
  v150 = *(a1 + 8);
  v8 = (*(a6 + 16))(a6, 0x20000);
  if (!v8)
  {
    v131 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_decoder_zstd_decode";
    v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v131, 16, "%{public}s called with null out_bytes", buf, 12);
    v162 = OS_LOG_TYPE_ERROR;
    v161 = 0;
    if (!__nwlog_fault(v132, &v162, &v161))
    {
      goto LABEL_292;
    }

    if (v162 == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = v162;
      if (os_log_type_enabled(v133, v162))
      {
        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        v135 = "%{public}s called with null out_bytes";
        goto LABEL_291;
      }

      goto LABEL_292;
    }

    if (v161 != 1)
    {
      v133 = __nwlog_obj();
      v134 = v162;
      if (os_log_type_enabled(v133, v162))
      {
        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        v135 = "%{public}s called with null out_bytes, backtrace limit exceeded";
        goto LABEL_291;
      }

      goto LABEL_292;
    }

    backtrace_string = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = v162;
    v137 = os_log_type_enabled(v133, v162);
    if (!backtrace_string)
    {
      if (v137)
      {
        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        v135 = "%{public}s called with null out_bytes, no backtrace";
        goto LABEL_291;
      }

      goto LABEL_292;
    }

    if (v137)
    {
LABEL_285:
      *buf = 136446466;
      *&buf[4] = "nw_decoder_zstd_decode";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null out_bytes, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_286:
    free(backtrace_string);
    goto LABEL_292;
  }

  v10 = v8;
  v11 = 0;
  v143 = 0;
  v160 = &a3[a2];
  v12 = xmmword_182B08D00;
  v145 = a3;
LABEL_3:
  v157 = 0;
  v148 = v10 + 0x20000;
  do
  {
    result = -1;
    v147 = (a3 - v11);
    if (a3 < v11)
    {
      return result;
    }

    v153 = v11;
    if (v157 > 0x20000)
    {
      return result;
    }

    v14 = *v150;
    v15 = *v150 + 26684;
    if (*(*v150 + 30320) == 1)
    {
      if (*(*v150 + 30236))
      {
        v16 = *(v14 + 30328) == v10 && *(v14 + 30344) == v157;
        if (!v16 || *(v14 + 30336) != 0x20000)
        {
          return result;
        }
      }
    }

    v17 = (v14 + 95940);
    v18 = &v11[a2];
    v156 = (v14 + 30288);
    v152 = (v14 + 30256);
    v19 = (v14 + 30304);
    v155 = (v14 + 30184);
    v149 = (v14 + 29976);
    v151 = (*v150 + 29992);
    v144 = (v10 + v157);
    v146 = &v11[a2];
    __dst = (v10 + v157);
    v158 = (v14 + 30304);
    v159 = v14 + 95940;
    while (1)
    {
      while (1)
      {
        v20 = *(v15 + 3552);
        result = -1;
        if (v20 < 1)
        {
          break;
        }

        if (v20 <= 1)
        {
          v21 = *v19;
          goto LABEL_20;
        }

        if (v20 != 2)
        {
          if (v20 == 3)
          {
            v55 = *(v14 + 29920);
            v56 = *(v15 + 3312);
            goto LABEL_185;
          }

          if (v20 != 4)
          {
            return result;
          }

          v39 = *(v14 + 30288);
          v40 = *(v14 + 30296) - v39;
          v41 = v148 - __dst;
          if (v148 - __dst >= v40)
          {
            v42 = *(v14 + 30296) - v39;
          }

          else
          {
            v42 = v148 - __dst;
          }

          if (v42)
          {
            memcpy(__dst, (*(v14 + 30272) + v39), v42);
            v39 = *(v14 + 30288);
          }

          v43 = &__dst[v42];
          if (!__dst)
          {
            v43 = 0;
          }

          __dst = v43;
          v44 = v39 + v42;
          *v156 = v44;
          if (v40 > v41)
          {
            a3 = v145;
            goto LABEL_247;
          }

          *(v15 + 3552) = 2;
          v45 = *(v14 + 30280);
          if (v45 >= *(v14 + 29928))
          {
            v19 = (v14 + 30304);
          }

          else
          {
            v19 = (v14 + 30304);
            if (v44 + *(v15 + 3260) > v45)
            {
              *v156 = 0;
              *(v14 + 30296) = 0;
            }
          }
        }

LABEL_172:
        v97 = v160 - v18;
        v56 = *(v15 + 3312);
        if ((v56 - 3) >= 2)
        {
          v55 = *(v14 + 29920);
LABEL_181:
          v99 = v55;
          if (!v55)
          {
            a3 = v145;
            goto LABEL_243;
          }

          goto LABEL_182;
        }

        v55 = *(v14 + 29920);
        if (*v151)
        {
          goto LABEL_181;
        }

        if (v55 >= v97)
        {
          v98 = v160 - v18;
        }

        else
        {
          v98 = *(v14 + 29920);
        }

        if (v98 <= 1)
        {
          v99 = 1;
        }

        else
        {
          v99 = v98;
        }

LABEL_182:
        if (v97 >= v99)
        {
          if (*(v15 + 3636))
          {
            if (v56 == 7)
            {
              v103 = 0;
            }

            else
            {
              v103 = v148 - __dst;
            }

            v104 = ZSTD_decompressContinue(v14, __dst, v103, v18, v99, v12, v9);
            if (v104 > 0xFFFFFFFFFFFFFF88)
            {
              return -1;
            }

            __dst += v104;
            v105 = 2;
            v17 = (v14 + 95940);
          }

          else
          {
            if (v56 == 7)
            {
              v112 = 0;
              v113 = *v156;
            }

            else
            {
              v113 = *(v14 + 30288);
              v112 = *(v14 + 30280) - v113;
            }

            v17 = (v14 + 95940);
            v116 = ZSTD_decompressContinue(v14, (*(v14 + 30272) + v113), v112, v18, v99, v12, v9);
            if (v116 > 0xFFFFFFFFFFFFFF88)
            {
              return -1;
            }

            if (v56 == 7 || v116)
            {
              *(v14 + 30296) = *(v14 + 30288) + v116;
              v105 = 4;
            }

            else
            {
              v105 = 2;
            }
          }

          *(v15 + 3552) = v105;
          v18 += v99;
        }

        else
        {
          if (v18 == v160)
          {
            v18 = v160;
            a3 = v145;
            goto LABEL_247;
          }

          *(v15 + 3552) = 3;
LABEL_185:
          v100 = *v152;
          v101 = v55 - *v152;
          if (v56 == 7)
          {
            if (v101 >= v160 - v18)
            {
              v102 = v160 - v18;
            }

            else
            {
              v102 = v55 - *v152;
            }

            if (v102)
            {
              goto LABEL_203;
            }
          }

          else
          {
            if (v101 > *(v14 + 30248) - v100)
            {
              return -1;
            }

            if (v101 >= v160 - v18)
            {
              v102 = v160 - v18;
            }

            else
            {
              v102 = v55 - *v152;
            }

            if (v102)
            {
              memcpy((*(v14 + 30240) + v100), v18, v102);
              v100 = *(v14 + 30256);
LABEL_203:
              v18 += v102;
              *v152 = v100 + v102;
            }
          }

          if (v102 < v101)
          {
            a3 = v145;
            goto LABEL_247;
          }

          *(v14 + 30256) = 0;
          v106 = *(v14 + 30240);
          v107 = *(v15 + 3312);
          if (*(v15 + 3636))
          {
            if (v107 == 7)
            {
              v108 = 0;
            }

            else
            {
              v108 = v148 - __dst;
            }

            v109 = ZSTD_decompressContinue(v14, __dst, v108, v106, v55, v12, v9);
            if (v109 > 0xFFFFFFFFFFFFFF88)
            {
              return -1;
            }

            __dst += v109;
LABEL_219:
            v115 = 2;
            goto LABEL_220;
          }

          if (v107 == 7)
          {
            v110 = 0;
            v111 = *v156;
          }

          else
          {
            v111 = *(v14 + 30288);
            v110 = *(v14 + 30280) - v111;
          }

          v114 = ZSTD_decompressContinue(v14, (*(v14 + 30272) + v111), v110, v106, v55, v12, v9);
          if (v114 > 0xFFFFFFFFFFFFFF88)
          {
            return -1;
          }

          if (v107 != 7 && !v114)
          {
            goto LABEL_219;
          }

          *(v14 + 30296) = *(v14 + 30288) + v114;
          v115 = 4;
LABEL_220:
          v19 = (v14 + 30304);
          v17 = (v14 + 95940);
          *(v15 + 3552) = v115;
        }
      }

      if (v20)
      {
        return result;
      }

      v21 = 0;
      *(v15 + 3552) = 1;
      *(v14 + 30256) = 0;
      *(v14 + 30296) = 0;
      *(v14 + 30304) = 0;
      *v156 = 0;
      *(v14 + 30312) = 0;
      *(v14 + 30328) = v10;
      *(v14 + 30336) = 0x20000;
      *(v14 + 30344) = v157;
LABEL_20:
      FrameHeader_advanced = ZSTD_getFrameHeader_advanced(v14 + 29928, v17, v21, *(v15 + 3420));
      if (*(v15 + 3540))
      {
        v23 = *(v14 + 30216);
        if (v23)
        {
          if (*(v14 + 30192))
          {
            v24 = *(v15 + 3272);
            v25 = __ROR8__((0x9E3779B185EBCA87 * v24) ^ 0x27D4EB2F165667C9, 41);
            v26 = 0xC2B2AE3D27D4EB4FLL * ((0xC2B2AE3D27D4EB4FLL * v25 + 0x165667B19E3779F9) ^ ((0xC2B2AE3D27D4EB4FLL * v25 + 0x165667B19E3779F9) >> 33));
            v27 = (0x165667B19E3779F9 * (v26 ^ (v26 >> 29))) ^ ((0x165667B19E3779F9 * (v26 ^ (v26 >> 29))) >> 32);
            v28 = *v23;
            v29 = *(*(v14 + 30216) + 8) - 1;
            v30 = v27 & v29;
            do
            {
              v31 = *(v28 + 8 * v30);
              if (!v31)
              {
                goto LABEL_54;
              }

              v32 = *(v31 + 27316);
              v30 = (v30 & v29) + 1;
            }

            while (v32 != v24 && v32 != 0);
            v34 = *v155;
            if (*v155)
            {
              v35 = v10;
              v36 = a2;
              v37 = *(v34 + 27336);
              v38 = *(v34 + 27344);
              if (*v34)
              {
                if (v37)
                {
                  (v37)(*(v34 + 27344));
                  goto LABEL_49;
                }

                free(*v34);
LABEL_51:
                free(v34);
              }

              else
              {
                if (!v37)
                {
                  goto LABEL_51;
                }

LABEL_49:
                v37(v38, v34);
              }

              a2 = v36;
              v10 = v35;
            }

            *(v14 + 30184) = 0;
            *(v15 + 3516) = *(v15 + 3272);
            *(v14 + 30192) = v31;
            *(v15 + 3524) = -1;
          }
        }
      }

LABEL_54:
      if (FrameHeader_advanced > 0xFFFFFFFFFFFFFF88)
      {
        return -1;
      }

      if (!FrameHeader_advanced)
      {
        break;
      }

      v19 = (v14 + 30304);
      v46 = *v158;
      v47 = FrameHeader_advanced - *v158;
      if (v47 > v160 - v18)
      {
        v117 = v10;
        v118 = a2;
        if (v160 == v18)
        {
          a3 = v145;
          v119 = (v14 + 95940);
        }

        else
        {
          v119 = (v14 + 95940);
          memcpy((v159 + v46), v18, v160 - v18);
          v46 = *v158 + v160 - v18;
          *v158 = v46;
          a3 = v145;
        }

        if (ZSTD_getFrameHeader_advanced(v14 + 29928, v119, v46, *(v15 + 3420)) <= 0xFFFFFFFFFFFFFF88)
        {
          v120 = 2;
          if (!*(v15 + 3420))
          {
            v120 = 6;
          }

          if (v120 <= FrameHeader_advanced)
          {
            v120 = FrameHeader_advanced;
          }

          v121 = 3;
          v11 = a3;
          a2 = v118;
          v10 = v117;
LABEL_238:
          v122 = v120 - *v158 + v121;
          if (v122 > 0xFFFFFFFFFFFFFF88)
          {
            return -1;
          }

          goto LABEL_239;
        }

        return -1;
      }

      v17 = (v14 + 95940);
      memcpy((v159 + v46), v18, FrameHeader_advanced - *v158);
      *v158 = FrameHeader_advanced;
      v18 += v47;
    }

    v48 = *(v14 + 29928);
    v19 = (v14 + 30304);
    if (v48 == -1)
    {
      goto LABEL_94;
    }

    if (*(v15 + 3264) == 1)
    {
      goto LABEL_94;
    }

    v49 = v148 - __dst;
    if (v148 - __dst < v48)
    {
      goto LABEL_94;
    }

    v50 = *(v15 + 3420);
    if (v147 < 8 || v50 || *v146 >> 4 != 25481893)
    {
      v164 = 0u;
      memset(buf, 0, sizeof(buf));
      v57 = ZSTD_getFrameHeader_advanced(buf, v146, v147, v50);
      if (v57 >= 0xFFFFFFFFFFFFFF89)
      {
        v58 = v57;
        v49 = v148 - __dst;
      }

      else
      {
        v58 = -72;
        v49 = v148 - __dst;
        if (!v57)
        {
          v59 = 0;
          v60 = v146 + *&buf[24];
          v61 = &v147[-*&buf[24]];
          do
          {
            if (v61 < 3)
            {
LABEL_87:
              v54 = -72;
              goto LABEL_89;
            }

            v62 = *v60;
            v63 = (v62 >> 1) & 3;
            if (v63 == 1)
            {
              v64 = 4;
            }

            else
            {
              if (v63 == 3)
              {
                v54 = -20;
                goto LABEL_89;
              }

              v64 = ((v62 | (v60[2] << 16)) >> 3) + 3;
            }

            v65 = v61 >= v64;
            v61 -= v64;
            if (!v65)
            {
              goto LABEL_87;
            }

            v60 += v64;
            ++v59;
          }

          while ((v62 & 1) == 0);
          if (v164)
          {
            v58 = -72;
            if (v61 < 4)
            {
              goto LABEL_90;
            }

            v60 += 4;
          }

          v58 = v60 - v146;
        }
      }
    }

    else
    {
      v51 = v146[1];
      v52 = v51 + 8;
      if (v51 + 8 > v147)
      {
        v52 = -72;
      }

      v53 = (v51 != -9) & __CFADD__(v51, 9);
      v54 = -14;
      if (!v53)
      {
        v54 = v52;
      }

LABEL_89:
      v58 = v54;
    }

LABEL_90:
    v66 = v58;
    if (v58 > v147)
    {
LABEL_94:
      if (*(v15 + 3636) == 1 && *(v15 + 3264) != 1 && v48 != -1 && v148 - __dst < v48)
      {
        return -1;
      }

      v67 = *(v15 + 3524);
      v68 = (v14 + 95940);
      if (v67 == -1)
      {
LABEL_98:
        v69 = *(v14 + 30192);
        if (v69)
        {
          v70 = 0;
          *(v15 + 3520) = *(v14 + 29912) != *(v69 + 8) + *(v69 + 16);
        }

        else
        {
          v70 = 1;
        }
      }

      else
      {
        if (v67 == 1)
        {
          *(v15 + 3524) = 0;
          goto LABEL_98;
        }

        v71 = *v155;
        if (*v155)
        {
          v72 = *(v71 + 27336);
          v73 = *(v71 + 27344);
          if (*v71)
          {
            if (v72)
            {
              (v72)(*(v71 + 27344));
              goto LABEL_106;
            }

            free(*v71);
LABEL_108:
            free(v71);
          }

          else
          {
            if (!v72)
            {
              goto LABEL_108;
            }

LABEL_106:
            v72(v73, v71);
          }

          v19 = (v14 + 30304);
          v68 = (v14 + 95940);
        }

        v69 = 0;
        *(v15 + 3524) = 0;
        v70 = 1;
        *v155 = 0;
        *(v14 + 30192) = 0;
      }

      v74 = *(v15 + 3420);
      v75 = 5;
      if (v74)
      {
        v75 = 1;
      }

      *(v14 + 29920) = v75;
      *(v14 + 29888) = 0u;
      *(v14 + 29904) = 0u;
      v12 = 0uLL;
      *v149 = 0;
      *(v14 + 29984) = 0;
      *(v14 + 10296) = 201326604;
      *(v15 + 3516) = 0;
      v9 = xmmword_182AED520;
      *v151 = xmmword_182AED520;
      *(v15 + 3492) = 1;
      *v15 = 0x400000001;
      *(v15 + 8) = 8;
      *v14 = v14 + 32;
      *(v14 + 8) = v14 + 6192;
      *(v14 + 16) = v14 + 4136;
      *(v14 + 24) = v14 + 10296;
      if (v70)
      {
LABEL_116:
        if (!v74)
        {
          goto LABEL_117;
        }
      }

      else
      {
        *(v15 + 3516) = *(v69 + 27316);
        v76 = *(v69 + 8);
        *(v14 + 29896) = v76;
        *(v14 + 29904) = v76;
        v77 = v76 + *(v69 + 16);
        *(v14 + 29912) = v77;
        *(v14 + 29888) = v77;
        if (*(v69 + 27320))
        {
          *(v14 + 30000) = 0x100000001;
          *v14 = v69 + 24;
          *(v14 + 8) = v69 + 6184;
          *(v14 + 16) = v69 + 4128;
          *(v14 + 24) = v69 + 10288;
          *v15 = *(v69 + 26676);
          *(v15 + 4) = *(v69 + 26680);
          *(v15 + 8) = *(v69 + 26684);
          goto LABEL_116;
        }

        *(v14 + 30000) = 0;
        if (!v74)
        {
LABEL_117:
          if (*v68 >> 4 == 25481893)
          {
            v78 = v68[1];
            v79 = 7;
LABEL_133:
            *(v14 + 29920) = v78;
            *(v15 + 3312) = v79;
            v83 = *(v14 + 29936);
            if (v83 <= 0x400)
            {
              v83 = 1024;
            }

            *(v14 + 29936) = v83;
            if (v83 > *(v14 + 30264))
            {
              return -1;
            }

            v84 = *(v15 + 3548);
            LODWORD(v85) = *(v15 + 3260);
            if (v84)
            {
              if (v85 >= v84)
              {
                LODWORD(v85) = *(v15 + 3548);
              }

              *(v15 + 3260) = v85;
            }

            if (v85 <= 4)
            {
              v86 = 4;
            }

            else
            {
              v86 = v85;
            }

            if (*(v15 + 3636))
            {
              v87 = 0;
            }

            else
            {
              v85 = v85;
              if (v83 < v85)
              {
                v85 = v83;
              }

              if (v85 >= 0x20000)
              {
                v85 = 0x20000;
              }

              v88 = v83 + 2 * v85 + 64;
              if (v88 >= *(v14 + 29928))
              {
                v87 = *(v14 + 29928);
              }

              else
              {
                v87 = v88;
              }
            }

            v89 = *(v14 + 30248);
            v90 = *(v14 + 30280);
            if (v90 + v89 >= 3 * (v87 + v86))
            {
              v92 = v14 + 95940;
              v91 = *(v14 + 95960) + 1;
            }

            else
            {
              v91 = 0;
              v92 = v14 + 95940;
            }

            *(v92 + 20) = v91;
            if (v89 < v86 || v90 < v87 || v91 >= 0x80)
            {
              v93 = *(v14 + 30168);
              if (v93)
              {
                if (v87 + v86 > v93 - 95968)
                {
                  return -1;
                }

                v94 = *(v14 + 30240);
              }

              else
              {
                if (*(v14 + 30240))
                {
                  v95 = *(v14 + 30136);
                  if (v95)
                  {
                    v95(*(v14 + 30144), v12);
                  }

                  else
                  {
                    free(*(v14 + 30240));
                  }
                }

                *(v14 + 30248) = 0;
                *(v14 + 30280) = 0;
                v96 = *(v14 + 30128);
                if (v96)
                {
                  v94 = v96(*(v14 + 30144), v87 + v86, v12);
                  *(v14 + 30240) = v94;
                  if (!v94)
                  {
                    return -1;
                  }
                }

                else
                {
                  v94 = malloc_type_malloc(v87 + v86, 0xB2223D72uLL);
                  *(v14 + 30240) = v94;
                  if (!v94)
                  {
                    return -1;
                  }
                }
              }

              *(v14 + 30248) = v86;
              *(v14 + 30272) = &v94[v86];
              *(v14 + 30280) = v87;
            }

            *(v15 + 3552) = 2;
            goto LABEL_172;
          }

          v74 = 0;
        }
      }

      v80 = *v19;
      if (ZSTD_getFrameHeader_advanced(v14 + 29928, v68, *v19, v74))
      {
        return -1;
      }

      if (*(v15 + 3540) == 1 && *(v14 + 30216))
      {
        ZSTD_DCtx_selectFrameDDict(v14);
      }

      v81 = *(v15 + 3272);
      if (v81)
      {
        if (*(v15 + 3516) != v81)
        {
          return -1;
        }
      }

      if (*(v15 + 3276))
      {
        v82 = *(v15 + 3424);
        *(v15 + 3428) = v82 == 0;
        if (!v82)
        {
          *(v14 + 30088) = 0;
          *(v14 + 30056) = 0u;
          *(v14 + 30072) = 0u;
          *(v14 + 30024) = 0u;
          *(v14 + 30040) = 0u;
          *(v14 + 30008) = 0u;
          v12 = xmmword_182B08D10;
          *(v14 + 30016) = xmmword_182B08D10;
          *(v14 + 30040) = 0x61C8864E7A143579;
        }
      }

      else
      {
        *(v15 + 3428) = 0;
      }

      *v149 += v80;
      v79 = 2;
      v78 = 3;
      goto LABEL_133;
    }

    v125 = v49;
    DDict = ZSTD_getDDict(v14);
    v127 = ZSTD_decompressMultiFrame(v14, __dst, v125, v146, v66, DDict);
    if (v127 > 0xFFFFFFFFFFFFFF88)
    {
      return -1;
    }

    v18 = v146 + v66;
    v128 = &__dst[v127];
    if (!__dst)
    {
      v128 = 0;
    }

    __dst = v128;
    *(v14 + 29920) = 0;
    a3 = v145;
LABEL_243:
    *(v15 + 3552) = 0;
LABEL_247:
    *(v14 + 30328) = v10;
    *(v14 + 30336) = 0x20000;
    v157 = &__dst[-v10];
    *(v14 + 30344) = &__dst[-v10];
    if (v18 == v146 && __dst == v144)
    {
      v123 = *(v15 + 3632);
      *(v15 + 3632) = v123 + 1;
      if (v123 >= 15 && a3 == v153)
      {
        return -1;
      }
    }

    else
    {
      *(v15 + 3632) = 0;
    }

    v11 = &v18[-a2];
    v120 = *(v14 + 29920);
    if (v120)
    {
      v121 = 3;
      if (*(v15 + 3312) != 3)
      {
        v121 = 0;
      }

      v158 = (v14 + 30256);
      goto LABEL_238;
    }

    v124 = *(v15 + 3628);
    if (*(v14 + 30296) == *(v14 + 30288))
    {
      if (v124)
      {
        if (v11 >= a3)
        {
          *(v15 + 3552) = 2;
          v122 = 1;
        }

        else
        {
          v122 = 0;
          ++v11;
        }
      }

      else
      {
        v122 = 0;
      }
    }

    else
    {
      if (!v124)
      {
        --v11;
        *(v15 + 3628) = 1;
      }

      v122 = 1;
    }

LABEL_239:
    if (v157 == 0x20000)
    {
      v129 = (*(a6 + 16))(a6, 0x20000);
      if (v129)
      {
        v10 = v129;
        v143 += 0x20000;
        goto LABEL_3;
      }

      v138 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_decoder_zstd_decode";
      v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s called with null out_bytes", buf, 12);
      v162 = OS_LOG_TYPE_ERROR;
      v161 = 0;
      if (!__nwlog_fault(v132, &v162, &v161))
      {
        goto LABEL_292;
      }

      if (v162 == OS_LOG_TYPE_FAULT)
      {
        v133 = __nwlog_obj();
        v134 = v162;
        if (os_log_type_enabled(v133, v162))
        {
          *buf = 136446210;
          *&buf[4] = "nw_decoder_zstd_decode";
          v135 = "%{public}s called with null out_bytes";
          goto LABEL_291;
        }

LABEL_292:
        if (v132)
        {
          free(v132);
        }

        return -1;
      }

      if (v161 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = v162;
        v139 = os_log_type_enabled(v133, v162);
        if (backtrace_string)
        {
          if (v139)
          {
            goto LABEL_285;
          }

          goto LABEL_286;
        }

        if (!v139)
        {
          goto LABEL_292;
        }

        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        v135 = "%{public}s called with null out_bytes, no backtrace";
      }

      else
      {
        v133 = __nwlog_obj();
        v134 = v162;
        if (!os_log_type_enabled(v133, v162))
        {
          goto LABEL_292;
        }

        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        v135 = "%{public}s called with null out_bytes, backtrace limit exceeded";
      }

LABEL_291:
      _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0xCu);
      goto LABEL_292;
    }
  }

  while (v11 != a3);
  if (a4)
  {
    if (v122)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v130 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_decoder_zstd_decode";
        _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s truncated data", buf, 0xCu);
      }
    }

    else
    {
      *a5 = 1;
    }
  }

  return v157 + v143;
}

void nw::zstd_decoder::~zstd_decoder(uint64_t **this)
{
  *this = &unk_1EEFDA178;
  nw_decoder_zstd_destroy(this[1]);

  JUMPOUT(0x1865DC520);
}

{
  *this = &unk_1EEFDA178;
  nw_decoder_zstd_destroy(this[1]);
}

char *nw_decoder_create_gzip()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x80uLL, 0xC4E6043FuLL);
  if (!v0)
  {
    v3 = __nwlog_obj();
    v7 = 136446722;
    v8 = "nw_decoder_create_gzip";
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
    v12 = 128;
    v6 = 32;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, v6);
    __nwlog_should_abort(v5);
    __break(1u);
  }

  v1 = v0;
  *v0 = &unk_1EEFDA128;
  *(v0 + 30) = 31;
  inflateInit2_((v0 + 8), 31, "1.2.12", 112);
  return v1;
}

char *nw_decoder_create_deflate()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x80uLL, 0xE670E7A5uLL);
  if (!v0)
  {
    v3 = __nwlog_obj();
    v7 = 136446722;
    v8 = "nw_decoder_create_deflate";
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
    v12 = 128;
    v6 = 32;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, v6);
    __nwlog_should_abort(v5);
    __break(1u);
  }

  v1 = v0;
  *v0 = &unk_1EEFDA128;
  *(v0 + 30) = 15;
  inflateInit2_((v0 + 8), 15, "1.2.12", 112);
  return v1;
}

char *nw_decoder_create_raw_deflate()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x80uLL, 0x21E1442BuLL);
  if (!v0)
  {
    v3 = __nwlog_obj();
    v7 = 136446722;
    v8 = "nw_decoder_create_raw_deflate";
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
    v12 = 128;
    v6 = 32;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, v6);
    __nwlog_should_abort(v5);
    __break(1u);
  }

  v1 = v0;
  *v0 = &unk_1EEFDA128;
  *(v0 + 30) = -15;
  inflateInit2_((v0 + 8), -15, "1.2.12", 112);
  return v1;
}

char *nw_decoder_create_brotli()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0xA1FCEC07uLL);
  if (!v0)
  {
    v4 = __nwlog_obj();
    *buf = 136446722;
    v9 = "nw_decoder_create_brotli";
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v10 = 2048;
    v11 = 1;
    v12 = 2048;
    v13 = 48;
    v7 = 32;
    v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v7);
    __nwlog_should_abort(v6);
    __break(1u);
  }

  v1 = v0;
  *v0 = &unk_1EEFDA150;
  if (compression_stream_init((v0 + 8), COMPRESSION_STREAM_DECODE, COMPRESSION_BROTLI))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v9 = "brotli_decoder";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s init failed", buf, 0xCu);
    }
  }

  return v1;
}

void *nw_decoder_create_zstd()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0xCCABFC26uLL);
  if (!v0)
  {
    v6 = __nwlog_obj();
    *v11 = 136446722;
    *&v11[4] = "nw_decoder_create_zstd";
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *&v11[12] = 2048;
    *&v11[14] = 1;
    *&v11[22] = 2048;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", v11, 32, *v11, *&v11[8], 16);
LABEL_14:
    __nwlog_should_abort(v8);
    __break(1u);
  }

  v1 = v0;
  *v0 = &unk_1EEFDA178;
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x70A61795uLL);
  if (!v2)
  {
    v9 = __nwlog_obj();
    *v11 = 136446722;
    *&v11[4] = "nw_decoder_zstd_create";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *&v11[12] = 2048;
    *&v11[14] = 1;
    *&v11[22] = 2048;
    v8 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s strict_calloc(%zu, %zu) failed", v11, 32, *v11, *&v11[8], 8);
    goto LABEL_14;
  }

  v3 = v2;
  *v2 = 0;
  v4 = malloc_type_malloc(0x176E0uLL, 0xB2223D72uLL);
  if (v4)
  {
    *(v4 + 3771) = 0;
    *(v4 + 3739) = 0;
    *(v4 + 7551) = 0;
    *(v4 + 7552) = 0;
    *(v4 + 3785) = 0;
    *(v4 + 11995) = 0;
    *(v4 + 30184) = 0u;
    *(v4 + 30316) = 0;
    *(v4 + 30236) = 0u;
    *(v4 + 7563) = 0;
    *(v4 + 3766) = 0;
    *(v4 + 3768) = 0;
    *(v4 + 3767) = 0;
    *(v4 + 7544) = 1;
    *(v4 + 30216) = 0u;
    *(v4 + 3763) = 0;
    *(v4 + 3783) = 134217729;
    *(v4 + 7558) = 0;
  }

  *v3 = v4;
  v1[1] = v3;
  return v1;
}

uint64_t ___ZL50nw_browse_result_get_interfaces_description_lockedP27NWConcrete_nw_browse_result_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  name = _nw_interface_get_name(a3);
  *(*(*(a1 + 32) + 8) + 24) += strlen(name);
  if (*(a1 + 40) - 1 > a2)
  {
    *(*(*(a1 + 32) + 8) + 24) += 2;
  }

  return 1;
}

uint64_t ___ZL50nw_browse_result_get_interfaces_description_lockedP27NWConcrete_nw_browse_result_block_invoke_87(void *a1, unint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  name = a3;
  v6 = name;
  if (name)
  {
    name = _nw_interface_get_name(name);
  }

  v7 = a1[5];
  v8 = *(*(a1[4] + 8) + 24);
  if (v7)
  {
    if (name)
    {
      goto LABEL_5;
    }

LABEL_46:
    v26 = name;
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v41 = 136446210;
    v42 = "_strict_strlcat";
    LODWORD(v40) = 12;
    v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s strict_strlcat called with NULL src", &v41, v40);

    result = __nwlog_should_abort(v29);
    if (result)
    {
      goto LABEL_70;
    }

    free(v29);
    name = v26;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (v7)
    {
      if (name)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v30 = name;
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v41 = 136446210;
      v42 = "_strict_strlcpy";
      LODWORD(v40) = 12;
      v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s strict_strlcpy called with NULL dst", &v41, v40);

      result = __nwlog_should_abort(v33);
      if (result)
      {
        goto LABEL_70;
      }

      free(v33);
      if (v30)
      {
        goto LABEL_22;
      }
    }

    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v41 = 136446210;
    v42 = "_strict_strlcpy";
    LODWORD(v40) = 12;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s strict_strlcpy called with NULL src", &v41, v40);

    result = __nwlog_should_abort(v12);
    if (result)
    {
      goto LABEL_70;
    }

    free(v12);
    goto LABEL_22;
  }

  v22 = name;
  v23 = __nwlog_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v41 = 136446210;
  v42 = "_strict_strlcat";
  v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s strict_strlcat called with NULL dst", &v41, 12);

  result = __nwlog_should_abort(v25);
  if (result)
  {
    goto LABEL_70;
  }

  free(v25);
  name = v22;
  if (!v22)
  {
    goto LABEL_46;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = &v7[v8];
  while (*v7)
  {
    ++v7;
    if (!--v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (name)
  {
    if (v8 >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v41 = 136446210;
    v42 = "_strict_strlcpy";
    LODWORD(v40) = 12;
    v39 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s strict_strlcpy called with NULL src", &v41, v40);

    result = __nwlog_should_abort(v39);
    if (result)
    {
      goto LABEL_70;
    }

    free(v39);
    name = 0;
    if (v8 >= 2)
    {
LABEL_19:
      do
      {
        v14 = *name;
        *v7 = v14;
        if (!v14)
        {
          goto LABEL_22;
        }

        ++v7;
        ++name;
      }

      while (--v8 > 1);
    }
  }

  *v7 = 0;
LABEL_22:
  if (a1[6] - 1 <= a2)
  {
    goto LABEL_40;
  }

  v15 = a1[5];
  v16 = *(*(a1[4] + 8) + 24);
  if (v15)
  {
    if (v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v41 = 136446210;
    v42 = "_strict_strlcat";
    LODWORD(v40) = 12;
    v36 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s strict_strlcat called with NULL dst", &v41, v40);

    result = __nwlog_should_abort(v36);
    if (result)
    {
      goto LABEL_70;
    }

    free(v36);
    if (v16)
    {
LABEL_25:
      v17 = &v15[v16];
      v18 = &asc_182C14019[v16 - 2];
      while (*v15)
      {
        ++v15;
        --v18;
        if (!--v16)
        {
          v15 = v17;
          goto LABEL_29;
        }
      }

      if (v16 >= 2)
      {
        *v15 = 44;
        if (v18 == ", ")
        {
          ++v15;
        }

        else
        {
          v15[1] = 32;
          v15 += 2;
        }
      }

      *v15 = 0;
      goto LABEL_40;
    }
  }

LABEL_29:
  if (v15)
  {
LABEL_40:

    return 1;
  }

  v19 = __nwlog_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  v41 = 136446210;
  v42 = "_strict_strlcpy";
  LODWORD(v40) = 12;
  v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s strict_strlcpy called with NULL dst", &v41, v40);

  result = __nwlog_should_abort(v21);
  if (!result)
  {
    free(v21);
    goto LABEL_40;
  }

LABEL_70:
  __break(1u);
  return result;
}

NWConcrete_nw_browse_result *nw_browse_result_create_mutable_copy(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_endpoint_copy(v1[1]);
    v4 = nw_browse_result_create(v3);

    v5 = v2[2];
    v6 = v5;
    if (v5)
    {
      v7 = _nw_array_copy(v5);
    }

    else
    {
      v7 = _nw_array_create();
    }

    v8 = v7;

    v9 = *(v4 + 2);
    *(v4 + 2) = v8;

    v10 = v2[3];
    if (v10)
    {
      v11 = nw_txt_record_create_with_bytes(*(v10 + 1), *(v10 + 2));
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v4 + 3);
    *(v4 + 3) = v11;

    *(v4 + 52) &= ~1u;
    goto LABEL_9;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_browse_result_create_mutable_copy";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null result", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v15, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v25 = "nw_browse_result_create_mutable_copy";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null result", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v25 = "nw_browse_result_create_mutable_copy";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_browse_result_create_mutable_copy";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v25 = "nw_browse_result_create_mutable_copy";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v15)
  {
    free(v15);
  }

  v4 = 0;
LABEL_9:

  return v4;
}

unint64_t nw_browse_result_remove_interface(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_browse_result_remove_interface";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null result", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v14, &type, &v38))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null result", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v38 != 1)
    {
      v15 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v33, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v30)
    {
      *buf = 136446466;
      *&buf[4] = "nw_browse_result_remove_interface";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!v4)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_browse_result_remove_interface";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null interface", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v14, &type, &v38))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null interface", buf, 0xCu);
      }

LABEL_31:

      goto LABEL_32;
    }

    if (v38 != 1)
    {
      v15 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v34, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v31, "%{public}s called with null interface, no backtrace", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v32)
    {
      *buf = 136446466;
      *&buf[4] = "nw_browse_result_remove_interface";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v31, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_55:

    free(backtrace_string);
LABEL_32:
    if (!v14)
    {
LABEL_34:
      v8 = 0;
      goto LABEL_35;
    }

LABEL_33:
    free(v14);
    goto LABEL_34;
  }

  if (*(v3 + 52))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_browse_result_remove_interface";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s browse_result was marked immutable", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v14, &type, &v38))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s browse_result was marked immutable", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(v15, type);
      if (v17)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_browse_result_remove_interface";
          *&buf[12] = 2082;
          *&buf[14] = v17;
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s browse_result was marked immutable, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
        if (!v14)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s browse_result was marked immutable, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_browse_result_remove_interface";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s browse_result was marked immutable, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_31;
  }

  os_unfair_lock_lock(v3 + 12);
  v6 = *(v3 + 4);
  if (v6)
  {
    free(v6);
    *(v3 + 4) = 0;
  }

  v7 = *(v3 + 5);
  if (v7)
  {
    free(v7);
    *(v3 + 5) = 0;
  }

  os_unfair_lock_unlock(v3 + 12);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__386;
  v42 = __Block_byref_object_dispose__387;
  v43 = 0;
  v8 = *(v3 + 2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_browse_result_remove_interface_block_invoke;
  aBlock[3] = &unk_1E6A3BB28;
  v36 = v5;
  v37 = buf;
  if (v8)
  {
    _nw_array_apply(v8, aBlock);
    v9 = *(*&buf[8] + 40);
    v8 = v9 != 0;
    if (v9)
    {
      v10 = *(v3 + 2);
      v11 = v9;
      if (v10)
      {
        v12 = _nw_array_duplicate_array_without_object(v10, v11);
      }

      else
      {
        v12 = _nw_array_create();
      }

      v21 = v12;

      v22 = *(v3 + 2);
      *(v3 + 2) = v21;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_35:

  return v8;
}

void sub_1822F4624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__386(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nw_browse_result_remove_interface_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _nw_interface_shallow_compare(v5, *(a1 + 32));
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v6 ^ 1u;
}

uint64_t nw_browse_result_insert_interface(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_browse_result_insert_interface";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null result", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v15, &type, &v29))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null result", buf, 0xCu);
      }

      goto LABEL_51;
    }

    if (v29 != 1)
    {
      v16 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }

      goto LABEL_51;
    }

    if (v22)
    {
      *buf = 136446466;
      v32 = "nw_browse_result_insert_interface";
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_39;
  }

  if (!v4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_browse_result_insert_interface";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null interface", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v15, &type, &v29))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null interface", buf, 0xCu);
      }

LABEL_51:

LABEL_52:
      if (v15)
      {
        free(v15);
      }

      goto LABEL_16;
    }

    if (v29 != 1)
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v32 = "nw_browse_result_insert_interface";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null interface, no backtrace", buf, 0xCu);
      }

      goto LABEL_51;
    }

    if (v24)
    {
      *buf = 136446466;
      v32 = "nw_browse_result_insert_interface";
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_39:

    free(backtrace_string);
    goto LABEL_52;
  }

  if (*(v3 + 52))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v32 = "nw_browse_result_insert_interface";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s browse_result was marked immutable", buf, 0xCu);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_19;
  }

  os_unfair_lock_lock(v3 + 12);
  v6 = *(v3 + 4);
  if (v6)
  {
    free(v6);
    *(v3 + 4) = 0;
  }

  v7 = *(v3 + 5);
  if (v7)
  {
    free(v7);
    *(v3 + 5) = 0;
  }

  os_unfair_lock_unlock(v3 + 12);
  v8 = *(v3 + 2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_browse_result_insert_interface_block_invoke;
  aBlock[3] = &unk_1E6A3CCB8;
  v9 = v5;
  v28 = v9;
  if (v8 && !_nw_array_apply(v8, aBlock))
  {
    v11 = 0;
  }

  else
  {
    v10 = *(v3 + 2);
    if (v10)
    {
      _nw_array_append(v10, v9);
    }

    v11 = 1;
  }

LABEL_19:
  return v11;
}