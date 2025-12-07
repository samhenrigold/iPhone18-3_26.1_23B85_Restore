uint64_t nw_protocol_http_sniffing_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v17[3] = &__block_descriptor_tmp_139;
      v17[4] = handle;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke_140;
      v15[3] = &__block_descriptor_tmp_141;
      v16 = a3;
      v15[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_sniffing_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_sniffing", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_32;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_sniffing_remove_input_handler";
        v9 = "%{public}s called with null http_sniffing";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_sniffing_remove_input_handler";
        v9 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v14 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_sniffing_remove_input_handler";
        v9 = "%{public}s called with null http_sniffing, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_sniffing_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_sniffing_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_32;
  }

  if (v19 != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_sniffing_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v12 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_sniffing_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_sniffing_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_sniffing_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_frame_cache_remove_all(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (gLogDatapath == 1)
    {
      v9 = a1;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      a1 = v9;
      if (v11)
      {
        v12 = *(v9 + 6);
        v13 = v9[2];
        v14 = "<null>";
        if (v13)
        {
          v15 = *(v13 + 16);
          if (v15)
          {
            v14 = v15;
          }
        }

        *buf = 136446978;
        v25 = "nw_frame_cache_remove_all";
        v26 = 1024;
        *v27 = v12;
        *&v27[4] = 2048;
        *&v27[6] = v9;
        v28 = 2080;
        v29 = v14;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s purging %u frames from frame cache %p for protocol %s", buf, 0x26u);
        a1 = v9;
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v19 = __nw_frame_cache_remove_all_block_invoke;
    v20 = &__block_descriptor_tmp_27305;
    v21 = a1;
    v1 = *a1;
    do
    {
      if (!v1)
      {
        break;
      }

      v2 = *(v1 + 16);
      v3 = (v19)(v18);
      v1 = v2;
    }

    while ((v3 & 1) != 0);
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_frame_cache_remove_all";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null frame_cache", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v5, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v25 = "nw_frame_cache_remove_all";
      v8 = "%{public}s called with null frame_cache";
      goto LABEL_25;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v25 = "nw_frame_cache_remove_all";
      v8 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_frame_cache_remove_all";
        v26 = 2082;
        *v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v17)
    {
      *buf = 136446210;
      v25 = "nw_frame_cache_remove_all";
      v8 = "%{public}s called with null frame_cache, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_26:
  if (v5)
  {
    free(v5);
  }
}

uint64_t nw_protocol_http_authentication_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v17[3] = &__block_descriptor_tmp_129;
      v17[4] = handle;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v15[3] = &__block_descriptor_tmp_130;
      v16 = a3;
      v15[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_authentication_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_authentication", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_32;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_authentication_remove_input_handler";
        v9 = "%{public}s called with null http_authentication";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_authentication_remove_input_handler";
        v9 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v14 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_authentication_remove_input_handler";
        v9 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_authentication_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_authentication_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_32;
  }

  if (v19 != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_authentication_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v12 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_authentication_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_authentication_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_authentication_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void ___ZL62nw_protocol_instance_registrar_copy_san_list_from_tls_metadataP41NWConcrete_nw_protocol_instance_registrarP11nw_protocolPU35objcproto24OS_sec_protocol_metadata8NSObjectt_block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 56);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      buf = 136447234;
      v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
      v38 = 2112;
      v39 = v24;
      v40 = 2048;
      v41 = v23;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v3;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %@ protocol %p, tls metdata %@ found certificate: %@", &buf, 0x34u);
    }
  }

  cf = sec_certificate_copy_ref(v3);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = SecCertificateCopyDNSNames();
  v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        if (gLogDatapath == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            buf = 136446466;
            v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v38 = 2112;
            v39 = v7;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s \tgot dns name: %@", &buf, 0x16u);
          }
        }

        v8 = [v7 UTF8String];
        if (v8)
        {
          if (*v8 == 42)
          {
            if (*(v8 + 1) == 46)
            {
              host_with_numeric_port = nw_endpoint_create_host_with_numeric_port((v8 + 2), *(a1 + 64));
              nw_endpoint_set_is_wildcard_host_from_san(host_with_numeric_port);
              v10 = *(a1 + 48);
              if (v10 && host_with_numeric_port)
              {
                _nw_array_append(v10, host_with_numeric_port);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              host_with_numeric_port = gLogObj;
              if (os_log_type_enabled(host_with_numeric_port, OS_LOG_TYPE_ERROR))
              {
                buf = 136446466;
                v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
                v38 = 2112;
                v39 = v7;
                _os_log_impl(&dword_181A37000, host_with_numeric_port, OS_LOG_TYPE_ERROR, "%{public}s invalid wildcard SAN %@", &buf, 0x16u);
              }
            }
          }

          else
          {
            host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v8, *(a1 + 64));
            v16 = *(a1 + 48);
            if (v16 && host_with_numeric_port)
            {
              _nw_array_append(v16, host_with_numeric_port);
            }
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            buf = 136446466;
            v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v38 = 2112;
            v39 = v7;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s failed to get UTF8 string from name %@", &buf, 0x16u);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          buf = 136446210;
          v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
          LODWORD(v26) = 12;
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s failed to get UTF8 string from DNS name", &buf, v26);

          type = OS_LOG_TYPE_ERROR;
          v29 = 0;
          if (!__nwlog_fault(v13, &type, &v29))
          {
            goto LABEL_24;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              buf = 136446210;
              v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s failed to get UTF8 string from DNS name", &buf, 0xCu);
            }

LABEL_23:

LABEL_24:
            if (!v13)
            {
              continue;
            }

LABEL_25:
            free(v13);
            continue;
          }

          if (v29 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v20 = type;
            if (os_log_type_enabled(v14, type))
            {
              buf = 136446210;
              v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v20, "%{public}s failed to get UTF8 string from DNS name, backtrace limit exceeded", &buf, 0xCu);
            }

            goto LABEL_23;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v18 = type;
          v19 = os_log_type_enabled(v14, type);
          if (!backtrace_string)
          {
            if (v19)
            {
              buf = 136446210;
              v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v18, "%{public}s failed to get UTF8 string from DNS name, no backtrace", &buf, 0xCu);
            }

            goto LABEL_23;
          }

          if (v19)
          {
            buf = 136446466;
            v37 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s failed to get UTF8 string from DNS name, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(backtrace_string);
          if (v13)
          {
            goto LABEL_25;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t nw_http2_add_to_protocol_table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a3 + 176);
        v43 = *(a3 + 180);
        *buf = 136447746;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v43;
        v75 = 1024;
        *v76 = v44;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        *&v76[14] = 1024;
        *&v76[16] = v44;
        v39 = "%{public}s %{public}s%s<i%u:s%d> called for protocol %p, stream %d";
        v40 = v42;
        v41 = 60;
        goto LABEL_70;
      }
    }
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 360);
      *buf = 136447490;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a1 + 380);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v38;
      v75 = 2048;
      *v76 = a2;
      *&v76[8] = 1024;
      *&v76[10] = -999;
      v39 = "%{public}s %{public}s%s<i%u> called for protocol %p, stream %d";
      v40 = v37;
      v41 = 54;
LABEL_70:
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, v39, buf, v41);
    }
  }

  v66 = 0;
  internal = *(a1 + 152);
  if (internal)
  {
    goto LABEL_7;
  }

  internal = nw_hash_table_create_internal(0x11u, 8, nw_http2_get_key, nw_http2_key_hash, nw_http2_matches_key, 0, 0);
  if (!internal)
  {
    *(a1 + 152) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v68 = "nw_http2_add_to_protocol_table";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_hash_table_create_no_lock failed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v21, &type, &v64))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v68 = "nw_http2_add_to_protocol_table";
      v24 = "%{public}s nw_hash_table_create_no_lock failed";
    }

    else
    {
      if (v64 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v68 = "nw_http2_add_to_protocol_table";
            v69 = 2082;
            v70 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v30)
        {
          *buf = 136446210;
          v68 = "nw_http2_add_to_protocol_table";
          v24 = "%{public}s nw_hash_table_create_no_lock failed, no backtrace";
          v31 = v28;
          v32 = v29;
          goto LABEL_47;
        }

LABEL_48:
        if (v21)
        {
          v33 = v21;
LABEL_55:
          free(v33);
        }

        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v68 = "nw_http2_add_to_protocol_table";
      v24 = "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded";
    }

    v31 = v22;
    v32 = v23;
LABEL_47:
    _os_log_impl(&dword_181A37000, v31, v32, v24, buf, 0xCu);
    goto LABEL_48;
  }

  *(internal + 56) &= ~2u;
  *(a1 + 152) = internal;
LABEL_7:
  v7 = nw_hash_table_add_object(internal, a2, &v66);
  if ((v66 & 1) == 0)
  {
    if (a3)
    {
      if ((*(a3 + 190) & 0x10) != 0)
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = *(a3 + 176);
      v9 = *(a3 + 180);
      *buf = 136447746;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a3 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v9;
      v75 = 1024;
      *v76 = v10;
      *&v76[4] = 1042;
      *&v76[6] = 16;
      *&v76[10] = 2098;
      *&v76[12] = a2;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P", buf, 60);
      type = OS_LOG_TYPE_ERROR;
      v64 = 0;
      if (!__nwlog_fault(v11, &type, &v64))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          v15 = *(a3 + 176);
          v14 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v14;
          v75 = 1024;
          *v76 = v15;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P";
LABEL_52:
          _os_log_impl(&dword_181A37000, v12, v13, v16, buf, 0x3Cu);
        }
      }

      else if (v64 == 1)
      {
        v17 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        v18 = os_log_type_enabled(gconnectionLogObj, type);
        if (!v17)
        {
          if (!v18)
          {
            goto LABEL_53;
          }

          v35 = *(a3 + 176);
          v34 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v34;
          v75 = 1024;
          *v76 = v35;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, no backtrace";
          goto LABEL_52;
        }

        if (v18)
        {
          v20 = *(a3 + 176);
          v19 = *(a3 + 180);
          *buf = 136448002;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v19;
          v75 = 1024;
          *v76 = v20;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          *&v76[20] = 2082;
          *&v76[22] = v17;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x46u);
        }

        free(v17);
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          v26 = *(a3 + 176);
          v25 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v25;
          v75 = 1024;
          *v76 = v26;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded";
          goto LABEL_52;
        }
      }

LABEL_53:
      if (v11)
      {
        v33 = v11;
        goto LABEL_55;
      }

      return 0;
    }

    if (*(a1 + 379))
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v53 = *(a1 + 360);
    *buf = 136447490;
    v68 = "nw_http2_add_to_protocol_table";
    v69 = 2082;
    v70 = (a1 + 380);
    v71 = 2080;
    v72 = " ";
    v73 = 1024;
    v74 = v53;
    v75 = 1042;
    *v76 = 16;
    *&v76[4] = 2098;
    *&v76[6] = a2;
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P", buf, 54);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v54, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v55 = gconnectionLogObj;
        v56 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_108;
        }

        v57 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v57;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P";
        goto LABEL_107;
      }

      if (v64 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v55 = gconnectionLogObj;
        v56 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_108;
        }

        v62 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v62;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded";
        goto LABEL_107;
      }

      v59 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v55 = gconnectionLogObj;
      v56 = type;
      v60 = os_log_type_enabled(gconnectionLogObj, type);
      if (v59)
      {
        if (v60)
        {
          v61 = *(a1 + 360);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a1 + 380);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v61;
          v75 = 1042;
          *v76 = 16;
          *&v76[4] = 2098;
          *&v76[6] = a2;
          *&v76[14] = 2082;
          *&v76[16] = v59;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v59);
        goto LABEL_108;
      }

      if (v60)
      {
        v63 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v63;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, no backtrace";
LABEL_107:
        _os_log_impl(&dword_181A37000, v55, v56, v58, buf, 0x36u);
      }
    }

LABEL_108:
    if (!v54)
    {
      return 0;
    }

    v33 = v54;
    goto LABEL_55;
  }

  v8 = v7;
  if (a3)
  {
    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v47 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(a3 + 176);
        v48 = *(a3 + 180);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v48;
        v75 = 1024;
        *v76 = v49;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> added protocol %p to protocol hash table", buf, 0x36u);
      }
    }

    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v50 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a3 + 176);
        v51 = *(a3 + 180);
        *buf = 136448002;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v51;
        v75 = 1024;
        *v76 = v52;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        *&v76[14] = 2048;
        *&v76[16] = v8;
        *&v76[24] = 2048;
        *&v76[26] = a3;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> connecting protocol %p node %p with stream %p", buf, 0x4Au);
      }
    }

    *nw_hash_node_get_extra(v8) = a3;
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v45 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 360);
      *buf = 136447234;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a1 + 380);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v46;
      v75 = 2048;
      *v76 = a2;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol %p to protocol hash table", buf, 0x30u);
    }
  }

  return v8;
}

uint64_t nw_protocol_common_remove_input_handler_with_cleanup_blocks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v61 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v62, &type, &v83))
    {
      goto LABEL_143;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (!os_log_type_enabled(v63, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null protocol";
      goto LABEL_142;
    }

    if (v83 != 1)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (!os_log_type_enabled(v63, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_142;
    }

    backtrace_string = __nw_create_backtrace_string();
    v63 = __nwlog_obj();
    v64 = type;
    v68 = os_log_type_enabled(v63, type);
    if (!backtrace_string)
    {
      if (!v68)
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_142;
    }

    if (v68)
    {
      *buf = 136446466;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v87 = 2082;
      v88 = backtrace_string;
      _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_143:
    if (!v62)
    {
      return 0;
    }

    goto LABEL_144;
  }

  if (!a2)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v62, &type, &v83))
    {
      goto LABEL_143;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (!os_log_type_enabled(v63, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null input_protocol";
      goto LABEL_142;
    }

    if (v83 != 1)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (!os_log_type_enabled(v63, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_142;
    }

    v69 = __nw_create_backtrace_string();
    v63 = __nwlog_obj();
    v64 = type;
    v70 = os_log_type_enabled(v63, type);
    if (v69)
    {
      if (v70)
      {
        *buf = 136446466;
        v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
        v87 = 2082;
        v88 = v69;
        _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v69);
      if (!v62)
      {
        return 0;
      }

LABEL_144:
      v39 = v62;
      goto LABEL_51;
    }

    if (v70)
    {
      *buf = 136446210;
      v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v65 = "%{public}s called with null input_protocol, no backtrace";
LABEL_142:
      _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0xCu);
      goto LABEL_143;
    }

    goto LABEL_143;
  }

  v9 = *(a2 + 32);
  if (v9 == a1)
  {
    v10 = *(v9 + 40);
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v9 + 64)) != 0)
    {
      v11 = *(v9 + 88);
      if (v11)
      {
        v12 = v11 - 1;
        *(v9 + 88) = v12;
        if (!v12)
        {
          v13 = a4;
          v14 = *(v9 + 64);
          if (v14)
          {
            *(v9 + 64) = 0;
            v14[2](v14);
            _Block_release(v14);
          }

          if (*(v9 + 72))
          {
            v15 = *(v9 + 64);
            if (v15)
            {
              _Block_release(v15);
            }
          }

          free(v9);
          a4 = v13;
        }
      }
    }

    *(a2 + 32) = 0;
  }

  v16 = a1[6];
  if (v16 != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = a1[6];
    *buf = 136446722;
    v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v87 = 2048;
    v88 = v17;
    v89 = 2048;
    v90 = a2;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Input protocol does not match (%p != %p)", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (__nwlog_fault(v18, &type, &v83))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v21 = a1[6];
          *buf = 136446722;
          v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v87 = 2048;
          v88 = v21;
          v89 = 2048;
          v90 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p)";
LABEL_48:
          _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x20u);
        }
      }

      else if (v83 == 1)
      {
        v33 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v34 = os_log_type_enabled(gLogObj, type);
        if (v33)
        {
          if (v34)
          {
            v35 = a1[6];
            *buf = 136446978;
            v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
            v87 = 2048;
            v88 = v35;
            v89 = 2048;
            v90 = a2;
            v91 = 2082;
            v92 = v33;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Input protocol does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v33);
          goto LABEL_49;
        }

        if (v34)
        {
          v38 = a1[6];
          *buf = 136446722;
          v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v87 = 2048;
          v88 = v38;
          v89 = 2048;
          v90 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p), no backtrace";
          goto LABEL_48;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v36 = a1[6];
          *buf = 136446722;
          v86 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v87 = 2048;
          v88 = v36;
          v89 = 2048;
          v90 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p), backtrace limit exceeded";
          goto LABEL_48;
        }
      }
    }

LABEL_49:
    if (!v18)
    {
      return 0;
    }

    v39 = v18;
LABEL_51:
    free(v39);
    return 0;
  }

  v23 = *(v16 + 40);
  if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v16 = *(v16 + 64)) != 0)
  {
    v24 = *(v16 + 88);
    if (v24)
    {
      v25 = v24 - 1;
      *(v16 + 88) = v25;
      if (!v25)
      {
        v26 = a4;
        v27 = *(v16 + 64);
        if (v27)
        {
          *(v16 + 64) = 0;
          v27[2](v27);
          _Block_release(v27);
        }

        if (*(v16 + 72))
        {
          v28 = *(v16 + 64);
          if (v28)
          {
            _Block_release(v28);
          }
        }

        free(v16);
        a4 = v26;
      }
    }
  }

  a1[6] = 0;
  if (a4)
  {
    (*(a4 + 16))(a4);
  }

  v29 = a1[4];
  if (v29)
  {
    v30 = *(v29 + 40);
    v31 = a1[4];
    if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *(v29 + 64)) != 0)
    {
      v40 = *(v31 + 88);
      v32 = 0;
      if (v40)
      {
        *(v31 + 88) = v40 + 1;
      }
    }

    else
    {
      v32 = 1;
    }

    v41 = a1[5];
    v42 = a1;
    if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v42 = a1[8]) != 0)
    {
      v45 = v42[11];
      if (v45)
      {
        v43 = 0;
        v42[11] = v45 + 1;
        v44 = *(v29 + 24);
        if (!v44)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v43 = 0;
        v44 = *(v29 + 24);
        if (!v44)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v43 = 1;
      v44 = *(v29 + 24);
      if (!v44)
      {
        goto LABEL_115;
      }
    }

    v46 = *(v44 + 8);
    if (v46)
    {
      result = v46(v29, a1, a3);
      if (v43)
      {
LABEL_78:
        if ((v32 & 1) == 0)
        {
          v54 = *(v29 + 40);
          if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v29 = *(v29 + 64)) != 0)
          {
            v55 = *(v29 + 88);
            if (v55)
            {
              v56 = v55 - 1;
              *(v29 + 88) = v56;
              if (!v56)
              {
                v57 = result;
                v58 = *(v29 + 64);
                if (v58)
                {
                  *(v29 + 64) = 0;
                  v58[2](v58);
                  _Block_release(v58);
                }

                if (*(v29 + 72))
                {
                  v59 = *(v29 + 64);
                  if (v59)
                  {
                    _Block_release(v59);
                  }
                }

                free(v29);
                result = v57;
              }
            }
          }
        }

        goto LABEL_90;
      }

LABEL_67:
      v47 = a1[5];
      v48 = a1;
      if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v48 = a1[8]) != 0)
      {
        v49 = v48[11];
        if (v49)
        {
          v50 = v49 - 1;
          v48[11] = v50;
          if (!v50)
          {
            v51 = result;
            v52 = v48[8];
            if (v52)
            {
              v48[8] = 0;
              v52[2](v52);
              _Block_release(v52);
            }

            if (v48[9])
            {
              v53 = v48[8];
              if (v53)
              {
                _Block_release(v53);
              }
            }

            free(v48);
            result = v51;
          }
        }
      }

      goto LABEL_78;
    }

LABEL_115:
    v71 = __nwlog_obj();
    v72 = *(v29 + 16);
    *buf = 136446722;
    v86 = "__nw_protocol_remove_input_handler";
    if (!v72)
    {
      v72 = "invalid";
    }

    v87 = 2082;
    v88 = v72;
    v89 = 2048;
    v90 = v29;
    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 32);
    if (__nwlog_fault(v82, &type, &v83))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_150;
        }

        v75 = *(v29 + 16);
        if (!v75)
        {
          v75 = "invalid";
        }

        *buf = 136446722;
        v86 = "__nw_protocol_remove_input_handler";
        v87 = 2082;
        v88 = v75;
        v89 = 2048;
        v90 = v29;
        v76 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
LABEL_149:
        _os_log_impl(&dword_181A37000, v73, v74, v76, buf, 0x20u);
        goto LABEL_150;
      }

      if (v83 != 1)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_150;
        }

        v80 = *(v29 + 16);
        if (!v80)
        {
          v80 = "invalid";
        }

        *buf = 136446722;
        v86 = "__nw_protocol_remove_input_handler";
        v87 = 2082;
        v88 = v80;
        v89 = 2048;
        v90 = v29;
        v76 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
        goto LABEL_149;
      }

      v77 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v78 = os_log_type_enabled(v73, type);
      if (!v77)
      {
        if (!v78)
        {
          goto LABEL_150;
        }

        v81 = *(v29 + 16);
        if (!v81)
        {
          v81 = "invalid";
        }

        *buf = 136446722;
        v86 = "__nw_protocol_remove_input_handler";
        v87 = 2082;
        v88 = v81;
        v89 = 2048;
        v90 = v29;
        v76 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
        goto LABEL_149;
      }

      if (v78)
      {
        v79 = *(v29 + 16);
        if (!v79)
        {
          v79 = "invalid";
        }

        *buf = 136446978;
        v86 = "__nw_protocol_remove_input_handler";
        v87 = 2082;
        v88 = v79;
        v89 = 2048;
        v90 = v29;
        v91 = 2082;
        v92 = v77;
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v77);
    }

LABEL_150:
    if (v82)
    {
      free(v82);
    }

    result = 0;
    if (v43)
    {
      goto LABEL_78;
    }

    goto LABEL_67;
  }

  result = 1;
LABEL_90:
  if (a3 && a1[5] != &nw_protocol_ref_counted_handle)
  {
    a1[5] = 0;
  }

  if (a5)
  {
    v60 = result;
    (*(a5 + 16))(a5);
    return v60;
  }

  return result;
}

uint64_t ___ZL54nw_protocol_instance_registrar_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_equal = nw_endpoint_is_equal(*(a1 + 32), a3, 31);
  if (is_equal)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t nw_protocol_http2_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v77 = __nwlog_obj();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http2_create";
      _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x1D0uLL, 0xE3C6119AuLL);
  v7 = v6;
  if (v6)
  {
    v6[27] = 0u;
    v6[28] = 0u;
    v6[25] = 0u;
    v6[26] = 0u;
    v6[23] = 0u;
    v6[24] = 0u;
    v6[21] = 0u;
    v6[22] = 0u;
    v6[19] = 0u;
    v6[20] = 0u;
    v6[17] = 0u;
    v6[18] = 0u;
    v6[15] = 0u;
    v6[16] = 0u;
    v6[13] = 0u;
    v6[14] = 0u;
    v6[11] = 0u;
    v6[12] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    *(v6 + 82) = 1065353216;
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_protocol_http2_create";
  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = 1;
  HIWORD(buf[2]) = 2048;
  v90 = 464;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    MEMORY[0x1C0] = 0u;
    MEMORY[0x1B0] = 0u;
    MEMORY[0x1A0] = 0u;
    MEMORY[0x190] = 0u;
    MEMORY[0x180] = 0u;
    MEMORY[0x170] = 0u;
    MEMORY[0x160] = 0u;
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x80] = 0;
    MEMORY[0x88] = 0;
    MEMORY[0x138] = 0u;
    MEMORY[0x128] = 0u;
    MEMORY[0x148] = 1065353216;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http2_create";
    LODWORD(v79) = 12;
    v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_placement_new(nw_protocol_http2, strict_calloc(1, sizeof(nw_protocol_http2)),) failed", buf, v79);
    result = __nwlog_should_abort(v15);
    if (!result)
    {
      free(v15);
LABEL_13:
      *(v7 + 16) = a1;
      if (nw_protocol_http2_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http2_get_callbacks(void)::onceToken, &__block_literal_global_36_87006);
      }

      *(v7 + 24) = &nw_protocol_http2_get_callbacks(void)::protocol_callbacks;
      *(v7 + 40) = v7;
      *(v7 + 356) = 0;
      *(v7 + 64) = 0;
      *(v7 + 364) = 0;
      v16 = (v7 + 377);
      *(v7 + 377) &= 0xFFE2u;
      *(v7 + 80) = 240000;
      *(v7 + 379) = *(v7 + 379) & 0xFE | nw_parameters_get_logging_disabled(a4);
      *(v7 + 352) = -1;
      if (nw_parameters_get_server_mode(a4))
      {
        v17 = 128;
      }

      else
      {
        v17 = 0;
      }

      *v16 = *(v7 + 377) & 0xFF7F | v17;
      nw_frame_cache_init((v7 + 200), v7, 20, 0x1000000, 24);
      *(v7 + 168) = 0;
      *(v7 + 184) = 0;
      *(v7 + 176) = v7 + 168;
      *(v7 + 192) = v7 + 184;
      *(v7 + 240) = 0;
      *(v7 + 248) = v7 + 240;
      v18 = nw_parameters_copy_context(a4);
      v19 = *(v7 + 136);
      if ((v19 & 1) != 0 && *(v7 + 128))
      {
        v20 = v18;
        os_release(*(v7 + 128));
        v18 = v20;
        v19 = *(v7 + 136);
      }

      *(v7 + 128) = v18;
      *(v7 + 136) = v19 | 1;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 0x40000000;
      v88[2] = __nw_protocol_http2_create_block_invoke;
      v88[3] = &__block_descriptor_tmp_87007;
      v88[4] = v7;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 0x40000000;
      v87[2] = __nw_protocol_http2_create_block_invoke_2;
      v87[3] = &__block_descriptor_tmp_8_87008;
      v87[4] = v7;
      metadata = nw_http_connection_create_metadata(v18, v88, v87);
      *(v7 + 256) = metadata;
      nw_http_connection_metadata_set_version(metadata, 4);
      buf[0] = 0;
      buf[1] = buf;
      buf[2] = 0x2000000000;
      v90 = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_protocol_http2_create_block_invoke_3;
      aBlock[3] = &unk_1E6A3C258;
      aBlock[4] = buf;
      *(v7 + 344) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      v85 = 0;
      if (nghttp2_session_callbacks_new())
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = nghttp2_strerror();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http2_create";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v23;
        LODWORD(v78) = 22;
        v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s nghttp2_session_callbacks_new: %{public}s failed", buf, v78);
        type[0] = OS_LOG_TYPE_ERROR;
        v84 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v24, type, &v84))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v25 = gLogObj;
            v26 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              v27 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v27;
              v28 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed";
LABEL_57:
              _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x16u);
            }
          }

          else if (v84 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v25 = gLogObj;
            v26 = type[0];
            v39 = os_log_type_enabled(gLogObj, type[0]);
            if (backtrace_string)
            {
              if (v39)
              {
                v40 = nghttp2_strerror();
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_protocol_http2_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v40;
                HIWORD(buf[2]) = 2082;
                v90 = backtrace_string;
                _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nghttp2_session_callbacks_new: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_58;
            }

            if (v39)
            {
              v51 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v51;
              v28 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, no backtrace";
              goto LABEL_57;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v25 = gLogObj;
            v26 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              v41 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v41;
              v28 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, backtrace limit exceeded";
              goto LABEL_57;
            }
          }
        }

LABEL_58:
        if (v24)
        {
          free(v24);
        }

        v52 = *(v7 + 312);
        while (v52)
        {
          v55 = v52;
          v52 = *v52;
          if ((v55[5] & 1) != 0 && v55[4])
          {
            v56 = v55;
            _Block_release(v55[4]);
            v55 = v56;
          }

          operator delete(v55);
        }

LABEL_61:
        v53 = *(v7 + 296);
        *(v7 + 296) = 0;
        if (v53)
        {
          operator delete(v53);
        }

        if (*(v7 + 136))
        {
          v54 = *(v7 + 128);
          if (v54)
          {
            os_release(v54);
          }
        }

        free(v7);
        return 0;
      }

      nghttp2_session_callbacks_set_before_frame_send_callback();
      nghttp2_session_callbacks_set_on_header_callback();
      nghttp2_session_callbacks_set_on_begin_headers_callback();
      nghttp2_session_callbacks_set_on_frame_recv_callback();
      nghttp2_session_callbacks_set_on_data_chunk_recv_callback();
      nghttp2_session_callbacks_set_on_stream_close_callback();
      nghttp2_session_callbacks_set_on_frame_send_callback();
      nghttp2_session_callbacks_set_send_callback();
      nghttp2_session_callbacks_set_send_data_callback();
      nghttp2_session_callbacks_set_on_frame_not_send_callback();
      nghttp2_session_callbacks_set_on_invalid_frame_recv_callback();
      nghttp2_session_callbacks_set_error_callback2();
      nghttp2_set_debug_vprintf_callback();
      *type = 0;
      nghttp2_option_new();
      nghttp2_option_set_no_auto_window_update();
      nghttp2_option_set_no_rfc9113_leading_and_trailing_ws_validation();
      nghttp2_option_set_peer_max_concurrent_streams();
      nghttp2_option_set_no_closed_streams();
      if ((*v16 & 0x80) == 0)
      {
        if ((nghttp2_session_client_new2() & 0x80000000) != 0)
        {
          if (*(v7 + 379))
          {
LABEL_99:
            v69 = *(v7 + 312);
            while (v69)
            {
              v70 = v69;
              v69 = *v69;
              if ((v70[5] & 1) != 0 && v70[4])
              {
                v71 = v70;
                _Block_release(v70[4]);
                v70 = v71;
              }

              operator delete(v70);
            }

            goto LABEL_61;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v29 = gconnectionLogObj;
          v30 = *(v7 + 360);
          v31 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v90 = " ";
          v91 = 1024;
          v92 = v30;
          v93 = 2082;
          v94 = v31;
          LODWORD(v78) = 48;
          v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s", buf, v78);
          v84 = OS_LOG_TYPE_ERROR;
          v82 = 0;
          if (__nwlog_fault(v32, &v84, &v82))
          {
            if (v84 == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v33 = gconnectionLogObj;
              v34 = v84;
              if (!os_log_type_enabled(gconnectionLogObj, v84))
              {
                goto LABEL_97;
              }

              v35 = *(v7 + 360);
              v36 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v90 = " ";
              v91 = 1024;
              v92 = v35;
              v93 = 2082;
              v94 = v36;
              v37 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s";
              goto LABEL_96;
            }

            if (v82 != 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v33 = gconnectionLogObj;
              v34 = v84;
              if (!os_log_type_enabled(gconnectionLogObj, v84))
              {
                goto LABEL_97;
              }

              v63 = *(v7 + 360);
              v64 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v90 = " ";
              v91 = 1024;
              v92 = v63;
              v93 = 2082;
              v94 = v64;
              v37 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
              goto LABEL_96;
            }

            v57 = __nw_create_backtrace_string();
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v33 = gconnectionLogObj;
            v34 = v84;
            v58 = os_log_type_enabled(gconnectionLogObj, v84);
            if (v57)
            {
              if (v58)
              {
                v80 = *(v7 + 360);
                v59 = nghttp2_strerror();
                LODWORD(buf[0]) = 136447490;
                *(buf + 4) = "nw_protocol_http2_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v7 + 380;
                HIWORD(buf[2]) = 2080;
                v90 = " ";
                v91 = 1024;
                v92 = v80;
                v93 = 2082;
                v94 = v59;
                v95 = 2082;
                v96 = v57;
                _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(v57);
              goto LABEL_97;
            }

            if (v58)
            {
              v67 = *(v7 + 360);
              v68 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v90 = " ";
              v91 = 1024;
              v92 = v67;
              v93 = 2082;
              v94 = v68;
              v37 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, no backtrace";
LABEL_96:
              _os_log_impl(&dword_181A37000, v33, v34, v37, buf, 0x30u);
            }
          }

LABEL_97:
          if (v32)
          {
            free(v32);
          }

          goto LABEL_99;
        }

LABEL_43:
        MEMORY[0x1865DDA10](v85);
        MEMORY[0x1865DD980](*type);
        return v7;
      }

      if ((nghttp2_session_server_new2() & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      if (*(v7 + 379))
      {
LABEL_110:
        v74 = *(v7 + 312);
        while (v74)
        {
          v75 = v74;
          v74 = *v74;
          if ((v75[5] & 1) != 0 && v75[4])
          {
            v76 = v75;
            _Block_release(v75[4]);
            v75 = v76;
          }

          operator delete(v75);
        }

        goto LABEL_61;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      v43 = *(v7 + 360);
      v44 = nghttp2_strerror();
      LODWORD(buf[0]) = 136447234;
      *(buf + 4) = "nw_protocol_http2_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v7 + 380;
      HIWORD(buf[2]) = 2080;
      v90 = " ";
      v91 = 1024;
      v92 = v43;
      v93 = 2082;
      v94 = v44;
      LODWORD(v78) = 48;
      v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s", buf, v78);
      v84 = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (__nwlog_fault(v45, &v84, &v82))
      {
        if (v84 == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v46 = gconnectionLogObj;
          v47 = v84;
          if (!os_log_type_enabled(gconnectionLogObj, v84))
          {
            goto LABEL_108;
          }

          v48 = *(v7 + 360);
          v49 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v90 = " ";
          v91 = 1024;
          v92 = v48;
          v93 = 2082;
          v94 = v49;
          v50 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s";
          goto LABEL_107;
        }

        if (v82 != 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v46 = gconnectionLogObj;
          v47 = v84;
          if (!os_log_type_enabled(gconnectionLogObj, v84))
          {
            goto LABEL_108;
          }

          v65 = *(v7 + 360);
          v66 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v90 = " ";
          v91 = 1024;
          v92 = v65;
          v93 = 2082;
          v94 = v66;
          v50 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
          goto LABEL_107;
        }

        v60 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v46 = gconnectionLogObj;
        v47 = v84;
        v61 = os_log_type_enabled(gconnectionLogObj, v84);
        if (v60)
        {
          if (v61)
          {
            v81 = *(v7 + 360);
            v62 = nghttp2_strerror();
            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_protocol_http2_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v7 + 380;
            HIWORD(buf[2]) = 2080;
            v90 = " ";
            v91 = 1024;
            v92 = v81;
            v93 = 2082;
            v94 = v62;
            v95 = 2082;
            v96 = v60;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x3Au);
          }

          free(v60);
          goto LABEL_108;
        }

        if (v61)
        {
          v72 = *(v7 + 360);
          v73 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v90 = " ";
          v91 = 1024;
          v92 = v72;
          v93 = 2082;
          v94 = v73;
          v50 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, no backtrace";
LABEL_107:
          _os_log_impl(&dword_181A37000, v46, v47, v50, buf, 0x30u);
        }
      }

LABEL_108:
      if (v45)
      {
        free(v45);
      }

      goto LABEL_110;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_http_messaging_add_to_version_specific_protocol(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_http_messaging_add_to_version_specific_protocol";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v13, &type, &v33))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v24 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v36 = "nw_http_messaging_add_to_version_specific_protocol";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v13)
        {
          return 0;
        }

LABEL_70:
        free(v13);
        return 0;
      }

      if (!v24)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    goto LABEL_68;
  }

  parameters = nw_protocol_get_parameters(a2);
  if (!parameters)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_http_messaging_add_to_version_specific_protocol";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v13, &type, &v33))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters";
    }

    else if (v33 == 1)
    {
      v25 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v26 = os_log_type_enabled(v14, type);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_62;
        }

        *buf = 136446466;
        v36 = "nw_http_messaging_add_to_version_specific_protocol";
        v37 = 2082;
        v38 = v25;
        v27 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_61;
      }

      if (!v26)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

LABEL_68:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_69;
  }

  v5 = parameters;
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_parameters_copy_protocol_options_legacy";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v19, &type, &v33))
    {
LABEL_50:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle";
LABEL_48:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v33 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v29 = os_log_type_enabled(v20, type);
        if (v28)
        {
          if (v29)
          {
            *buf = 136446466;
            v36 = "nw_parameters_copy_protocol_options_legacy";
            v37 = 2082;
            v38 = v28;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          goto LABEL_50;
        }

        if (!v29)
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v36 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle, no backtrace";
        goto LABEL_48;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
        goto LABEL_48;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v6 = _nw_parameters_copy_protocol_options_with_level();

  if (!v6)
  {
LABEL_53:
    v30 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_http_messaging_add_to_version_specific_protocol";
    LODWORD(v32) = 12;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null options", buf, v32);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v13, &type, &v33))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options";
      goto LABEL_68;
    }

    if (v33 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_68;
    }

    v25 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v31 = os_log_type_enabled(v14, type);
    if (!v25)
    {
      if (!v31)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options, no backtrace";
      goto LABEL_68;
    }

    if (!v31)
    {
LABEL_62:
      free(v25);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_70;
    }

    *buf = 136446466;
    v36 = "nw_http_messaging_add_to_version_specific_protocol";
    v37 = 2082;
    v38 = v25;
    v27 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_61:
    _os_log_impl(&dword_181A37000, v14, v15, v27, buf, 0x16u);
    goto LABEL_62;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v7 = nw_protocol_copy_http_messaging_definition_definition;
  v8 = *(a1 + 152);
  v9 = v6;
  _nw_protocol_options_set_instance(v9, v8);

  if (v7)
  {
    os_release(v7);
  }

  nw_protocol_set_output_handler(a2, 0);
  v10 = nw_protocol_add_input_handler(*(a1 + 152), a2);
  os_release(v9);
  return v10;
}

BOOL nw_protocol_http2_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v211 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v150 = __nwlog_obj();
    *buf = 136446210;
    v196 = "nw_protocol_http2_add_input_handler";
    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v150, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(v209[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v151, v209, &type))
    {
      goto LABEL_291;
    }

    if (LOBYTE(v209[0]) == 17)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null protocol";
      goto LABEL_290;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_290;
    }

    backtrace_string = __nw_create_backtrace_string();
    v152 = __nwlog_obj();
    v153 = v209[0];
    v162 = os_log_type_enabled(v152, v209[0]);
    if (!backtrace_string)
    {
      if (!v162)
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_290;
    }

    if (!v162)
    {
      goto LABEL_269;
    }

    *buf = 136446466;
    v196 = "nw_protocol_http2_add_input_handler";
    v197 = 2082;
    v198 = backtrace_string;
    v163 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_268:
    _os_log_impl(&dword_181A37000, v152, v153, v163, buf, 0x16u);
    goto LABEL_269;
  }

  handle = a1->handle;
  if (!handle)
  {
    v155 = __nwlog_obj();
    *buf = 136446210;
    v196 = "nw_protocol_http2_add_input_handler";
    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s called with null http2", buf, 12);
    LOBYTE(v209[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v151, v209, &type))
    {
      goto LABEL_291;
    }

    if (LOBYTE(v209[0]) == 17)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null http2";
      goto LABEL_290;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_290;
    }

    backtrace_string = __nw_create_backtrace_string();
    v152 = __nwlog_obj();
    v153 = v209[0];
    v164 = os_log_type_enabled(v152, v209[0]);
    if (!backtrace_string)
    {
      if (!v164)
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null http2, no backtrace";
      goto LABEL_290;
    }

    if (!v164)
    {
      goto LABEL_269;
    }

    *buf = 136446466;
    v196 = "nw_protocol_http2_add_input_handler";
    v197 = 2082;
    v198 = backtrace_string;
    v163 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_268;
  }

  if (!a2)
  {
    v156 = __nwlog_obj();
    *buf = 136446210;
    v196 = "nw_protocol_http2_add_input_handler";
    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s called with null input_protocol", buf, 12);
    LOBYTE(v209[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v151, v209, &type))
    {
      goto LABEL_291;
    }

    if (LOBYTE(v209[0]) == 17)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null input_protocol";
      goto LABEL_290;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v152 = __nwlog_obj();
      v153 = v209[0];
      if (!os_log_type_enabled(v152, v209[0]))
      {
        goto LABEL_291;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v154 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_290;
    }

    backtrace_string = __nw_create_backtrace_string();
    v152 = __nwlog_obj();
    v153 = v209[0];
    v165 = os_log_type_enabled(v152, v209[0]);
    if (backtrace_string)
    {
      if (v165)
      {
        *buf = 136446466;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = backtrace_string;
        v163 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_268;
      }

LABEL_269:
      free(backtrace_string);
      goto LABEL_291;
    }

    if (!v165)
    {
      goto LABEL_291;
    }

    *buf = 136446210;
    v196 = "nw_protocol_http2_add_input_handler";
    v154 = "%{public}s called with null input_protocol, no backtrace";
LABEL_290:
    _os_log_impl(&dword_181A37000, v152, v153, v154, buf, 0xCu);
LABEL_291:
    if (v151)
    {
      free(v151);
    }

    return 0;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v157 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v158 = *(handle + 90);
      *buf = 136446978;
      v196 = "nw_protocol_http2_add_input_handler";
      v197 = 2082;
      v198 = (handle + 380);
      v199 = 2080;
      v200 = " ";
      v201 = 1024;
      v202 = v158;
      _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  v5 = *(handle + 88);
  *(handle + 88) = -1;
  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v159 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v160 = *(handle + 90);
      *buf = 136447746;
      v196 = "nw_protocol_http2_add_input_handler";
      v197 = 2082;
      v198 = (handle + 380);
      v199 = 2080;
      v200 = " ";
      v201 = 1024;
      v202 = v160;
      v203 = 2048;
      *v204 = a2;
      *&v204[8] = 1042;
      *&v204[10] = 16;
      *&v204[14] = 2098;
      *&v204[16] = a2;
      _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> incoming protocol %p has flow id %{public,uuid_t}.16P", buf, 0x40u);
    }
  }

  if (!*(handle + 14))
  {
    callbacks = a2->callbacks;
    if (!callbacks || (get_remote_endpoint = callbacks->get_remote_endpoint) == 0 || (v8 = get_remote_endpoint(a2)) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      v25 = "%{public}s failed to get remote endpoint from input_handler";
LABEL_28:
      v28 = v23;
      v29 = 12;
LABEL_85:
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v25, buf, v29);
      return 0;
    }

    *(handle + 14) = os_retain(v8);
  }

  v9 = a2->callbacks;
  if (!v9 || (get_parameters = v9->get_parameters) == 0 || (v11 = get_parameters(a2)) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    v196 = "nw_protocol_http2_add_input_handler";
    v25 = "%{public}s couldn't get parameters from input_protocol";
    goto LABEL_28;
  }

  v210 = 0;
  memset(v209, 0, sizeof(v209));
  v12 = v11;
  v13 = _nw_parameters_copy_protocol_options_with_level();
  object = v12;

  if (!v13)
  {
    v15 = 0;
    v26 = 0;
    v191 = 0;
    v27 = 240000;
    goto LABEL_63;
  }

  v14 = v13;
  _nw_protocol_options_get_log_id_str(v14, v209);

  v15 = (handle + 380);
  LODWORD(v16) = handle[380];
  v191 = handle[380] == 0;
  if (!handle[380])
  {
    v30 = v14;
    _nw_protocol_options_get_log_id_str(v30, handle + 380);

    *(handle + 90) = nw_protocol_get_next_instance_id();
    top_id = _nw_protocol_options_get_top_id(v30);
    if (handle[379])
    {
      goto LABEL_35;
    }

    v32 = top_id;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v34 = *(handle + 90);
    *buf = 136447490;
    v196 = "nw_protocol_http2_add_input_handler";
    v197 = 2082;
    v198 = (handle + 380);
    v199 = 2080;
    v200 = " ";
    v201 = 1024;
    v202 = v34;
    v203 = 1024;
    *v204 = v34;
    *&v204[4] = 1024;
    *&v204[6] = v32;
    v19 = "%{public}s %{public}s%s<i%u> created HTTP/2 and assigned instance ID: %u from C%u";
    v20 = v33;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 50;
    goto LABEL_34;
  }

  if ((handle[379] & 1) != 0 || gLogDatapath != 1)
  {
    goto LABEL_35;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    goto LABEL_310;
  }

  while (1)
  {
    v17 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(handle + 90);
      *buf = 136447234;
      v196 = "nw_protocol_http2_add_input_handler";
      v197 = 2082;
      v198 = v15;
      v199 = 2080;
      v200 = " ";
      v201 = 1024;
      v202 = v18;
      v203 = 2080;
      *v204 = v209;
      v19 = "%{public}s %{public}s%s<i%u> new stream %s joined http2";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEBUG;
      v22 = 48;
LABEL_34:
      _os_log_impl(&dword_181A37000, v20, v21, v19, buf, v22);
    }

LABEL_35:
    v186 = v15;
    idle_timeout = nw_http2_get_idle_timeout(v14);
    v26 = nw_http_messaging_options_copy_transaction_metadata(v14);
    LODWORD(v13) = nw_http2_get_capsule_handling_disabled(v14);
    send_truncated_data_frames = nw_http2_get_send_truncated_data_frames(v14);
    if (!v16)
    {
      v188 = v26;
      stream_receive_window_size = nw_http2_get_stream_receive_window_size(v14);
      v185 = v13;
      if (stream_receive_window_size)
      {
        v38 = stream_receive_window_size;
        if ((handle[379] & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v39 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(handle + 90);
            *buf = 136447234;
            v196 = "nw_protocol_http2_add_input_handler";
            v197 = 2082;
            v198 = v186;
            v199 = 2080;
            v200 = " ";
            v201 = 1024;
            v202 = v40;
            v203 = 1024;
            *v204 = v38;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> overriding stream receive window size to %u", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v38 = 0x200000;
      }

      connection_receive_window_size = nw_http2_get_connection_receive_window_size(v14);
      if (connection_receive_window_size)
      {
        v42 = connection_receive_window_size;
        if ((handle[379] & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v43 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v44 = *(handle + 90);
            *buf = 136447234;
            v196 = "nw_protocol_http2_add_input_handler";
            v197 = 2082;
            v198 = v186;
            v199 = 2080;
            v200 = " ";
            v201 = 1024;
            v202 = v44;
            v203 = 1024;
            *v204 = v42;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> overriding connection receive window size to %u", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v42 = 10485760;
      }

      if ((*(handle + 377) & 0x80) != 0)
      {
        max_webtransport_sessions = nw_http2_get_max_webtransport_sessions(v14);
        if (max_webtransport_sessions)
        {
          LODWORD(v46) = max_webtransport_sessions;
          if ((handle[379] & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            log = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v173 = *(handle + 90);
              *buf = 136447234;
              v196 = "nw_protocol_http2_add_input_handler";
              v197 = 2082;
              v198 = v186;
              v199 = 2080;
              v200 = " ";
              v201 = 1024;
              v202 = v173;
              v203 = 1024;
              *v204 = v46;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> setting max webtransport sessions to %u", buf, 0x2Cu);
            }
          }

          v46 = v46;
        }

        else
        {
          v46 = 0;
        }

        webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(handle + 32));
        nw_webtransport_connection_state_set_max_sessions(webtransport_state, v46);
      }

      *(handle + 92) = v38;
      *(handle + 93) = v42;
      v26 = v188;
      LODWORD(v13) = v185;
    }

    os_release(v14);
    v27 = (1000 * idle_timeout);
    if (send_truncated_data_frames)
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

LABEL_63:
    *(handle + 10) = v27;
    v48 = *(handle + 19);
    if (v48)
    {
      v49 = *(v48 + 48) == 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = nw_http2_add_to_protocol_table(handle, a2, 0);
    if (!v50)
    {
      if (handle[379])
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v64 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v65 = *(handle + 90);
        *buf = 136446978;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (handle + 380);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v65;
        v25 = "%{public}s %{public}s%s<i%u> could not add protocol to protocol based hash table, cannot add input handler";
        v28 = v64;
        v29 = 38;
        goto LABEL_85;
      }

      return result;
    }

    v16 = v50;
    if (v5 != -1)
    {
      stream_node_from_id = nw_http2_get_stream_node_from_id(handle, v5);
      if (stream_node_from_id)
      {
        v14 = stream_node_from_id[2];
        if (v14)
        {
          v52 = stream_node_from_id[4];
          if (v52)
          {
            if ((v14[190] & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                v172 = stream_node_from_id;
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                stream_node_from_id = v172;
              }

              v54 = *(v14 + 44);
              v53 = *(v14 + 45);
              v55 = stream_node_from_id;
              v56 = stream_node_from_id[4];
              *buf = 136448258;
              v196 = "nw_protocol_http2_add_input_handler";
              v197 = 2082;
              v198 = (v14 + 191);
              v199 = 2080;
              v200 = " ";
              v201 = 1024;
              v202 = v53;
              v203 = 1024;
              *v204 = v54;
              *&v204[4] = 2048;
              *&v204[6] = a2;
              *&v204[14] = 2048;
              *&v204[16] = v56;
              *&v204[24] = 2048;
              *v205 = v14;
              *&v205[8] = 1024;
              v206 = v54;
              LODWORD(v183) = 80;
              v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d)", buf, v183);
              type = OS_LOG_TYPE_ERROR;
              v193 = 0;
              if (!__nwlog_fault(v57, &type, &v193))
              {
                goto LABEL_225;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_225;
                }

                v61 = *(v14 + 44);
                v60 = *(v14 + 45);
                v62 = v55[4];
                *buf = 136448258;
                v196 = "nw_protocol_http2_add_input_handler";
                v197 = 2082;
                v198 = (v14 + 191);
                v199 = 2080;
                v200 = " ";
                v201 = 1024;
                v202 = v60;
                v203 = 1024;
                *v204 = v61;
                *&v204[4] = 2048;
                *&v204[6] = a2;
                *&v204[14] = 2048;
                *&v204[16] = v62;
                *&v204[24] = 2048;
                *v205 = v14;
                *&v205[8] = 1024;
                v206 = v61;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d)";
              }

              else if (v193 == 1)
              {
                v94 = __nw_create_backtrace_string();
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                v95 = os_log_type_enabled(gconnectionLogObj, type);
                if (v94)
                {
                  if (v95)
                  {
                    v97 = *(v14 + 44);
                    v96 = *(v14 + 45);
                    v98 = v55[4];
                    *buf = 136448514;
                    v196 = "nw_protocol_http2_add_input_handler";
                    v197 = 2082;
                    v198 = (v14 + 191);
                    v199 = 2080;
                    v200 = " ";
                    v201 = 1024;
                    v202 = v96;
                    v203 = 1024;
                    *v204 = v97;
                    *&v204[4] = 2048;
                    *&v204[6] = a2;
                    *&v204[14] = 2048;
                    *&v204[16] = v98;
                    *&v204[24] = 2048;
                    *v205 = v14;
                    *&v205[8] = 1024;
                    v206 = v97;
                    v207 = 2082;
                    v208 = v94;
                    _os_log_impl(&dword_181A37000, v58, v59, "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), dumping backtrace:%{public}s", buf, 0x5Au);
                  }

                  free(v94);
                  goto LABEL_225;
                }

                if (!v95)
                {
LABEL_225:
                  if (v57)
                  {
                    free(v57);
                  }

                  goto LABEL_227;
                }

                v148 = *(v14 + 44);
                v147 = *(v14 + 45);
                v149 = v55[4];
                *buf = 136448258;
                v196 = "nw_protocol_http2_add_input_handler";
                v197 = 2082;
                v198 = (v14 + 191);
                v199 = 2080;
                v200 = " ";
                v201 = 1024;
                v202 = v147;
                v203 = 1024;
                *v204 = v148;
                *&v204[4] = 2048;
                *&v204[6] = a2;
                *&v204[14] = 2048;
                *&v204[16] = v149;
                *&v204[24] = 2048;
                *v205 = v14;
                *&v205[8] = 1024;
                v206 = v148;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), no backtrace";
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_225;
                }

                v142 = *(v14 + 44);
                v141 = *(v14 + 45);
                v143 = v55[4];
                *buf = 136448258;
                v196 = "nw_protocol_http2_add_input_handler";
                v197 = 2082;
                v198 = (v14 + 191);
                v199 = 2080;
                v200 = " ";
                v201 = 1024;
                v202 = v141;
                v203 = 1024;
                *v204 = v142;
                *&v204[4] = 2048;
                *&v204[6] = a2;
                *&v204[14] = 2048;
                *&v204[16] = v143;
                *&v204[24] = 2048;
                *v205 = v14;
                *&v205[8] = 1024;
                v206 = v142;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v58, v59, v63, buf, 0x50u);
              goto LABEL_225;
            }

LABEL_227:
            nw_http2_remove_from_protocol_table(handle, a2);
            return 0;
          }

          v189 = v26;
          stream_node_from_id[4] = a2;
          v16[4] = v14;
          while (1)
          {
            v89 = *(v209 + v52);
            v14[v52 + 191] = v89;
            if (!v89)
            {
              break;
            }

            if (++v52 == 83)
            {
              v14[274] = 0;
              break;
            }
          }

          if ((v14[190] & 0x10) == 0)
          {
            v187 = v49;
            v90 = v13;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
            {
              v93 = *(v14 + 44);
              v92 = *(v14 + 45);
              *buf = 136448258;
              v196 = "nw_protocol_http2_add_input_handler";
              v197 = 2082;
              v198 = (v14 + 191);
              v199 = 2080;
              v200 = " ";
              v201 = 1024;
              v202 = v92;
              v203 = 1024;
              *v204 = v93;
              *&v204[4] = 1024;
              *&v204[6] = v5;
              *&v204[10] = 2080;
              *&v204[12] = v209;
              *&v204[20] = 1024;
              *&v204[22] = v93;
              *v205 = 2048;
              *&v205[2] = v14;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%d> connected incoming stream id %d for %s to existing stream %d (%p)", buf, 0x4Cu);
            }

            LOBYTE(v13) = v90;
            v49 = v187;
          }

LABEL_152:
          v99 = v15 | v13 | v14[190] & 0xBE;
          v14[190] = v99;
          v100 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          singleton = v189;
          if (!v189)
          {
            if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
            }

            singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_transaction_definition_definition);
            v99 = v14[190];
          }

          *(v14 + 12) = singleton;
          if (v191)
          {
            v102 = 8;
          }

          else
          {
            v102 = 0;
          }

          v103 = v99 & 0xF7 | v102;
          v14[190] = v103;
          v104 = *(v14 + 44);
          if (v104 != -1)
          {
            nw_http_transaction_metadata_set_stream_id(singleton, v104);
            v103 = v14[190];
          }

          if ((v103 & 0x10) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v168 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v170 = *(v14 + 44);
              v169 = *(v14 + 45);
              identifier = a2->identifier;
              *buf = 136448002;
              v196 = "nw_protocol_http2_add_input_handler";
              v197 = 2082;
              v198 = (v14 + 191);
              v199 = 2080;
              v200 = " ";
              v201 = 1024;
              v202 = v169;
              v203 = 1024;
              *v204 = v170;
              *&v204[4] = 2048;
              *&v204[6] = a2;
              *&v204[14] = 2080;
              *&v204[16] = identifier;
              *&v204[24] = 2048;
              *v205 = v16;
              _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> setting input protocol %p (%s) output_handler_context to %p", buf, 0x4Au);
            }
          }

          a2->output_handler_context = v16;
          nw_protocol_set_output_handler(a2, a1);
          if (!a1->default_input_handler)
          {
            nw_protocol_set_input_handler(a1, a2);
            *handle = *a2->flow_id;
          }

          if (v191 && !*(handle + 34))
          {
            v125 = _nw_parameters_copy_context();
            v126 = *(handle + 33);
            if (v126)
            {
              os_release(v126);
              *(handle + 33) = 0;
            }

            v127 = nw_path_copy_flow_registration(v125, handle);
            *(handle + 33) = v127;
            if (v125)
            {
              os_release(v125);
              v127 = *(handle + 33);
            }

            if (v127)
            {
              v128 = nw_path_flow_registration_copy_endpoint(v127);
              v129 = nw_path_flow_registration_copy_parameters(*(handle + 33));
              v130 = nw_endpoint_copy_association_with_evaluator(v128, v129, 0);
              *(handle + 34) = v130;
              if (v128)
              {
                os_release(v128);
                v130 = *(handle + 34);
              }

              if (v130)
              {
                v131 = nw_protocol_instance_stub_create(handle);
                *(handle + 35) = v131;
                nw_association_register_internal(*(handle + 34), object, v131, 0, 0, &__block_literal_global_58_88783);
                v132 = nw_association_copy_current_path(*(handle + 34), v129);
                if (v132)
                {
                  v133 = v132;
                  v134 = nw_path_copy_for_flow_registration(v132, *(handle + 33));
                  if (v134)
                  {
                    v135 = v134;
                    v136 = *(handle + 15);
                    if (v136 != v135)
                    {
                      if (v136)
                      {
                        os_release(v136);
                        *(handle + 15) = 0;
                      }

                      *(handle + 15) = os_retain(v135);
                    }

                    if (nw_path_has_flows(v135))
                    {
                      v137 = 32;
                    }

                    else
                    {
                      v137 = 0;
                    }

                    *(handle + 377) = *(handle + 377) & 0xFFDF | v137;
                    v138 = _nw_parameters_copy_effective_proxy_config(object);
                    if (v138)
                    {
                      v139 = v138;
                      if (nw_path_has_proxy_config(v133, v138))
                      {
                        v140 = *(handle + 36);
                        if (v140)
                        {
                          os_release(v140);
                        }

                        *(handle + 36) = v139;
                      }

                      else
                      {
                        os_release(v139);
                      }
                    }

                    os_release(v133);
                    v100 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  }

                  else
                  {
                    v135 = v133;
                  }

                  os_release(v135);
                }
              }

              if (v129)
              {
                os_release(v129);
              }
            }
          }

          v105 = *(handle + 11);
          if (v105)
          {
            nw_queue_cancel_source(v105);
            *(handle + 11) = 0;
          }

          if (!*(handle + 13))
          {
            *(handle + 13) = os_retain(object);
          }

          if (v49 && (*(handle + 377) & 0x80) == 0)
          {
            if ((handle[379] & 1) == 0 && BYTE1(v100[82].isa) == 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v174 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                v175 = *(handle + 90);
                *buf = 136446978;
                v196 = "nw_protocol_http2_add_input_handler";
                v197 = 2082;
                v198 = (handle + 380);
                v199 = 2080;
                v200 = " ";
                v201 = 1024;
                v202 = v175;
                _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> starting keepalive timer", buf, 0x26u);
              }
            }

            v192[0] = MEMORY[0x1E69E9820];
            v192[1] = 0x40000000;
            v192[2] = ___ZL35nw_protocol_http2_add_input_handlerP11nw_protocolS0__block_invoke;
            v192[3] = &__block_descriptor_tmp_54_88785;
            v192[4] = handle;
            source = nw_queue_context_create_source(0, 2, 3, 0, v192, 0);
            *(handle + 42) = source;
            v107 = dispatch_time(0x8000000000000000, 45000000000);
            nw_queue_set_timer_values(source, v107, 0xA7A358200uLL, 0x3E8uLL);
            nw_queue_activate_source(*(handle + 42));
          }

          if (LOBYTE(v209[0]))
          {
            if ((v14[190] & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v108 = gconnectionLogObj;
              v109 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
              result = 1;
              if (!v109)
              {
                return result;
              }

              v110 = v14 + 191;
              v113 = v14 + 176;
              v111 = *(v14 + 44);
              v112 = *(v113 + 1);
              v114 = nw_hash_table_count(*(handle + 19));
              *buf = 136448002;
              v196 = "nw_protocol_http2_add_input_handler";
              v197 = 2082;
              v198 = v110;
              v199 = 2080;
              v200 = " ";
              v201 = 1024;
              v202 = v112;
              v203 = 1024;
              *v204 = v111;
              *&v204[4] = 2048;
              *&v204[6] = a2;
              *&v204[14] = 2082;
              *&v204[16] = v209;
              *&v204[24] = 1024;
              *v205 = v114;
              v115 = "%{public}s %{public}s%s<i%u:s%d> added input handler %p from %{public}s, now have %u input handlers";
              v116 = v108;
              v117 = 70;
LABEL_187:
              _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_INFO, v115, buf, v117);
            }
          }

          else if ((v14[190] & 0x10) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v118 = gconnectionLogObj;
            v119 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
            result = 1;
            if (!v119)
            {
              return result;
            }

            v120 = v14 + 191;
            v123 = v14 + 176;
            v121 = *(v14 + 44);
            v122 = *(v123 + 1);
            v124 = nw_hash_table_count(*(handle + 19));
            *buf = 136447746;
            v196 = "nw_protocol_http2_add_input_handler";
            v197 = 2082;
            v198 = v120;
            v199 = 2080;
            v200 = " ";
            v201 = 1024;
            v202 = v122;
            v203 = 1024;
            *v204 = v121;
            *&v204[4] = 2048;
            *&v204[6] = a2;
            *&v204[14] = 1024;
            *&v204[16] = v124;
            v115 = "%{public}s %{public}s%s<i%u:s%d> added input handler %p, now have %u input handlers";
            v116 = v118;
            v117 = 60;
            goto LABEL_187;
          }

          return 1;
        }

        if (handle[379])
        {
          goto LABEL_227;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v72 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_227;
        }

        v73 = *(handle + 90);
        *buf = 136447234;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (handle + 380);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v73;
        v203 = 1024;
        *v204 = v5;
        v69 = "%{public}s %{public}s%s<i%u> stream (id %d) not found in hash node";
        v70 = v72;
        v71 = 44;
      }

      else
      {
        if (handle[379])
        {
          goto LABEL_227;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v67 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_227;
        }

        v68 = *(handle + 90);
        *buf = 136447490;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (handle + 380);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v68;
        v203 = 1024;
        *v204 = v5;
        *&v204[4] = 2048;
        *&v204[6] = a2;
        v69 = "%{public}s %{public}s%s<i%u> could not find existing stream %d to connect protocol %p with";
        v70 = v67;
        v71 = 54;
      }

      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
      goto LABEL_227;
    }

    v5 = v13;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v166 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v167 = *(handle + 90);
        *buf = 136446978;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (handle + 380);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v167;
        _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> detected new stream initiated from this side of the connection, allocating new stream", buf, 0x26u);
      }
    }

    v66 = malloc_type_calloc(1uLL, 0x118uLL, 0x58AB443BuLL);
    v14 = v66;
    v189 = v26;
    if (v66)
    {
      break;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    v75 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v196 = "nw_protocol_http2_add_input_handler";
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v197 = 2048;
    v198 = 1;
    v199 = 2048;
    v200 = 280;
    LODWORD(v183) = 32;
    v77 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v183);
    if (!__nwlog_should_abort(v77))
    {
      free(v77);
      MEMORY[0x110] = 0;
      MEMORY[0x100] = 0u;
      MEMORY[0xF0] = 0u;
      MEMORY[0xE0] = 0u;
      MEMORY[0xD0] = 0u;
      MEMORY[0xC0] = 0u;
      MEMORY[0xB0] = 0u;
      MEMORY[0xA0] = 0u;
      MEMORY[0x90] = 0u;
      MEMORY[0x70] = 0u;
      MEMORY[0x60] = 0u;
      MEMORY[0x50] = 0u;
      MEMORY[0x40] = 0u;
      MEMORY[0x30] = 0u;
      MEMORY[0x20] = 0u;
      MEMORY[0x10] = 0u;
      MEMORY[0] = 0u;
      MEMORY[0x28] = 0;
      MEMORY[0x38] = 0;
      MEMORY[0x48] = 0;
      MEMORY[0x50] = 0;
      MEMORY[0x58] = 0;
      MEMORY[0x59] = 0;
      MEMORY[0x88] = 0u;
      MEMORY[0x78] = 0u;
      MEMORY[0x98] = 0;
      MEMORY[0xA0] = 0;
      MEMORY[0xA8] = 0;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v79 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
      *buf = 136446210;
      v196 = "nw_protocol_http2_add_input_handler";
      LODWORD(v183) = 12;
      v80 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s strict_placement_new(struct http2_stream, strict_calloc(1, sizeof(struct http2_stream)),) failed", buf, v183);
      if (!__nwlog_should_abort(v80))
      {
        free(v80);
        v66 = 0;
        goto LABEL_110;
      }
    }

    __break(1u);
LABEL_310:
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  *(v66 + 34) = 0;
  *(v66 + 15) = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 13) = 0u;
  *(v66 + 14) = 0u;
  *(v66 + 11) = 0u;
  *(v66 + 12) = 0u;
  *(v66 + 9) = 0u;
  *(v66 + 10) = 0u;
  *(v66 + 7) = 0u;
  *(v66 + 8) = 0u;
  *(v66 + 5) = 0u;
  *(v66 + 6) = 0u;
  *(v66 + 3) = 0u;
  *(v66 + 4) = 0u;
  *(v66 + 1) = 0u;
  *(v66 + 2) = 0u;
  *v66 = 0u;
LABEL_110:
  nw_http2_stream_init(v66);
  v81 = 0;
  v14[88] = (*(handle + 377) & 0x80) != 0;
  *(v14 + 94) = *(v14 + 94) & 0xFF7F | *(handle + 377) & 0x80;
  LOBYTE(v13) = v5;
  while (1)
  {
    v82 = *(v209 + v81);
    v14[v81 + 191] = v82;
    if (!v82)
    {
      break;
    }

    if (++v81 == 83)
    {
      v14[274] = 0;
      break;
    }
  }

  v14[190] = v14[190] & 0xEF | (16 * (handle[379] & 1));
  *(v14 + 45) = *(handle + 90);
  v16[4] = v14;
  if ((v14[188] & 0x80) == 0)
  {
    goto LABEL_152;
  }

  if (a1->default_input_handler)
  {
    if ((v14[190] & 0x10) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v83 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v85 = *(v14 + 44);
        v84 = *(v14 + 45);
        *buf = 136447234;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (v14 + 191);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v84;
        v203 = 1024;
        *v204 = v85;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> http2 has default_input_handler on the first stream in a listening connection. Is a connection trying to join while having server set on the parameters?", buf, 0x2Cu);
      }
    }

    nw_http2_remove_from_protocol_table(handle, a2);
    if (v14[168])
    {
      v86 = *(v14 + 20);
      if (v86)
      {
        os_release(v86);
      }
    }

    *(v14 + 20) = 0;
    if (v14[152])
    {
      v87 = *(v14 + 18);
      if (v87)
      {
        os_release(v87);
      }
    }

    *(v14 + 18) = 0;
    v88 = *(v14 + 15);
    if (v88)
    {
      *(v14 + 16) = v88;
      operator delete(v88);
    }

    goto LABEL_221;
  }

  if ((v14[190] & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v176 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v178 = *(v14 + 44);
      v177 = *(v14 + 45);
      *buf = 136447234;
      v196 = "nw_protocol_http2_add_input_handler";
      v197 = 2082;
      v198 = (v14 + 191);
      v199 = 2080;
      v200 = " ";
      v201 = 1024;
      v202 = v177;
      v203 = 1024;
      *v204 = v178;
      _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> responder's first stream detected, overriding stream id to 1", buf, 0x2Cu);
    }
  }

  *(v14 + 44) = 1;
  if (nw_http2_add_to_id_table(handle, v14, a2))
  {
    if ((v14[190] & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v179 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v181 = *(v14 + 44);
        v180 = *(v14 + 45);
        v182 = v16[4];
        *buf = 136447746;
        v196 = "nw_protocol_http2_add_input_handler";
        v197 = 2082;
        v198 = (v14 + 191);
        v199 = 2080;
        v200 = " ";
        v201 = 1024;
        v202 = v180;
        v203 = 1024;
        *v204 = v181;
        *&v204[4] = 2048;
        *&v204[6] = v14;
        *&v204[14] = 2048;
        *&v204[16] = v182;
        _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> new stream is %p, stream pointer is %p", buf, 0x40u);
      }
    }

    LOBYTE(v13) = v5;
    goto LABEL_152;
  }

  if ((v14[190] & 0x10) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v144 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v146 = *(v14 + 44);
      v145 = *(v14 + 45);
      *buf = 136447234;
      v196 = "nw_protocol_http2_add_input_handler";
      v197 = 2082;
      v198 = (v14 + 191);
      v199 = 2080;
      v200 = " ";
      v201 = 1024;
      v202 = v145;
      v203 = 1024;
      *v204 = v146;
      _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> Failed to add new stream to the id based hash table", buf, 0x2Cu);
    }
  }

  nw_http2_remove_from_protocol_table(handle, a2);
  std::destroy_at[abi:nn200100]<http2_stream,0>(v14);
LABEL_221:
  free(v14);
  return 0;
}

uint64_t nw_http2_get_idle_timeout(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    idle_timeout = nw_http2_get_idle_timeout(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_idle_timeout_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    idle_timeout = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_idle_timeout";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_idle_timeout";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  idle_timeout = 0;
LABEL_5:

  return idle_timeout;
}

void sub_181EF8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_send_truncated_data_frames(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    send_truncated_data_frames = nw_http2_get_send_truncated_data_frames(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_send_truncated_data_frames_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    send_truncated_data_frames = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_send_truncated_data_frames";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_send_truncated_data_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  send_truncated_data_frames = 0;
LABEL_5:

  return send_truncated_data_frames & 1;
}

void sub_181EF8A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_stream_receive_window_size(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    stream_receive_window_size = nw_http2_get_stream_receive_window_size(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_stream_receive_window_size_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    stream_receive_window_size = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_stream_receive_window_size";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_stream_receive_window_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  stream_receive_window_size = 0;
LABEL_5:

  return stream_receive_window_size;
}

void sub_181EF8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_connection_receive_window_size(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    connection_receive_window_size = nw_http2_get_connection_receive_window_size(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_connection_receive_window_size_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    connection_receive_window_size = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_connection_receive_window_size";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_connection_receive_window_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  connection_receive_window_size = 0;
LABEL_5:

  return connection_receive_window_size;
}

void sub_181EF90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL nw_protocol_http2_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, &type, &v74))
    {
      goto LABEL_152;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v74 != 1)
      {
        v47 = __nwlog_obj();
        v48 = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        v49 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_151;
      }

      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type;
      v58 = os_log_type_enabled(v47, type);
      if (!backtrace_string)
      {
        if (!v58)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        v49 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_151;
      }

      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v59 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_129:
        _os_log_impl(&dword_181A37000, v47, v48, v59, buf, 0x16u);
      }

LABEL_130:
      free(backtrace_string);
      goto LABEL_152;
    }

    v47 = __nwlog_obj();
    v48 = type;
    if (!os_log_type_enabled(v47, type))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v49 = "%{public}s called with null protocol";
LABEL_151:
    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
LABEL_152:
    if (v46)
    {
      free(v46);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (!__nwlog_fault(v46, &type, &v74))
    {
      goto LABEL_152;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      v49 = "%{public}s called with null http2";
      goto LABEL_151;
    }

    if (v74 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      v49 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_151;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type;
    v60 = os_log_type_enabled(v47, type);
    if (backtrace_string)
    {
      if (v60)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v59 = "%{public}s called with null http2, dumping backtrace:%{public}s";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (!v60)
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v49 = "%{public}s called with null http2, no backtrace";
    goto LABEL_151;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    v51 = a2;
    v52 = a3;
    v53 = a1;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v54 = gconnectionLogObj;
    v55 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a1 = v53;
    a3 = v52;
    a2 = v51;
    if (v55)
    {
      v56 = *(handle + 90);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v77 = " ";
      LOWORD(v78) = 1024;
      *(&v78 + 2) = v56;
      HIWORD(v78) = 2048;
      v79 = v51;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with listen_protocol %p", buf, 0x30u);
      a2 = v51;
      a3 = v52;
      a1 = v53;
    }
  }

  if (!*(handle + 18))
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      v61 = a2;
      v62 = a3;
      v63 = a1;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v64 = gconnectionLogObj;
      v65 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      a1 = v63;
      a3 = v62;
      a2 = v61;
      if (v65)
      {
        v66 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v66;
        _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler", buf, 0x26u);
        a2 = v61;
        a3 = v62;
        a1 = v63;
      }
    }

    *(handle + 18) = a2;
    a2->protocol_handler = a1;
    if (a3)
    {
      nw_protocol_remove_instance(a1);
    }

    v11 = (handle + 377);
    if ((*(handle + 377) & 0x1000) == 0)
    {
      return 1;
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v67 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v68 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v68;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> waiting for listen handler, resuming processing of connected", buf, 0x26u);
      }
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v69 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v70 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v70;
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if ((*v11 & 0x80) != 0)
    {
      if (!*(handle + 18))
      {
        if ((handle[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v25 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
          {
            v26 = *(handle + 90);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_http2_process_connected";
            *&buf[12] = 2082;
            *&buf[14] = handle + 380;
            *&buf[22] = 2080;
            v77 = " ";
            LOWORD(v78) = 1024;
            *(&v78 + 2) = v26;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x26u);
          }
        }

        *v11 |= 0x1000u;
        return 1;
      }

      if ((handle[379] & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v71 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v77 = " ";
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v71;
          v14 = "%{public}s %{public}s%s<i%u> listen handler present, processing input without waiting";
          goto LABEL_159;
        }
      }
    }

    else if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v13;
        v14 = "%{public}s %{public}s%s<i%u> not server, processing input without waiting";
LABEL_159:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0x26u);
      }
    }

    v18 = *v11;
    *v11 &= ~0x1000u;
    if ((v18 & 0xC) != 0)
    {
      if ((handle[379] & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v19 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v77 = " ";
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v20;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> tunnel already connected or closed, ignoring connected event", buf, 0x26u);
        }
      }

      return 1;
    }

    nw_http2_send_settings(handle);
    *v11 |= 4u;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v72 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v73 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v73;
        _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2 tunnel is now connected", buf, 0x26u);
      }
    }

    v22 = *(handle + 14);
    if (v22)
    {
      v23 = v22;
      is_registered = _nw_endpoint_is_registered(v23);

      if (is_registered)
      {
        if (nw_settings_get_http_connection_coalescing_enabled())
        {
          nw_endpoint_add_edges_for_instance(v23, handle, 1);
        }
      }

      else if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v37 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v77 = " ";
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v38;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
        }
      }

      goto LABEL_106;
    }

    if (handle[379])
    {
LABEL_106:
      nw_protocol_http2_process_input(handle);
      v44 = *(handle + 19);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke;
      v77 = &__block_descriptor_tmp_49_88077;
      v78 = handle;
      nw_hash_table_apply(v44, buf);
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v77 = " ";
    LOWORD(v78) = 1024;
    *(&v78 + 2) = v31;
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint", buf, 38);
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (__nwlog_fault(v32, &type, &v74))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v33 = gconnectionLogObj;
        v34 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_104;
        }

        v35 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v35;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
        goto LABEL_103;
      }

      if (v74 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v33 = gconnectionLogObj;
        v34 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_104;
        }

        v42 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v42;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
        goto LABEL_103;
      }

      v39 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      v34 = type;
      v40 = os_log_type_enabled(gconnectionLogObj, type);
      if (v39)
      {
        if (v40)
        {
          v41 = *(handle + 90);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v77 = " ";
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v41;
          HIWORD(v78) = 2082;
          v79 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v39);
        goto LABEL_104;
      }

      if (v40)
      {
        v43 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v43;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_103:
        _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x26u);
      }
    }

LABEL_104:
    if (v32)
    {
      free(v32);
    }

    goto LABEL_106;
  }

  v4 = handle[379];
  if (*(handle + 377) & 0x1000) == 0 || (handle[379])
  {
    goto LABEL_71;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v5 = *(handle + 90);
  *buf = 136446978;
  *&buf[4] = "nw_protocol_http2_add_listen_handler";
  *&buf[12] = 2082;
  *&buf[14] = handle + 380;
  *&buf[22] = 2080;
  v77 = " ";
  LOWORD(v78) = 1024;
  *(&v78 + 2) = v5;
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time", buf, 38);
  type = OS_LOG_TYPE_ERROR;
  v74 = 0;
  if (__nwlog_fault(v6, &type, &v74))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v8 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_68;
      }

      v9 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v77 = " ";
      LOWORD(v78) = 1024;
      *(&v78 + 2) = v9;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time";
      goto LABEL_67;
    }

    if (v74 != 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v8 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_68;
      }

      v21 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v77 = " ";
      LOWORD(v78) = 1024;
      *(&v78 + 2) = v21;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, backtrace limit exceeded";
      goto LABEL_67;
    }

    v15 = __nw_create_backtrace_string();
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    v8 = type;
    v16 = os_log_type_enabled(gconnectionLogObj, type);
    if (v15)
    {
      if (v16)
      {
        v17 = *(handle + 90);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v77 = " ";
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v17;
        HIWORD(v78) = 2082;
        v79 = v15;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, dumping backtrace:%{public}s", buf, 0x30u);
      }

      free(v15);
      goto LABEL_68;
    }

    if (v16)
    {
      v27 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v77 = " ";
      LOWORD(v78) = 1024;
      *(&v78 + 2) = v27;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, no backtrace";
LABEL_67:
      _os_log_impl(&dword_181A37000, v7, v8, v10, buf, 0x26u);
    }
  }

LABEL_68:
  if (v6)
  {
    free(v6);
  }

  v4 = handle[379];
LABEL_71:
  if (v4)
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v28 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v30 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v77 = " ";
    LOWORD(v78) = 1024;
    *(&v78 + 2) = v30;
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> already have a listen handler, ignoring add", buf, 0x26u);
    return 0;
  }

  return result;
}

BOOL nw_protocol_http2_connect(nw_protocol *a1, nw_protocol *a2)
{
  *&v111[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v102 = "nw_protocol_http2_connect";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (!__nwlog_fault(v60, &type, &v99))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_199;
      }

      *buf = 136446210;
      v102 = "nw_protocol_http2_connect";
      v63 = "%{public}s called with null protocol";
LABEL_198:
      _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
      goto LABEL_199;
    }

    if (v99 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v80 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (v80)
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (!v80)
    {
      goto LABEL_168;
    }

    *buf = 136446466;
    v102 = "nw_protocol_http2_connect";
    v103 = 2082;
    v104 = backtrace_string;
    v81 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_167:
    _os_log_impl(&dword_181A37000, v61, v62, v81, buf, 0x16u);
    goto LABEL_168;
  }

  handle = a1->handle;
  if (!handle)
  {
    v64 = __nwlog_obj();
    *buf = 136446210;
    v102 = "nw_protocol_http2_connect";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (!__nwlog_fault(v60, &type, &v99))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_199;
      }

      *buf = 136446210;
      v102 = "nw_protocol_http2_connect";
      v63 = "%{public}s called with null http2";
      goto LABEL_198;
    }

    if (v99 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v82 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (v82)
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null http2, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (!v82)
    {
      goto LABEL_168;
    }

    *buf = 136446466;
    v102 = "nw_protocol_http2_connect";
    v103 = 2082;
    v104 = backtrace_string;
    v81 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_167;
  }

  if (!a2)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v102 = "nw_protocol_http2_connect";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (!__nwlog_fault(v60, &type, &v99))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null other_protocol";
        goto LABEL_198;
      }

LABEL_199:
      if (!v60)
      {
        return 0;
      }

      v58 = v60;
      goto LABEL_127;
    }

    if (v99 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v83 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (v83)
      {
        *buf = 136446210;
        v102 = "nw_protocol_http2_connect";
        v63 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (v83)
    {
      *buf = 136446466;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = backtrace_string;
      v81 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_167;
    }

LABEL_168:
    free(backtrace_string);
    goto LABEL_199;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v66 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(handle + 90);
      *buf = 136446978;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = handle + 380;
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v67;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if ((*(handle + 377) & 8) != 0)
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(handle + 90);
        *buf = 136446978;
        v102 = "nw_protocol_http2_connect";
        v103 = 2082;
        v104 = handle + 380;
        v105 = 2080;
        v106 = " ";
        v107 = 1024;
        v108 = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> tunnel already closed, ignoring connect with success", buf, 0x26u);
      }
    }

    return 1;
  }

  if (!*(handle + 8))
  {
    v5 = mach_continuous_time();
    v6 = v5 <= 1 ? 1 : v5;
    *(handle + 8) = v6;
    v7 = nw_protocol_copy_info(*(handle + 4));
    if (v7)
    {
      v8 = v7;
      object = _nw_array_copy_last_object(v7);
      if (object)
      {
        v10 = object;
        if (nw_protocol_metadata_is_tls(object))
        {
          v11 = v10;
          nw_http_connection_metadata_set_sec_metadata(*(handle + 32), v11);
          os_release(v11);
        }

        os_release(v10);
      }

      os_release(v8);
    }
  }

  output_handler_context = a2->output_handler_context;
  if ((*(handle + 377) & 4) == 0)
  {
    if (!output_handler_context)
    {
      goto LABEL_22;
    }

    v13 = output_handler_context[4];
    if (v13)
    {
      *(v13 + 188) |= 8u;
      if ((*(v13 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v92 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v94 = *(v13 + 176);
          v93 = *(v13 + 180);
          *buf = 136447746;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = (v13 + 191);
          v105 = 2080;
          v106 = " ";
          v107 = 1024;
          v108 = v93;
          v109 = 1024;
          *v110 = v94;
          *&v110[4] = 1024;
          *&v110[6] = v94;
          v111[0] = 2048;
          *&v111[1] = v13;
          _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> marked stream id %d (%p) as waiting for connect", buf, 0x3Cu);
        }
      }

LABEL_22:
      v14 = *(handle + 14);
      if (v14)
      {
        v15 = v14;
        is_registered = _nw_endpoint_is_registered(v15);

        if (is_registered)
        {
          nw_endpoint_add_edges_for_instance(v15, handle, 0);
        }

        else if ((handle[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v36 = *(handle + 90);
            *buf = 136446978;
            v102 = "nw_protocol_http2_connect";
            v103 = 2082;
            v104 = handle + 380;
            v105 = 2080;
            v106 = " ";
            v107 = 1024;
            v108 = v36;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
          }
        }

        goto LABEL_114;
      }

      if (handle[379])
      {
        goto LABEL_114;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v29 = *(handle + 90);
      *buf = 136446978;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = handle + 380;
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v29;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint", buf, 38);
      type = OS_LOG_TYPE_ERROR;
      v99 = 0;
      if (__nwlog_fault(v30, &type, &v99))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          v32 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_112;
          }

          v33 = *(handle + 90);
          *buf = 136446978;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = handle + 380;
          v105 = 2080;
          v106 = " ";
          v107 = 1024;
          v108 = v33;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
          goto LABEL_111;
        }

        if (v99 != 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          v32 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_112;
          }

          v51 = *(handle + 90);
          *buf = 136446978;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = handle + 380;
          v105 = 2080;
          v106 = " ";
          v107 = 1024;
          v108 = v51;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
          goto LABEL_111;
        }

        v44 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        v32 = type;
        v45 = os_log_type_enabled(gconnectionLogObj, type);
        if (v44)
        {
          if (v45)
          {
            v46 = *(handle + 90);
            *buf = 136447234;
            v102 = "nw_protocol_http2_connect";
            v103 = 2082;
            v104 = handle + 380;
            v105 = 2080;
            v106 = " ";
            v107 = 1024;
            v108 = v46;
            v109 = 2082;
            *v110 = v44;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v44);
          goto LABEL_112;
        }

        if (v45)
        {
          v53 = *(handle + 90);
          *buf = 136446978;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = handle + 380;
          v105 = 2080;
          v106 = " ";
          v107 = 1024;
          v108 = v53;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_111:
          _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x26u);
        }
      }

LABEL_112:
      if (v30)
      {
        free(v30);
      }

LABEL_114:
      output_handler = a1->output_handler;
      if (output_handler)
      {
        callbacks = output_handler->callbacks;
        if (callbacks)
        {
          connect = callbacks->connect;
          if (connect)
          {
            connect();
            return 1;
          }
        }
      }

      v68 = __nwlog_obj();
      v69 = a1->output_handler;
      v70 = "invalid";
      if (v69)
      {
        identifier = v69->identifier;
        if (identifier)
        {
          v70 = identifier;
        }
      }

      *buf = 136446466;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = v70;
      LODWORD(v98) = 22;
      v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s protocol %{public}s has invalid connect callback", buf, v98);
      type = OS_LOG_TYPE_ERROR;
      v99 = 0;
      if (__nwlog_fault(v72, &type, &v99))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v73 = __nwlog_obj();
          v74 = type;
          if (!os_log_type_enabled(v73, type))
          {
            goto LABEL_207;
          }

          v75 = a1->output_handler;
          v76 = "invalid";
          if (v75)
          {
            v77 = v75->identifier;
            if (v77)
            {
              v76 = v77;
            }
          }

          *buf = 136446466;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = v76;
          v78 = "%{public}s protocol %{public}s has invalid connect callback";
          goto LABEL_206;
        }

        if (v99 != 1)
        {
          v73 = __nwlog_obj();
          v74 = type;
          if (!os_log_type_enabled(v73, type))
          {
            goto LABEL_207;
          }

          v89 = a1->output_handler;
          v90 = "invalid";
          if (v89)
          {
            v91 = v89->identifier;
            if (v91)
            {
              v90 = v91;
            }
          }

          *buf = 136446466;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = v90;
          v78 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
          goto LABEL_206;
        }

        v84 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v74 = type;
        v85 = os_log_type_enabled(v73, type);
        if (v84)
        {
          if (v85)
          {
            v86 = a1->output_handler;
            v87 = "invalid";
            if (v86)
            {
              v88 = v86->identifier;
              if (v88)
              {
                v87 = v88;
              }
            }

            *buf = 136446722;
            v102 = "nw_protocol_http2_connect";
            v103 = 2082;
            v104 = v87;
            v105 = 2082;
            v106 = v84;
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v84);
          goto LABEL_207;
        }

        if (v85)
        {
          v95 = a1->output_handler;
          v96 = "invalid";
          if (v95)
          {
            v97 = v95->identifier;
            if (v97)
            {
              v96 = v97;
            }
          }

          *buf = 136446466;
          v102 = "nw_protocol_http2_connect";
          v103 = 2082;
          v104 = v96;
          v78 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_206:
          _os_log_impl(&dword_181A37000, v73, v74, v78, buf, 0x16u);
        }
      }

LABEL_207:
      if (v72)
      {
        free(v72);
      }

      return 1;
    }

    if (handle[379])
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = *(handle + 90);
    *buf = 136447234;
    v102 = "nw_protocol_http2_connect";
    v103 = 2082;
    v104 = handle + 380;
    v105 = 2080;
    v106 = " ";
    v107 = 1024;
    v108 = v37;
    v109 = 2048;
    *v110 = a2;
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra", buf, 48);
    type = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (!__nwlog_fault(v38, &type, &v99))
    {
      goto LABEL_125;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      if (os_log_type_enabled(gconnectionLogObj, type))
      {
LABEL_67:
        v41 = *(handle + 90);
        *buf = 136447234;
        v102 = "nw_protocol_http2_connect";
        v103 = 2082;
        v104 = handle + 380;
        v105 = 2080;
        v106 = " ";
        v107 = 1024;
        v108 = v41;
        v109 = 2048;
        *v110 = a2;
        v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra";
LABEL_124:
        _os_log_impl(&dword_181A37000, v39, v40, v42, buf, 0x30u);
      }

LABEL_125:
      if (v38)
      {
        v58 = v38;
LABEL_127:
        free(v58);
      }

      return 0;
    }

    if (v99 == 1)
    {
      v47 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      v48 = os_log_type_enabled(gconnectionLogObj, type);
      if (v47)
      {
        if (v48)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (!v48)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v39 = gconnectionLogObj;
    v40 = type;
    if (!os_log_type_enabled(gconnectionLogObj, type))
    {
      goto LABEL_125;
    }

    goto LABEL_104;
  }

  if (output_handler_context)
  {
    v19 = output_handler_context[4];
    if (!v19)
    {
      if (handle[379])
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v43 = *(handle + 90);
      *buf = 136447234;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = handle + 380;
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v43;
      v109 = 2048;
      *v110 = a2;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra", buf, 48);
      type = OS_LOG_TYPE_ERROR;
      v99 = 0;
      if (!__nwlog_fault(v38, &type, &v99))
      {
        goto LABEL_125;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        v40 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_67;
        }

        goto LABEL_125;
      }

      if (v99 == 1)
      {
        v47 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        v40 = type;
        v49 = os_log_type_enabled(gconnectionLogObj, type);
        if (v47)
        {
          if (v49)
          {
LABEL_95:
            v50 = *(handle + 90);
            *buf = 136447490;
            v102 = "nw_protocol_http2_connect";
            v103 = 2082;
            v104 = handle + 380;
            v105 = 2080;
            v106 = " ";
            v107 = 1024;
            v108 = v50;
            v109 = 2048;
            *v110 = a2;
            *&v110[8] = 2082;
            *v111 = v47;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, dumping backtrace:%{public}s", buf, 0x3Au);
          }

LABEL_96:
          free(v47);
          goto LABEL_125;
        }

        if (!v49)
        {
          goto LABEL_125;
        }

LABEL_123:
        v57 = *(handle + 90);
        *buf = 136447234;
        v102 = "nw_protocol_http2_connect";
        v103 = 2082;
        v104 = handle + 380;
        v105 = 2080;
        v106 = " ";
        v107 = 1024;
        v108 = v57;
        v109 = 2048;
        *v110 = a2;
        v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, no backtrace";
        goto LABEL_124;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_125;
      }

LABEL_104:
      v52 = *(handle + 90);
      *buf = 136447234;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = handle + 380;
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v52;
      v109 = 2048;
      *v110 = a2;
      v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, backtrace limit exceeded";
      goto LABEL_124;
    }

    if (nw_http2_stream_connect(handle, output_handler_context[4], a2))
    {
      return 1;
    }

    if ((*(v19 + 190) & 0x10) != 0)
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v23 = *(v19 + 176);
      v22 = *(v19 + 180);
      *buf = 136447746;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = (v19 + 191);
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v22;
      v109 = 1024;
      *v110 = v23;
      *&v110[4] = 1024;
      *&v110[6] = v23;
      v111[0] = 2048;
      *&v111[1] = v19;
      v24 = "%{public}s %{public}s%s<i%u:s%d> nw_http2_stream_connect failed for stream id %d (%p)";
      v25 = v20;
      v26 = 60;
LABEL_44:
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      return 0;
    }
  }

  else
  {
    if (handle[379])
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v27 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v28 = *(handle + 90);
      *buf = 136447234;
      v102 = "nw_protocol_http2_connect";
      v103 = 2082;
      v104 = handle + 380;
      v105 = 2080;
      v106 = " ";
      v107 = 1024;
      v108 = v28;
      v109 = 2048;
      *v110 = a2;
      v24 = "%{public}s %{public}s%s<i%u> connect called on protocol %p which is not in protocol hash table";
      v25 = v27;
      v26 = 48;
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t nw_protocol_http2_get_remote_endpoint(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v2 = handle[6];
      if (!v2)
      {
        return handle[14];
      }

      v3 = *(v2 + 24);
      if (!v3)
      {
        return handle[14];
      }

      v4 = *(v3 + 136);
      if (!v4)
      {
        return handle[14];
      }

      default_input_handler = a1->default_input_handler;

      return v4(default_input_handler);
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_get_remote_endpoint";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_get_remote_endpoint";
        v11 = "%{public}s called with null http2";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_get_remote_endpoint";
        v11 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
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
        v20 = "nw_protocol_http2_get_remote_endpoint";
        v11 = "%{public}s called with null http2, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_get_remote_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_http2_get_remote_endpoint";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_get_remote_endpoint";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
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
        v20 = "nw_protocol_http2_get_remote_endpoint";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_get_remote_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_http2_get_remote_endpoint";
    v11 = "%{public}s called with null protocol";
LABEL_36:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_http2_get_parameters(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[13];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http2_get_parameters";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http2", buf, 12);
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
        v16 = "nw_protocol_http2_get_parameters";
        v7 = "%{public}s called with null http2";
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
        v16 = "nw_protocol_http2_get_parameters";
        v7 = "%{public}s called with null http2, backtrace limit exceeded";
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
        v16 = "nw_protocol_http2_get_parameters";
        v7 = "%{public}s called with null http2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http2_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_http2_get_parameters";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
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
        v16 = "nw_protocol_http2_get_parameters";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
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
        v16 = "nw_protocol_http2_get_parameters";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http2_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
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
    v16 = "nw_protocol_http2_get_parameters";
    v7 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_http2_send_settings(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v29 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 360);
      *v46 = 136446978;
      *&v46[4] = "nw_http2_send_settings";
      *&v46[12] = 2082;
      *&v46[14] = a1 + 380;
      *&v46[22] = 2080;
      v47 = " ";
      LOWORD(v48) = 1024;
      *(&v48 + 2) = v30;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", v46, 0x26u);
    }
  }

  *v46 = xmmword_182B08E80;
  v2 = *(a1 + 368);
  *&v46[16] = 4;
  *&v46[20] = v2;
  v47 = 0x100000009;
  if ((*(a1 + 377) & 0x80) != 0)
  {
    v48 = 0x100000008;
    webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 256));
    max_sessions = nw_webtransport_connection_state_get_max_sessions(webtransport_state);
    if (max_sessions)
    {
      v49 = 11104;
      v50 = max_sessions;
    }
  }

  if (nghttp2_submit_settings())
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = nghttp2_strerror();
    *buf = 136446466;
    v39 = "nw_http2_send_settings";
    v40 = 2082;
    v41 = v6;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s nghttp2_submit_settings: %{public}s failed", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v7, &type, &v36))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      v10 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v10;
      v11 = "%{public}s nghttp2_submit_settings: %{public}s failed";
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      v13 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v13)
        {
          v14 = nghttp2_strerror();
          *buf = 136446722;
          v39 = "nw_http2_send_settings";
          v40 = 2082;
          v41 = v14;
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s nghttp2_submit_settings: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v13)
      {
LABEL_21:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_23;
      }

      v16 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v16;
      v11 = "%{public}s nghttp2_submit_settings: %{public}s failed, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      v15 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v15;
      v11 = "%{public}s nghttp2_submit_settings: %{public}s failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x16u);
    goto LABEL_21;
  }

LABEL_23:
  if (*(a1 + 372) == 0xFFFF || !nghttp2_session_set_local_window_size())
  {
    goto LABEL_41;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  v18 = nghttp2_strerror();
  *buf = 136446466;
  v39 = "nw_http2_send_settings";
  v40 = 2082;
  v41 = v18;
  LODWORD(v35) = 22;
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s nghttp2_session_set_local_window_size: %{public}s failed", buf, v35);
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v19, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v21 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_39;
      }

      v22 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v22;
      v23 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed";
      goto LABEL_38;
    }

    if (v36 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v21 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_39;
      }

      v27 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v27;
      v23 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, backtrace limit exceeded";
      goto LABEL_38;
    }

    v24 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = type;
    v25 = os_log_type_enabled(gLogObj, type);
    if (v24)
    {
      if (v25)
      {
        v26 = nghttp2_strerror();
        *buf = 136446722;
        v39 = "nw_http2_send_settings";
        v40 = 2082;
        v41 = v26;
        v42 = 2082;
        v43 = v24;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v24);
      goto LABEL_39;
    }

    if (v25)
    {
      v28 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = v28;
      v23 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, no backtrace";
LABEL_38:
      _os_log_impl(&dword_181A37000, v20, v21, v23, buf, 0x16u);
    }
  }

LABEL_39:
  if (v19)
  {
    free(v19);
  }

LABEL_41:
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 360);
      *buf = 136446978;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = a1 + 380;
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = v32;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> submitted settings to nghttp2", buf, 0x26u);
    }
  }

  nw_http2_session_send(a1);
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 360);
      *buf = 136446978;
      v39 = "nw_http2_send_settings";
      v40 = 2082;
      v41 = a1 + 380;
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = v34;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2_session_send complete with settings", buf, 0x26u);
    }
  }
}

uint64_t ___ZL28nw_http2_drain_output_framesP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = object;
    v6 = *nw_hash_node_get_extra(a2);
    if (v6)
    {
      if ((*(v6 + 188) & 2) != 0)
      {
          ;
        }
      }

      return 1;
    }

    v17 = *(a1 + 32);
    if (!v17 || (*(v17 + 379) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = (v19 + 380);
        v21 = "";
        v22 = v19 == 0;
        v23 = *(v19 + 360);
        v26 = "nw_http2_drain_output_frames_block_invoke";
        if (v22)
        {
          v20 = "";
        }

        v27 = 2082;
        v25 = 136447234;
        if (!v22)
        {
          v21 = " ";
        }

        v28 = v20;
        v29 = 2080;
        v30 = v21;
        v31 = 1024;
        v32 = v23;
        v33 = 2048;
        v34 = v5;
        v14 = "%{public}s %{public}s%s<i%u> stream not found for input protocol %p, not draining output frames";
        v15 = v18;
        v16 = OS_LOG_TYPE_INFO;
LABEL_26:
        _os_log_impl(&dword_181A37000, v15, v16, v14, &v25, 0x30u);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7 || (*(v7 + 379) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = (v9 + 380);
        v11 = "";
        v12 = v9 == 0;
        v13 = *(v9 + 360);
        v26 = "nw_http2_drain_output_frames_block_invoke";
        if (v12)
        {
          v10 = "";
        }

        v27 = 2082;
        v25 = 136447234;
        if (!v12)
        {
          v11 = " ";
        }

        v28 = v10;
        v29 = 2080;
        v30 = v11;
        v31 = 1024;
        v32 = v13;
        v33 = 2048;
        v34 = a2;
        v14 = "%{public}s %{public}s%s<i%u> input protocol in node %p in protocol table is NULL, skipping";
        v15 = v8;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_26;
      }
    }
  }

  return 1;
}

void nw_protocol_http2_process_input(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v53 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v54 = *(a1 + 360);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 380;
      *&buf[22] = 2080;
      v74 = " ";
      v75 = 1024;
      v76 = v54;
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  *(a1 + 377) |= 0x200u;
  while (1)
  {
    v69 = 0;
    v70 = &v69;
    v2 = *(a1 + 32);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 80);
    if (!v4)
    {
      break;
    }

    v5 = v4();
    if (!v5)
    {
      goto LABEL_81;
    }

    v6 = v5;
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v35 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 360);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v74 = " ";
        v75 = 1024;
        v76 = v36;
        v77 = 1024;
        LODWORD(v78) = v6;
        _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> received %u frames from output_handler", buf, 0x2Cu);
      }
    }

    *type = 0;
    v66 = type;
    v67 = 0x2000000000;
    v68 = 0;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 0x40000000;
    v61 = ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke;
    v62 = &unk_1E6A3C490;
    v63 = type;
    v64 = a1;
    v7 = v69;
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      v9 = (v61)(v60);
      v7 = v8;
    }

    while ((v9 & 1) != 0);
    if (nghttp2_session_consume_connection())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = nghttp2_strerror();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = v11;
      LODWORD(v57) = 22;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s nghttp2_session_consume_connection: %{public}s failed", buf, v57);
      LOBYTE(v71) = 16;
      v59 = 0;
      if (!__nwlog_fault(v12, &v71, &v59))
      {
        goto LABEL_28;
      }

      if (v71 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v71;
        if (os_log_type_enabled(gLogObj, v71))
        {
          v15 = nghttp2_strerror();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          v16 = v13;
          v17 = v14;
          v18 = "%{public}s nghttp2_session_consume_connection: %{public}s failed";
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v59 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = v71;
        v22 = os_log_type_enabled(gLogObj, v71);
        if (backtrace_string)
        {
          if (v22)
          {
            v23 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http2_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v23;
            *&buf[22] = 2082;
            v74 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s nghttp2_session_consume_connection: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
LABEL_28:
          if (v12)
          {
            free(v12);
          }

          goto LABEL_30;
        }

        v27 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v27;
        v16 = v20;
        v17 = v21;
        v18 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = v71;
        if (!os_log_type_enabled(gLogObj, v71))
        {
          goto LABEL_28;
        }

        v26 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        v16 = v24;
        v17 = v25;
        v18 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, backtrace limit exceeded";
      }

LABEL_27:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0x16u);
      goto LABEL_28;
    }

LABEL_30:
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v37 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v38 = *(a1 + 360);
        v39 = *(v66 + 6);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v74 = " ";
        v75 = 1024;
        v76 = v38;
        v77 = 1024;
        LODWORD(v78) = v39;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> consumed %u bytes on connection", buf, 0x2Cu);
      }
    }

    v28 = *(a1 + 152);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 0x40000000;
    v58[2] = ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke_51;
    v58[3] = &__block_descriptor_tmp_52_88155;
    v58[4] = a1;
    nw_hash_table_apply(v28, v58);
    if (gLogDatapath == 1)
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v29 = v69;
    if (v69)
    {
      *(v69 + 40) = &v71;
      v71 = v29;
      v72 = v70;
      v69 = 0;
      v70 = &v69;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v74 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v75) = 1;
      do
      {
        v30 = v71;
        if (!v71)
        {
          break;
        }

        v31 = *(v71 + 32);
        v32 = *(v71 + 40);
        v33 = (v31 + 40);
        if (!v31)
        {
          v33 = &v72;
        }

        *v33 = v32;
        *v32 = v31;
        *(v30 + 32) = 0;
        *(v30 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v40 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 360);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v74 = " ";
        v75 = 1024;
        v76 = v41;
        v77 = 1024;
        LODWORD(v78) = v6;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> processed %u frames", buf, 0x2Cu);
      }
    }

    _Block_object_dispose(type, 8);
  }

  if ((*(a1 + 379) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = *(a1 + 360);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_input";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 380;
    *&buf[22] = 2080;
    v74 = " ";
    v75 = 1024;
    v76 = v42;
    LODWORD(v57) = 38;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, v57);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (__nwlog_fault(v43, type, &v71))
    {
      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v71 == 1)
        {
          v48 = __nw_create_backtrace_string();
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v44 = gconnectionLogObj;
          v45 = type[0];
          v49 = os_log_type_enabled(gconnectionLogObj, type[0]);
          if (v48)
          {
            if (v49)
            {
              v50 = *(a1 + 360);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_http2_process_input";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 380;
              *&buf[22] = 2080;
              v74 = " ";
              v75 = 1024;
              v76 = v50;
              v77 = 2082;
              v78 = v48;
              _os_log_impl(&dword_181A37000, v44, v45, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v48);
            goto LABEL_79;
          }

          if (!v49)
          {
            goto LABEL_79;
          }

          v52 = *(a1 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 380;
          *&buf[22] = 2080;
          v74 = " ";
          v75 = 1024;
          v76 = v52;
          v47 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, no backtrace";
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v44 = gconnectionLogObj;
          v45 = type[0];
          if (!os_log_type_enabled(gconnectionLogObj, type[0]))
          {
            goto LABEL_79;
          }

          v51 = *(a1 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 380;
          *&buf[22] = 2080;
          v74 = " ";
          v75 = 1024;
          v76 = v51;
          v47 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, backtrace limit exceeded";
        }

LABEL_78:
        _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x26u);
        goto LABEL_79;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v44 = gconnectionLogObj;
      v45 = type[0];
      if (os_log_type_enabled(gconnectionLogObj, type[0]))
      {
        v46 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v74 = " ";
        v75 = 1024;
        v76 = v46;
        v47 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback";
        goto LABEL_78;
      }
    }

LABEL_79:
    if (v43)
    {
      free(v43);
    }
  }

LABEL_81:
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v55 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 360);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 380;
      *&buf[22] = 2080;
      v74 = " ";
      v75 = 1024;
      v76 = v56;
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> about to allow http2 to send pending data", buf, 0x26u);
    }
  }

  *(a1 + 377) &= ~0x200u;
  nw_http2_session_send(a1);
}

uint64_t ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = *nw_hash_node_get_extra(a2);
  if (!v4)
  {
    v9 = *(a1 + 32);
    if (v9 && (*(v9 + 379) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = *(a1 + 32);
    v11 = (v10 + 380);
    v12 = v10 == 0;
    v13 = *(v10 + 360);
    if (v12)
    {
      v11 = "";
    }

    *buf = 136447234;
    v68 = "nw_protocol_http2_process_connected_block_invoke";
    if (v12)
    {
      v14 = "";
    }

    else
    {
      v14 = " ";
    }

    v69 = 2082;
    v70 = v11;
    v71 = 2080;
    v72 = v14;
    v73 = 1024;
    v74 = v13;
    v75 = 2048;
    *v76 = a2;
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra", buf, 48);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v15, &type, &v65))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_79;
      }

      v18 = *(a1 + 32);
      v19 = (v18 + 380);
      v20 = v18 == 0;
      if (!v18)
      {
        v19 = "";
      }

      v21 = *(v18 + 360);
      if (v20)
      {
        v22 = "";
      }

      else
      {
        v22 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v19;
      v71 = 2080;
      v72 = v22;
      v73 = 1024;
      v74 = v21;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra";
    }

    else if (v65 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      v25 = os_log_type_enabled(gconnectionLogObj, type);
      if (backtrace_string)
      {
        if (v25)
        {
          v26 = *(a1 + 32);
          v27 = (v26 + 380);
          v28 = v26 == 0;
          if (!v26)
          {
            v27 = "";
          }

          v29 = *(v26 + 360);
          if (v28)
          {
            v30 = "";
          }

          else
          {
            v30 = " ";
          }

          *buf = 136447490;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = v27;
          v71 = 2080;
          v72 = v30;
          v73 = 1024;
          v74 = v29;
          v75 = 2048;
          *v76 = a2;
          *&v76[8] = 2082;
          *&v76[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, dumping backtrace:%{public}s", buf, 0x3Au);
        }

        free(backtrace_string);
        goto LABEL_79;
      }

      if (!v25)
      {
LABEL_79:
        if (!v15)
        {
          return 1;
        }

        v53 = v15;
LABEL_90:
        free(v53);
        return 1;
      }

      v48 = *(a1 + 32);
      v49 = (v48 + 380);
      v50 = v48 == 0;
      if (!v48)
      {
        v49 = "";
      }

      v51 = *(v48 + 360);
      if (v50)
      {
        v52 = "";
      }

      else
      {
        v52 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v49;
      v71 = 2080;
      v72 = v52;
      v73 = 1024;
      v74 = v51;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, no backtrace";
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_79;
      }

      v39 = *(a1 + 32);
      v40 = (v39 + 380);
      v41 = v39 == 0;
      if (!v39)
      {
        v40 = "";
      }

      v42 = *(v39 + 360);
      if (v41)
      {
        v43 = "";
      }

      else
      {
        v43 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v40;
      v71 = 2080;
      v72 = v43;
      v73 = 1024;
      v74 = v42;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v16, v17, v23, buf, 0x30u);
    goto LABEL_79;
  }

  if ((*(v4 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v59 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v61 = *(v4 + 176);
      v60 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v60;
      v75 = 1024;
      *v76 = v61;
      *&v76[4] = 1024;
      *&v76[6] = v61;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> checking existing stream %d to see if waiting_for_connect", buf, 0x32u);
    }
  }

  if ((*(v4 + 188) & 8) != 0)
  {
    if ((*(v4 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v62 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(v4 + 176);
        v63 = *(v4 + 180);
        *buf = 136447490;
        v68 = "nw_protocol_http2_process_connected_block_invoke";
        v69 = 2082;
        v70 = (v4 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v63;
        v75 = 1024;
        *v76 = v64;
        *&v76[4] = 1024;
        *&v76[6] = v64;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> calling connect on waiting stream %d", buf, 0x32u);
      }
    }

    object = nw_hash_node_get_object(a2);
    if (object)
    {
      if (!nw_http2_stream_connect(*(a1 + 32), v4, object) && (*(v4 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v6 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v8 = *(v4 + 176);
          v7 = *(v4 + 180);
          *buf = 136447746;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = (v4 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v7;
          v75 = 1024;
          *v76 = v8;
          *&v76[4] = 1024;
          *&v76[6] = v8;
          *&v76[10] = 2048;
          *&v76[12] = v4;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> nw_http2_stream_connect failed for stream id %d (%p)", buf, 0x3Cu);
        }
      }

      return 1;
    }

    if ((*(v4 + 190) & 0x10) != 0)
    {
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = *(v4 + 176);
    v31 = *(v4 + 180);
    *buf = 136447490;
    v68 = "nw_protocol_http2_process_connected_block_invoke";
    v69 = 2082;
    v70 = (v4 + 191);
    v71 = 2080;
    v72 = " ";
    v73 = 1024;
    v74 = v31;
    v75 = 1024;
    *v76 = v32;
    *&v76[4] = 2048;
    *&v76[6] = a2;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object", buf, 54);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v33, &type, &v65))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_88;
      }

      v37 = *(v4 + 176);
      v36 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v36;
      v75 = 1024;
      *v76 = v37;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object";
    }

    else if (v65 == 1)
    {
      v44 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      v45 = os_log_type_enabled(gconnectionLogObj, type);
      if (v44)
      {
        if (v45)
        {
          v47 = *(v4 + 176);
          v46 = *(v4 + 180);
          *buf = 136447746;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = (v4 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v46;
          v75 = 1024;
          *v76 = v47;
          *&v76[4] = 2048;
          *&v76[6] = a2;
          *&v76[14] = 2082;
          *&v76[16] = v44;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v44);
        goto LABEL_88;
      }

      if (!v45)
      {
LABEL_88:
        if (!v33)
        {
          return 1;
        }

        v53 = v33;
        goto LABEL_90;
      }

      v57 = *(v4 + 176);
      v56 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v56;
      v75 = 1024;
      *v76 = v57;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, no backtrace";
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_88;
      }

      v55 = *(v4 + 176);
      v54 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v54;
      v75 = 1024;
      *v76 = v55;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v34, v35, v38, buf, 0x36u);
    goto LABEL_88;
  }

  return 1;
}

BOOL nw_http2_stream_connect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_http2_stream_connect";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v22, &type, &v49))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v52 = "nw_http2_stream_connect";
      v25 = "%{public}s called with null http2";
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v32 = os_log_type_enabled(v23, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v52 = "nw_http2_stream_connect";
          v53 = 2082;
          v54 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_87:
        if (v22)
        {
          v46 = v22;
LABEL_100:
          free(v46);
          return a1 != 0;
        }

        return a1 != 0;
      }

      if (!v32)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v52 = "nw_http2_stream_connect";
      v25 = "%{public}s called with null http2, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v52 = "nw_http2_stream_connect";
      v25 = "%{public}s called with null http2, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_87;
  }

  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v28 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a2 + 176);
      v29 = *(a2 + 180);
      *buf = 136447746;
      v52 = "nw_http2_stream_connect";
      v53 = 2082;
      v54 = (a2 + 191);
      v55 = 2080;
      v56 = " ";
      v57 = 1024;
      v58 = v29;
      v59 = 1024;
      v60 = v30;
      v61 = 1024;
      v62 = v30;
      v63 = 2048;
      v64 = a2;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called for stream %d (%p)", buf, 0x3Cu);
    }
  }

  v6 = *(a2 + 188);
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 32))
    {
      v7 = mach_continuous_approximate_time();
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      *(a2 + 32) = v8;
      v6 = *(a2 + 188);
    }

    *(a2 + 188) = v6 & 0xFFF6 | 1;
    *(a2 + 190) |= 0x20u;
    v9 = *(a2 + 96);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke;
    v48[3] = &__block_descriptor_tmp_48_88109;
    v48[4] = a2;
    v48[5] = a1;
    nw_http_transaction_metadata_set_event_handler(v9, v48);
    if ((*(a2 + 190) & 8) != 0)
    {
      nw_http_transaction_metadata_set_first_on_connection(*(a2 + 96));
      nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(a1 + 256));
    }

    nw_http_transaction_metadata_set_connection_metadata(*(a2 + 96), *(a1 + 256));
    if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a2 + 176);
        v34 = *(a2 + 180);
        *buf = 136447490;
        v52 = "nw_http2_stream_connect";
        v53 = 2082;
        v54 = (a2 + 191);
        v55 = 2080;
        v56 = " ";
        v57 = 1024;
        v58 = v34;
        v59 = 1024;
        v60 = v35;
        v61 = 1024;
        v62 = v35;
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> connect complete for stream %d, calling connected", buf, 0x32u);
      }
    }

    v10 = *(a3 + 24);
    if (!v10 || (v11 = *(v10 + 40)) == 0)
    {
      v12 = __nwlog_obj();
      v13 = *(a3 + 16);
      if (!v13)
      {
        v13 = "invalid";
      }

      *buf = 136446466;
      v52 = "nw_http2_stream_connect";
      v53 = 2082;
      v54 = v13;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v49 = 0;
      if (__nwlog_fault(v14, &type, &v49))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (!os_log_type_enabled(v15, type))
          {
            goto LABEL_98;
          }

          v17 = *(a3 + 16);
          if (!v17)
          {
            v17 = "invalid";
          }

LABEL_23:
          *buf = 136446466;
          v52 = "nw_http2_stream_connect";
          v53 = 2082;
          v54 = v17;
          v18 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_97:
          _os_log_impl(&dword_181A37000, v15, v16, v18, buf, 0x16u);
          goto LABEL_98;
        }

        if (v49 == 1)
        {
          v39 = __nw_create_backtrace_string();
          v15 = __nwlog_obj();
          v16 = type;
          v40 = os_log_type_enabled(v15, type);
          if (v39)
          {
            if (v40)
            {
              v41 = "invalid";
              if (*(a3 + 16))
              {
                v41 = *(a3 + 16);
              }

              *buf = 136446722;
              v52 = "nw_http2_stream_connect";
              v53 = 2082;
              v54 = v41;
              v55 = 2082;
              v56 = v39;
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v39);
            goto LABEL_98;
          }

          if (!v40)
          {
            goto LABEL_98;
          }

          v47 = *(a3 + 16);
          if (!v47)
          {
            v47 = "invalid";
          }

LABEL_96:
          *buf = 136446466;
          v52 = "nw_http2_stream_connect";
          v53 = 2082;
          v54 = v47;
          v18 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
          goto LABEL_97;
        }

        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_98;
        }

        v45 = *(a3 + 16);
        if (!v45)
        {
          v45 = "invalid";
        }

LABEL_79:
        *buf = 136446466;
        v52 = "nw_http2_stream_connect";
        v53 = 2082;
        v54 = v45;
        v18 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_97;
      }

      goto LABEL_98;
    }

LABEL_28:
    v11(a3, a1);
    return a1 != 0;
  }

  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v36 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a2 + 176);
      v37 = *(a2 + 180);
      *buf = 136447490;
      v52 = "nw_http2_stream_connect";
      v53 = 2082;
      v54 = (a2 + 191);
      v55 = 2080;
      v56 = " ";
      v57 = 1024;
      v58 = v37;
      v59 = 1024;
      v60 = v38;
      v61 = 1024;
      v62 = v38;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> stream %d is already connected", buf, 0x32u);
    }
  }

  v19 = *(a3 + 24);
  if (v19)
  {
    v11 = *(v19 + 40);
    if (v11)
    {
      goto LABEL_28;
    }
  }

  v26 = __nwlog_obj();
  v27 = *(a3 + 16);
  if (!v27)
  {
    v27 = "invalid";
  }

  *buf = 136446466;
  v52 = "nw_http2_stream_connect";
  v53 = 2082;
  v54 = v27;
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v14, &type, &v49))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_98;
      }

      v17 = *(a3 + 16);
      if (!v17)
      {
        v17 = "invalid";
      }

      goto LABEL_23;
    }

    if (v49 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_98;
      }

      v45 = *(a3 + 16);
      if (!v45)
      {
        v45 = "invalid";
      }

      goto LABEL_79;
    }

    v42 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v43 = os_log_type_enabled(v15, type);
    if (v42)
    {
      if (v43)
      {
        v44 = "invalid";
        if (*(a3 + 16))
        {
          v44 = *(a3 + 16);
        }

        *buf = 136446722;
        v52 = "nw_http2_stream_connect";
        v53 = 2082;
        v54 = v44;
        v55 = 2082;
        v56 = v42;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v42);
      if (v14)
      {
        goto LABEL_99;
      }

      return a1 != 0;
    }

    if (v43)
    {
      v47 = *(a3 + 16);
      if (!v47)
      {
        v47 = "invalid";
      }

      goto LABEL_96;
    }
  }

LABEL_98:
  if (v14)
  {
LABEL_99:
    v46 = v14;
    goto LABEL_100;
  }

  return a1 != 0;
}

void nw_protocol_plugins_connected(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_plugins_connected";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v10, &type, &v26))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_connected";
      v13 = "%{public}s called with null protocol";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v21 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v29 = "nw_protocol_plugins_connected";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_65:
        if (!v10)
        {
          return;
        }

        goto LABEL_66;
      }

      if (!v21)
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_connected";
      v13 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_connected";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_64;
  }

  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_plugins_connected";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v10, &type, &v26))
    {
      goto LABEL_65;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v29 = "nw_protocol_plugins_connected";
        v13 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_64;
      }

      v22 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v23 = os_log_type_enabled(v11, type);
      if (!v22)
      {
        if (!v23)
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v29 = "nw_protocol_plugins_connected";
        v13 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_64;
      }

      if (v23)
      {
        *buf = 136446466;
        v29 = "nw_protocol_plugins_connected";
        v30 = 2082;
        v31 = v22;
        v24 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_49:
        _os_log_impl(&dword_181A37000, v11, v12, v24, buf, 0x16u);
      }

LABEL_50:
      free(v22);
      if (!v10)
      {
        return;
      }

LABEL_66:
      free(v10);
      return;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v29 = "nw_protocol_plugins_connected";
    v13 = "%{public}s called with null protocol->handle";
LABEL_64:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_65;
  }

  if (!a2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_plugins_handle_connected";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v10, &type, &v26))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_handle_connected";
      v13 = "%{public}s called with null other_protocol";
      goto LABEL_64;
    }

    if (v26 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_handle_connected";
      v13 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_64;
    }

    v22 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v25 = os_log_type_enabled(v11, type);
    if (!v22)
    {
      if (!v25)
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v29 = "nw_protocol_plugins_handle_connected";
      v13 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_64;
    }

    if (v25)
    {
      *buf = 136446466;
      v29 = "nw_protocol_plugins_handle_connected";
      v30 = 2082;
      v31 = v22;
      v24 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      identifier = a1->identifier;
      if (!identifier)
      {
        identifier = "invalid";
      }

      *buf = 136446722;
      v29 = "nw_protocol_plugins_handle_connected";
      v30 = 2080;
      v31 = identifier;
      v32 = 2048;
      v33 = a1;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
    }
  }

  v5 = handle[9];
  if (v5)
  {
    if (gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = a1->identifier;
        if (!v19)
        {
          v19 = "invalid";
        }

        *buf = 136446722;
        v29 = "nw_protocol_plugin_metadata_connected";
        v30 = 2048;
        v31 = a1;
        v32 = 2080;
        v33 = v19;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s got connected event", buf, 0x20u);
      }
    }

    v6 = *(v5 + 142);
    if ((v6 & 1) == 0)
    {
      v7 = v6 | 1;
      if ((*(v5 + 142) & 0x20) != 0)
      {
        *(v5 + 136) = 0;
        v7 = v6 & 0xC2 | 1;
      }

      *(v5 + 140) = 0;
      v6 = v7;
    }

    *(v5 + 142) = v6 & 0xEF;
  }

  v8 = handle[11];
  if (v8)
  {
    nw_protocol_plugin_retry_connected(v8, a1, a2);
  }

  else
  {
    nw_protocol_common_connected(a1, a2);
  }
}

uint64_t nw_flow_connect(nw_protocol *a1, nw_protocol *a2)
{
  handle = a1->handle;
  if (handle && (v3 = handle[20]) != 0)
  {
    return nw_endpoint_flow_connect(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_http_client_copy_info(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 32);
      if (a2 == 255)
      {
        result = nw_protocol_copy_info(v3);
        if (!result)
        {
          result = _nw_array_create();
        }

        if (result)
        {
          v5 = *(v2 + 472);
          if (v5)
          {
            v6 = result;
            _nw_array_append(result, v5);
            return v6;
          }
        }
      }

      else
      {

        return nw_protocol_copy_info(v3);
      }

      return result;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http_client_copy_info";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http_client", buf, 12);
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
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http_client_copy_info";
        v11 = "%{public}s called with null http_client";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http_client_copy_info";
        v11 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
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
        v20 = "nw_protocol_http_client_copy_info";
        v11 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http_client_copy_info";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_http_client_copy_info";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_40;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http_client_copy_info";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
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
        v20 = "nw_protocol_http_client_copy_info";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http_client_copy_info";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_29:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
    }

LABEL_30:
    free(backtrace_string);
    goto LABEL_40;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_http_client_copy_info";
    v11 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_40:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_http_connection_state_copy_info(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_http_connection_state_copy_info";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_protocol_http_connection_state_copy_info";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v6)
        {
          return 0;
        }

LABEL_55:
        free(v6);
        return 0;
      }

      if (!v13)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_53;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_http_connection_state_copy_info";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_connection_state", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_54;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v22 = "nw_protocol_http_connection_state_copy_info";
        v9 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
        goto LABEL_53;
      }

      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v22 = "nw_protocol_http_connection_state_copy_info";
        v9 = "%{public}s called with null http_connection_state, no backtrace";
        goto LABEL_53;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "nw_protocol_http_connection_state_copy_info";
        v23 = 2082;
        v24 = v14;
        v16 = "%{public}s called with null http_connection_state, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v7, v8, v16, buf, 0x16u);
      }

LABEL_37:
      free(v14);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_55;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    v22 = "nw_protocol_http_connection_state_copy_info";
    v9 = "%{public}s called with null http_connection_state";
LABEL_53:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_54;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_http_connection_state_copy_info";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null type", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null type";
      goto LABEL_53;
    }

    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null type, backtrace limit exceeded";
      goto LABEL_53;
    }

    v14 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!v14)
    {
      if (!v17)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v9 = "%{public}s called with null type, no backtrace";
      goto LABEL_53;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_http_connection_state_copy_info";
      v23 = 2082;
      v24 = v14;
      v16 = "%{public}s called with null type, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v22 = "nw_protocol_http_connection_state_copy_info";
        v23 = 2082;
        v24 = (v2 + 114);
        v25 = 2080;
        v26 = " ";
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scopy_info requires an output handler", buf, 0x20u);
      }
    }

    return 0;
  }

  return nw_protocol_common_copy_info(v3, a2);
}