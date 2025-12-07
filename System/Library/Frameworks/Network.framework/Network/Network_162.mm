uint64_t ___ZL40nw_masque_connection_pair_handle_headersP36NWConcrete_nw_masque_connection_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v85 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  v7 = *(a1 + 32);
  v8 = v85;
  v9 = v6;
  v86 = v8;
  v87 = v9;
  v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Prohibit-Interface"];
  if (![v8 caseInsensitiveCompare:?])
  {
    v82 = v7;
    v40 = [v9 componentsSeparatedByString:{@", "}];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *v101 = 136446722;
      v102 = "nw_masque_connection_pair_handle_prohibit_interface_header";
      v103 = 2112;
      v104 = v8;
      v105 = 2112;
      v106 = v40;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", v101, 0x20u);
    }

    v94 = 0u;
    v95 = 0u;
    *type = 0u;
    v93 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:type objects:buf count:16];
    if (v43)
    {
      *v88 = v7 + 266;
      v91 = v7 + 267;
      v44 = v7 + 270;
      v45 = v7 + 269;
      v46 = *v93;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v93 != v46)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*&type[8] + 8 * i);
          v49 = strcmp([v48 UTF8String], "wifi");
          v50 = v82 + 268;
          if (v49)
          {
            v51 = strcmp([v48 UTF8String], "cellular");
            v50 = v45;
            if (v51)
            {
              v52 = strcmp([v48 UTF8String], "wired");
              v50 = v44;
              if (v52)
              {
                v53 = strcmp([v48 UTF8String], "expensive");
                v50 = v91;
                if (v53)
                {
                  v54 = strcmp([v48 UTF8String], "constrained");
                  v50 = *v88;
                  if (v54)
                  {
                    continue;
                  }
                }
              }
            }
          }

          *v50 = 1;
        }

        v43 = [v42 countByEnumeratingWithState:type objects:buf count:16];
      }

      while (v43);
    }

    goto LABEL_59;
  }

  v10 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Require-Interface"];
  if (![v11 caseInsensitiveCompare:v13])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_require_interface_header";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v97 = v12;
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    if (!strcmp([v12 UTF8String], "wifi"))
    {
      v56 = 1;
    }

    else if (!strcmp([v12 UTF8String], "cellular"))
    {
      v56 = 2;
    }

    else
    {
      if (strcmp([v12 UTF8String], "wired"))
      {
LABEL_58:

        goto LABEL_59;
      }

      v56 = 3;
    }

    v10[64] = v56;
    goto LABEL_58;
  }

  v14 = *(a1 + 32);
  v15 = v11;
  v16 = v12;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Multipath"];
  if ([v15 caseInsensitiveCompare:v17])
  {

    v18 = *(a1 + 32);
    v19 = v15;
    v20 = v16;
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Client-Application"];
    if ([v19 caseInsensitiveCompare:v21])
    {

      v22 = *(a1 + 32);
      v23 = v19;
      v24 = v20;
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Priority"];
      if ([v23 caseInsensitiveCompare:v25])
      {

        v26 = *(a1 + 32);
        v27 = v23;
        v28 = v24;
        v81 = v26;
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Listener-Association"];
        if ([v27 caseInsensitiveCompare:v29])
        {
LABEL_17:

          goto LABEL_59;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_masque_connection_pair_handle_listener_association_header";
          *&buf[12] = 2112;
          *&buf[14] = v27;
          *&buf[22] = 2112;
          v97 = v28;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
        }

        v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
        if (!v31)
        {
LABEL_16:

          goto LABEL_17;
        }

        WeakRetained = objc_loadWeakRetained((*(v81 + 2) + 40));
        v33 = [v28 UTF8String];
        v34 = WeakRetained;
        v35 = v34;
        if (v34)
        {
          if (v33)
          {
            *type = 0;
            *&type[8] = type;
            *&v93 = 0x2020000000;
            WORD4(v93) = 0;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_masque_server_get_listener_association_port_block_invoke;
            v97 = &unk_1E6A3D8B8;
            v98 = v34;
            v99 = type;
            v100 = v33;
            v36 = _Block_copy(buf);
            os_unfair_lock_lock(v35 + 4);
            v36[2](v36);
            os_unfair_lock_unlock(v35 + 4);

            v37 = *(*&type[8] + 24);
            _Block_object_dispose(type, 8);
LABEL_13:

            v81[140] = v37;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = v81[140];
              *buf = 136446466;
              *&buf[4] = "nw_masque_connection_pair_handle_listener_association_header";
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s local port: %u", buf, 0x12u);
            }

            goto LABEL_16;
          }

          v72 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_get_listener_association_port";
          v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null key", buf, 12);

          type[0] = OS_LOG_TYPE_ERROR;
          v101[0] = 0;
          if (__nwlog_fault(v69, type, v101))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v70 = __nwlog_obj();
              v73 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null key", buf, 0xCu);
              }

LABEL_113:

              goto LABEL_114;
            }

            if (v101[0] != 1)
            {
              v70 = __nwlog_obj();
              v80 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v80, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_113;
            }

            backtrace_string = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v90 = type[0];
            v78 = os_log_type_enabled(v70, type[0]);
            if (!backtrace_string)
            {
              if (v78)
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v90, "%{public}s called with null key, no backtrace", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v78)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_server_get_listener_association_port";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v70, v90, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_101;
          }
        }

        else
        {
          v68 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_get_listener_association_port";
          v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null server", buf, 12);

          type[0] = OS_LOG_TYPE_ERROR;
          v101[0] = 0;
          if (__nwlog_fault(v69, type, v101))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v70 = __nwlog_obj();
              v71 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null server", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v101[0] != 1)
            {
              v70 = __nwlog_obj();
              v79 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_113;
            }

            backtrace_string = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v89 = type[0];
            v77 = os_log_type_enabled(v70, type[0]);
            if (!backtrace_string)
            {
              if (v77)
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v89, "%{public}s called with null server, no backtrace", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v77)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_server_get_listener_association_port";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v70, v89, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
            }

LABEL_101:

            free(backtrace_string);
          }
        }

LABEL_114:
        if (v69)
        {
          free(v69);
        }

        v37 = 0;
        goto LABEL_13;
      }

      if (strstr([v24 UTF8String], "tc=video"))
      {
        v66 = 700;
      }

      else if (strstr([v24 UTF8String], "tc=voice"))
      {
        v66 = 800;
      }

      else if (strstr([v24 UTF8String], "tc=oam"))
      {
        v66 = 400;
      }

      else if (strstr([v24 UTF8String], "tc=best-effort"))
      {
        v66 = 0;
      }

      else if (strstr([v24 UTF8String], "tc=background-user"))
      {
        v66 = 200;
      }

      else if (strstr([v24 UTF8String], "tc=background-system"))
      {
        v66 = 100;
      }

      else if (strstr([v24 UTF8String], "tc=responsive-data"))
      {
        v66 = 300;
      }

      else if (strstr([v24 UTF8String], "tc=responsive-av"))
      {
        v66 = 600;
      }

      else if (strstr([v24 UTF8String], "tc=av-streaming"))
      {
        v66 = 500;
      }

      else
      {
        if (!strstr([v24 UTF8String], "tc=network-control"))
        {
LABEL_89:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v74 = gLogObj;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v75 = v22[63];
            *buf = 136446978;
            *&buf[4] = "nw_masque_connection_pair_handle_priority_header";
            *&buf[12] = 2112;
            *&buf[14] = v23;
            *&buf[22] = 2112;
            v97 = v24;
            LOWORD(v98) = 1024;
            *(&v98 + 2) = v75;
            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@  traffic class:%u", buf, 0x26u);
          }

          goto LABEL_59;
        }

        v66 = 900;
      }

      v22[63] = v66;
      goto LABEL_89;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_client_application_header";
      *&buf[12] = 2112;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      v97 = v20;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    v65 = v18[34];
    v18[34] = v20;
  }

  else
  {
    v83 = v14;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_multipath_header";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v97 = v16;
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    if (strstr([v16 UTF8String], "interactive"))
    {
      v83[65] = 2;
    }

    v58 = [v16 componentsSeparatedByString:@"port="];
    if ([v58 count] >= 2)
    {
      v59 = [v58 objectAtIndex:1];
      v60 = [v59 componentsSeparatedByString:{@", "}];

      v61 = [v60 objectAtIndex:0];
      *(v83 + 132) = [v61 integerValue];

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v62 = gLogObj;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(v83 + 132);
        *buf = 136446466;
        *&buf[4] = "nw_masque_connection_pair_handle_multipath_header";
        *&buf[12] = 1024;
        *&buf[14] = v63;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s port: %u", buf, 0x12u);
      }
    }
  }

LABEL_59:

  return 1;
}

void sub_18255C0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(*(a1 + 32) + 16) + 88));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_3;
  v3[3] = &unk_1E6A30870;
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v7 = *(a1 + 96);
  v6 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void nw_masque_connection_pair_setup_outer_connection_inner(void *a1, void *a2, int a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v27, &type, &v45))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v27)
        {
          goto LABEL_35;
        }

LABEL_70:
        free(v27);
        goto LABEL_35;
      }

      if (v34)
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (v8)
  {
    v11 = *(v7 + 2);
    if (*(v11 + 112) != 255)
    {
      *(v7 + 219) = a3 != 6;
      v12 = a3 != 6 && a3 != 17;
      v13 = *(v11 + 80);
      if (v13)
      {
        nw_parameters_require_interface(v9, v13);
      }

      nw_parameters_set_proxy_applied(v10);
      if (*(v7 + 268) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_wifi);
      }

      if (*(v7 + 270) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_wired);
      }

      if (*(v7 + 269) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_cellular);
      }

      if (*(v7 + 267) == 1)
      {
        nw_parameters_set_prohibit_expensive(v10, 1);
      }

      if (*(v7 + 266) == 1)
      {
        nw_parameters_set_prohibit_constrained(v10, 1);
      }

      v14 = *(v7 + 64);
      if (v14)
      {
        nw_parameters_set_required_interface_type(v10, v14);
      }

      if (v7[140])
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v7[140]);
        nw_parameters_set_local_endpoint(v10, host_with_numeric_port);
        nw_parameters_set_reuse_local_address(v10, 1);
      }

      nw_parameters_set_traffic_class(v10, *(v7 + 63));
      nw_connection_reset_traffic_class(*(*(v7 + 2) + 48), *(v7 + 63));
      v16 = *(v7 + 34);
      if (v16)
      {
        nw_parameters_set_source_application_by_bundle_id_internal(v10, [v16 UTF8String], 1);
      }

      v17 = *(v7 + 65);
      if (v17)
      {
        nw_parameters_set_multipath_service(v10, v17);
      }

      v18 = v7[132];
      if (v18)
      {
        v19 = v8;
        _nw_endpoint_set_alternate_port(v19, v18);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(v7 + 2);
        *buf = 136446978;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        v49 = 2114;
        v50 = v21;
        v51 = 2112;
        v52 = v8;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}@ creating new outer connection to %@ with parameters %@", buf, 0x2Au);
      }

      v22 = nw_connection_create(v8, v10);
      v23 = *(v7 + 6);
      *(v7 + 6) = v22;

      nw_connection_set_queue(*(v7 + 6), *(*(v7 + 2) + 32));
      v24 = *(v7 + 6);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke;
      handler[3] = &unk_1E6A308C0;
      v25 = v7;
      v41 = v25;
      v43 = a3;
      v42 = v8;
      v44 = v12;
      nw_connection_set_state_changed_handler(v24, handler);
      if (*(v7 + 219) == 1)
      {
        nw_masque_connection_pair_read_outer_datagrams(v25);
      }

      else
      {
        nw_masque_connection_pair_read_outer(v25);
      }

      nw_connection_start(*(v7 + 6));
      nw_masque_connection_pair_read_inner(v25);
    }

    goto LABEL_35;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (!__nwlog_fault(v27, &type, &v45))
  {
    goto LABEL_69;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v28 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (v45 != 1)
  {
    v28 = __nwlog_obj();
    v39 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v39, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_68;
  }

  v35 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v36 = type;
  v37 = os_log_type_enabled(v28, type);
  if (!v35)
  {
    if (v37)
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (v37)
  {
    *buf = 136446466;
    v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
    v49 = 2082;
    v50 = v35;
    _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v35);
  if (v27)
  {
    goto LABEL_70;
  }

LABEL_35:
}

void ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_1E6A2F020[a2];
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    v10 = *(v8 + 16);
    *buf = 136446978;
    *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v119 = v9;
    *v120 = 2080;
    *&v120[2] = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ outer connection to %@ has transitioned to %s", buf, 0x2Au);
  }

  v11 = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v11 processName];
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    v13 = *(a1 + 32);
    if (*(v13 + 217))
    {
      if (*(v13 + 218))
      {
LABEL_64:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v119 = __Block_byref_object_copy__271;
        *v120 = __Block_byref_object_dispose__272;
        *&v120[8] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_299;
        aBlock[3] = &unk_1E6A3D738;
        v114 = buf;
        v113 = v13;
        v73 = _Block_copy(aBlock);
        os_unfair_lock_lock((v13 + 8));
        v73[2](v73);
        os_unfair_lock_unlock((v13 + 8));

        v74 = *(*&buf[8] + 40);
        if (v74)
        {
          (*(v74 + 16))(v74, a2, v5);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_67;
      }

      *(v13 + 218) = 1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      well_known = gLogObj;
      if (os_log_type_enabled(well_known, OS_LOG_TYPE_INFO))
      {
        v15 = "IP";
        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        if (v16 == 6)
        {
          v15 = "TCP";
        }

        v19 = *(v17 + 16);
        if (v16 == 17)
        {
          v15 = "UDP";
        }

        v20 = *(v17 + 224);
        *buf = 136447234;
        *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke_2";
        *&buf[12] = 2114;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        v119 = v15;
        *v120 = 2112;
        *&v120[2] = v18;
        *&v120[10] = 2112;
        *&v120[12] = v20;
        _os_log_impl(&dword_181A37000, well_known, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Closed %s connection to %@ (for %@)\n", buf, 0x34u);
      }

LABEL_63:

      v13 = *(a1 + 32);
      goto LABEL_64;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = "IP";
      v36 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = *(a1 + 40);
      if (v36 == 6)
      {
        v35 = "TCP";
      }

      v39 = *(v37 + 16);
      v40 = *(v37 + 224);
      if (v36 == 17)
      {
        v35 = "UDP";
      }

      *buf = 136447490;
      *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v39;
      *&buf[22] = 2080;
      v119 = v35;
      *v120 = 2112;
      *&v120[2] = v38;
      *&v120[10] = 2112;
      *&v120[12] = v5;
      v121 = 2112;
      v122 = v40;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Failed %s connection to %@ with error %@ (for %@)\n", buf, 0x3Eu);
    }

    *(*(a1 + 32) + 217) = 1;
    if (v5)
    {
      v41 = v5;
      v42 = v41[2] == 2;

      if (v42)
      {
        v43 = v41;
        v44 = v43[3] == -65554;

        if (v44)
        {
          well_known = _nw_http_response_create_well_known();
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=dns_error"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
LABEL_61:

            goto LABEL_62;
          }

          goto LABEL_62;
        }
      }

      v61 = v41;
      v62 = v41[2] == 1;

      if (v62)
      {
        v63 = v61;
        v64 = v63[3] == 61;

        if (v64)
        {
          well_known = _nw_http_response_create_well_known();
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=connection_refused"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
            goto LABEL_61;
          }

LABEL_62:
          metadata_for_response = nw_http_create_metadata_for_response(well_known);
          v70 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v70, metadata_for_response);
          v71 = *(a1 + 32);
          v72 = *(v71[2] + 48);
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_297;
          completion[3] = &unk_1E6A33F88;
          v116 = v71;
          nw_connection_send(v72, 0, v70, 1, completion);

          goto LABEL_63;
        }
      }

      v65 = v61;
      v66 = v41[2] == 1;

      if (v66)
      {
        v67 = v65;
        v68 = v67[3] == 60;

        if (v68)
        {
          well_known = _nw_http_response_create_well_known();
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=connection_timeout"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
            goto LABEL_61;
          }

          goto LABEL_62;
        }
      }
    }

    well_known = _nw_http_response_create_well_known();
    if ((*(*(a1 + 32) + 220) & 1) == 0)
    {
      v45 = [v12 mutableCopy];
      [v45 appendString:@"; error=destination_unavailable"];
      nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (a2 != 1)
  {
    if (a2 != 3 || (*(*(a1 + 32) + 217) & 1) != 0)
    {
      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = "IP";
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      if (v23 == 6)
      {
        v22 = "TCP";
      }

      v26 = *(v24 + 16);
      if (v23 == 17)
      {
        v22 = "UDP";
      }

      v27 = *(v24 + 224);
      *buf = 136447234;
      *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2080;
      v119 = v22;
      *v120 = 2112;
      *&v120[2] = v25;
      *&v120[10] = 2112;
      *&v120[12] = v27;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Opened %s connection to %@ (for %@)\n", buf, 0x34u);
    }

    *(*(a1 + 32) + 217) = 1;
    v28 = *(a1 + 32);
    if (*(v28 + 240))
    {
      if (*(v28 + 248) == 1)
      {
        v29 = dispatch_data_create("hello", 5uLL, 0, 0);
        v30 = _nw_http_response_create_well_known();
        nw_http_fields_append(v30, "Capsule-Protocol", "?1");
        if (*(a1 + 48) == 17)
        {
          v31 = *(a1 + 32);
          if (*(v31 + 178))
          {
            nw_http_fields_append(v30, "Datagram-Flow-Id", v31 + 178);
            v31 = *(a1 + 32);
          }

          v33 = *(v31 + 116);
          v32 = v31 + 116;
          if (v33)
          {
            nw_http_fields_append(v30, "Client-Connection-Id", v32);
          }

          nw_http_fields_append(v30, "Proxy-QUIC-Forwarding", "?1");
        }

LABEL_84:
        protocol_metadata = nw_http_create_metadata_for_response(v30);
        v85 = nw_content_context_create("response");
        nw_content_context_set_metadata_for_protocol(v85, protocol_metadata);
        nw_connection_send(*(*(*(a1 + 32) + 16) + 48), v29, v85, *(*(a1 + 32) + 219), &__block_literal_global_24512);
        objc_storeStrong((*(a1 + 32) + 56), v85);
        v86 = *(a1 + 32);
        if (*(v86 + 240) && (*(v86 + 248) & 1) == 0)
        {
          v87 = *(*(v86 + 16) + 48);
          if (nw_protocol_copy_http_connection_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
          }

          v88 = nw_protocol_copy_http_connection_definition_definition;
          v89 = nw_connection_copy_protocol_metadata(v87, v88);

          nw_http_connection_metadata_send_certificate(v89, *(*(a1 + 32) + 240));
        }

        if (*(a1 + 49) != 1)
        {
          goto LABEL_114;
        }

        v106 = nw_connection_copy_connected_local_endpoint(*(*(a1 + 32) + 48));
        v105 = nw_connection_copy_connected_remote_endpoint(*(*(a1 + 32) + 48));
        memset(buf, 0, sizeof(buf));
        LODWORD(v119) = 0;
        if (nw_endpoint_fillout_v4v6_address(v106, buf))
        {
          if (buf[1] == 30)
          {
            v90 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v123[0] = 0;
            [v90 appendBytes:v123 length:1];
            v117 = 6;
            [v90 appendBytes:&v117 length:1];
            [v90 appendBytes:&buf[8] length:16];
            v109 = 0x80;
            [v90 appendBytes:&v109 length:1];
            if (v90)
            {
              goto LABEL_94;
            }

            goto LABEL_97;
          }

          if (buf[1] == 2)
          {
            v90 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v123[0] = 0;
            [v90 appendBytes:v123 length:1];
            v117 = 4;
            [v90 appendBytes:&v117 length:1];
            [v90 appendBytes:&buf[4] length:4];
            v109 = 32;
            [v90 appendBytes:&v109 length:1];
            if (v90)
            {
LABEL_94:
              v107 = [v90 _createDispatchData];
LABEL_98:

LABEL_99:
              memset(v123, 0, sizeof(v123));
              LODWORD(v124) = 0;
              if (nw_endpoint_fillout_v4v6_address(v105, v123))
              {
                if (v123[1] == 30)
                {
                  v91 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  v117 = 6;
                  [v91 appendBytes:&v117 length:1];
                  [v91 appendBytes:&v123[8] length:16];
                  [v91 appendBytes:&v123[8] length:16];
                  v109 = *(a1 + 48);
                  [v91 appendBytes:&v109 length:1];
                  if (v91)
                  {
LABEL_106:
                    v92 = [v91 _createDispatchData];
LABEL_108:

                    goto LABEL_109;
                  }

LABEL_107:
                  v92 = 0;
                  goto LABEL_108;
                }

                if (v123[1] == 2)
                {
                  v91 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  v117 = 4;
                  [v91 appendBytes:&v117 length:1];
                  [v91 appendBytes:&v123[4] length:4];
                  [v91 appendBytes:&v123[4] length:4];
                  v109 = *(a1 + 48);
                  [v91 appendBytes:&v109 length:1];
                  if (v91)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_107;
                }
              }

              v92 = 0;
LABEL_109:
              if (v107)
              {
                v93 = nw_content_context_create("assign address");
                metadata_for_capsule = nw_http_create_metadata_for_capsule(1, v107);
                nw_content_context_set_metadata_for_protocol(v93, metadata_for_capsule);
                nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v93, 1, &__block_literal_global_24512);
              }

              if (v92)
              {
                v95 = nw_content_context_create("advertise route");
                v96 = nw_http_create_metadata_for_capsule(3, v92);
                nw_content_context_set_metadata_for_protocol(v95, v96);
                nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v95, 1, &__block_literal_global_24512);
              }

LABEL_114:
LABEL_67:
              nw_masque_connection_pair_cancel_waiting_timer(*(a1 + 32));
              goto LABEL_68;
            }

LABEL_97:
            v107 = 0;
            goto LABEL_98;
          }
        }

        v107 = 0;
        goto LABEL_99;
      }

      v84 = _nw_http_response_create_well_known();
      nw_http_fields_append(v84, "Capsule-Protocol", "?1");
      v80 = [v12 mutableCopy];
      [v80 appendString:@"; error=resource_uses_reverse_proxy"];
      nw_http_fields_append(v84, "Proxy-Status", [v80 UTF8String]);
      v30 = v84;
    }

    else
    {
      v75 = _nw_http_response_create_well_known();
      v30 = v75;
      if (*(a1 + 48) != 6)
      {
        nw_http_fields_append(v75, "Capsule-Protocol", "?1");
        if (*(a1 + 48) == 17)
        {
          v76 = *(a1 + 32);
          if (*(v76 + 178))
          {
            nw_http_fields_append(v30, "Datagram-Flow-Id", v76 + 178);
            v76 = *(a1 + 32);
          }

          v78 = *(v76 + 116);
          v77 = v76 + 116;
          if (v78)
          {
            nw_http_fields_append(v30, "Client-Connection-Id", v77);
          }

          nw_http_fields_append(v30, "Proxy-QUIC-Forwarding", "?1");
        }
      }

      v79 = *(a1 + 32);
      if (*(v79 + 220))
      {
        goto LABEL_83;
      }

      v80 = nw_connection_copy_connected_remote_endpoint(*(v79 + 48));
      if (v80)
      {
        v81 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v12];
        [v81 appendFormat:@"; next-hop=%@", v80];
        v82 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:&stru_1EEFDE910];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_312;
        v110[3] = &unk_1E6A3A500;
        v83 = v82;
        v111 = v83;
        nw_endpoint_enumerate_cnames(v80, v110);
        if ([v83 length])
        {
          [v81 appendFormat:@"; next-hop-aliases=%@", v83];
        }

        nw_http_fields_append(v30, "Proxy-Status", [v81 UTF8String]);
      }
    }

LABEL_83:
    v29 = 0;
    goto LABEL_84;
  }

  v46 = *(a1 + 32);
  if (!v46)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
    v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null pair", buf, 12);

    v123[0] = 16;
    v117 = 0;
    if (__nwlog_fault(v98, v123, &v117))
    {
      if (v123[0] == 17)
      {
        v99 = __nwlog_obj();
        v100 = v123[0];
        if (os_log_type_enabled(v99, v123[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null pair", buf, 0xCu);
        }
      }

      else if (v117 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v102 = v123[0];
        v103 = os_log_type_enabled(v99, v123[0]);
        if (backtrace_string)
        {
          if (v103)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_131;
        }

        if (v103)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null pair, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v104 = v123[0];
        if (os_log_type_enabled(v99, v123[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v104, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_131:
    if (v98)
    {
      free(v98);
    }

    v46 = 0;
    goto LABEL_50;
  }

  if ((v46[218] & 1) == 0 && *(v46 + 6) && !*(v46 + 36))
  {
    v47 = v46;
    v48 = v46 + 16;
    v49 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(v46 + 2) + 32));
    v50 = *(v48 + 34);
    *(v48 + 34) = v49;

    v51 = *v48;
    v52 = v47[6];
    v53 = *(v48 + 34);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL45nw_masque_connection_pair_start_waiting_timerP36NWConcrete_nw_masque_connection_pair_block_invoke;
    v119 = &unk_1E6A3D760;
    v54 = v51;
    *v120 = v54;
    v55 = v52;
    *&v120[8] = v55;
    dispatch_source_set_event_handler(v53, buf);
    v56 = *(v48 + 34);
    v57 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v56, v57, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    dispatch_resume(*(v48 + 34));
    v58 = __nwlog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = v47[2];
      v60 = v47[6];
      *v123 = 136446722;
      *&v123[4] = "nw_masque_connection_pair_start_waiting_timer";
      *&v123[12] = 2114;
      *&v123[14] = v59;
      *&v123[22] = 2112;
      v124 = v60;
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}@ starting wait timer for %@", v123, 0x20u);
    }

    v46 = v47;
  }

LABEL_50:

LABEL_68:
}

void nw_masque_connection_pair_read_outer_datagrams(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_outer_datagrams";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!*(*(v1 + 2) + 48))
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer_datagrams";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v3 = *(v1 + 6);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null pair->mcp_outer_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer_datagrams";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A30938;
  v24 = v1;
  nw_connection_read_multiple(v3, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void nw_masque_connection_pair_read_outer(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_outer";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!*(*(v1 + 2) + 48))
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v3 = *(v1 + 6);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null pair->mcp_outer_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void nw_masque_connection_pair_read_inner(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null pair", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_inner";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v3 = *(*(v1 + 2) + 48);
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v1 + 6))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null pair->mcp_outer_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, void *a2, void *a3, _BOOL4 a4, void *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = v9;
  v12 = v10;
  v72 = a5;
  context = v12;
  if (v11)
  {
    size = dispatch_data_get_size(v11);
    if (!v12 || size)
    {
      goto LABEL_20;
    }
  }

  else if (!v12)
  {
    goto LABEL_20;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v14 = nw_protocol_copy_http_definition_http_definition;
  v15 = nw_content_context_copy_protocol_metadata(v12, v14);

  if (v15 && nw_http_metadata_is_capsule(v15))
  {
    capsule_type = nw_http_metadata_get_capsule_type(v15);
    v17 = nw_http_metadata_copy_capsule_data(v15);
    if (gLogDatapath == 1)
    {
      v57 = __nwlog_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(*(a1 + 32) + 16);
        *buf = 136446978;
        *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v58;
        *&buf[22] = 2048;
        v86 = capsule_type;
        v87 = 2112;
        v88 = v17;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received capsule type %llx with data %@", buf, 0x2Au);
      }
    }

    if (capsule_type >> 1 == 8385024)
    {
      if (capsule_type == 16770049)
      {
        v18 = 16770051;
      }

      else
      {
        v18 = 16770050;
      }

      LOBYTE(__n) = 0;
      nw_dispatch_data_copyout_from_offset(v17, &__n, 1, 0);
      memset(__src, 0, 20);
      nw_dispatch_data_copyout_from_offset(v17, __src, __n, 1);
      v19 = objc_alloc(MEMORY[0x1E695DEF0]);
      v20 = [v19 initWithBytes:__src length:__n];
      v70 = v18;
      if (gLogDatapath == 1)
      {
        v59 = __nwlog_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(*(a1 + 32) + 16);
          v61 = "target";
          if (capsule_type == 16770048)
          {
            v61 = "client";
          }

          *buf = 136446978;
          *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v60;
          *&buf[22] = 2082;
          v86 = v61;
          v87 = 2112;
          v88 = v20;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received %{public}s CID %@, acking", buf, 0x2Au);
        }
      }

      v21 = __n;
      v22 = *(a1 + 32);
      if (capsule_type == 16770048)
      {
        *(v22 + 72) = __n;
        memcpy((*(a1 + 32) + 74), __src, v21);
        BYTE2(v84) = 0;
        nw_dispatch_data_copyout_from_offset(v17, &v84 + 2, 1, v21 + 1);
        memset(buf, 0, 20);
        nw_dispatch_data_copyout_from_offset(v17, buf, BYTE2(v84), __n + 2);
        *(*(a1 + 32) + 94) = BYTE2(v84);
        memcpy((*(a1 + 32) + 96), buf, *(*(a1 + 32) + 94));
        if (v20)
        {
          v23 = [v20 _createDispatchData];
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        *(v22 + 136) = __n;
        memcpy((*(a1 + 32) + 138), __src, v21);
        if (gLogDatapath == 1)
        {
          v68 = __nwlog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v69 = *(*(a1 + 32) + 16);
            *buf = 136446466;
            *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v69;
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Setting up forwarded mode connections", buf, 0x16u);
          }
        }

        if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
        }

        if (nw_protocol_demux_copy_definition::definition)
        {
          v31 = os_retain(nw_protocol_demux_copy_definition::definition);
          options = nw_protocol_create_options(v31);
          if (v31)
          {
            os_release(v31);
          }
        }

        else
        {
          options = nw_protocol_create_options(0);
        }

        nw_demux_options_add_pattern(options, 1, *(*(a1 + 32) + 136), *(a1 + 32) + 138, 0);
        nw_masque_connection_pair_setup_inner_direct_connections(*(a1 + 32), options);
        v45 = objc_alloc_init(MEMORY[0x1E695DF88]);
        [v45 appendBytes:&__n length:1];
        [v45 appendBytes:__src length:__n];
        [v45 appendBytes:&__n length:1];
        [v45 appendBytes:__src length:__n];
        buf[0] = 0;
        [v45 appendBytes:buf length:1];
        if (v45)
        {
          v23 = [v45 _createDispatchData];
        }

        else
        {
          v23 = 0;
        }
      }

      if (v23)
      {
        v46 = nw_content_context_create("ack cid");
        metadata_for_capsule = nw_http_create_metadata_for_capsule(v70, v23);
        nw_content_context_set_metadata_for_protocol(v46, metadata_for_capsule);
        nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v46, 1, &__block_literal_global_24512);
      }
    }

    else if (capsule_type == 16770304)
    {
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v30 = os_retain(nw_protocol_demux_copy_definition::definition);
        v71 = nw_protocol_create_options(v30);
        if (v30)
        {
          os_release(v30);
        }
      }

      else
      {
        v71 = nw_protocol_create_options(0);
      }

      if (!*(*(a1 + 32) + 192))
      {
        v33 = nw_demux_create_options();
        v34 = *(a1 + 32);
        v35 = *(v34 + 192);
        *(v34 + 192) = v33;
      }

      v36 = dispatch_data_get_size(v17);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v86 = 0;
      if (v36)
      {
        v37 = v36;
        for (i = 0; i < v37; i = *(*&buf[8] + 24))
        {
          v84 = 0;
          nw_dispatch_data_copyout_from_offset(v17, &v84 + 2, 2, i);
          v41 = *(*&buf[8] + 24) + 2;
          *(*&buf[8] + 24) = v41;
          nw_dispatch_data_copyout_from_offset(v17, &v84, 2, v41);
          *(*&buf[8] + 24) += 2;
          *__src = 0;
          *&__src[8] = __src;
          *&__src[16] = 0x2020000000;
          v92 = 0;
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_339;
          v83[3] = &unk_1E6A30988;
          v83[4] = buf;
          v83[5] = __src;
          dispatch_data_apply(v17, v83);
          v42 = *(*&buf[8] + 24) + HIWORD(v84);
          *(*&buf[8] + 24) = v42;
          v82 = 0;
          nw_dispatch_data_copyout_from_offset(v17, &v82, 1, v42);
          ++*(*&buf[8] + 24);
          __n = 0;
          p_n = &__n;
          v80 = 0x2020000000;
          v81 = 0;
          if (v82)
          {
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_2;
            applier[3] = &unk_1E6A30988;
            applier[4] = buf;
            applier[5] = &__n;
            dispatch_data_apply(v17, applier);
            v39 = HIWORD(v84);
            *(*&buf[8] + 24) += HIWORD(v84);
            v40 = p_n[3];
          }

          else
          {
            v40 = 0;
            v39 = HIWORD(v84);
          }

          nw_demux_options_add_pattern(*(*(a1 + 32) + 192), v84, v39, *(*&__src[8] + 24), v40);
          nw_demux_options_add_pattern(v71, v84, HIWORD(v84), *(*&__src[8] + 24), p_n[3]);
          _Block_object_dispose(&__n, 8);
          _Block_object_dispose(__src, 8);
        }
      }

      if (gLogDatapath == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = *(*(a1 + 32) + 16);
          *__src = 136446466;
          *&__src[4] = "nw_masque_connection_pair_read_inner_block_invoke_3";
          *&__src[12] = 2114;
          *&__src[14] = v65;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Setting up forwarded mode connections", __src, 0x16u);
        }
      }

      nw_masque_connection_pair_setup_inner_direct_connections(*(a1 + 32), v71);
      if (gLogDatapath == 1)
      {
        v66 = __nwlog_obj();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(*(a1 + 32) + 16);
          *__src = 136446466;
          *&__src[4] = "nw_masque_connection_pair_read_inner_block_invoke";
          *&__src[12] = 2114;
          *&__src[14] = v67;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received demux patterns, acking", __src, 0x16u);
        }
      }

      v43 = nw_content_context_create("ack pattern");
      v44 = nw_http_create_metadata_for_capsule(16770305, v17);
      nw_content_context_set_metadata_for_protocol(v43, v44);
      nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v43, 1, &__block_literal_global_24512);

      _Block_object_dispose(buf, 8);
    }

    nw_masque_connection_pair_read_inner(*(a1 + 32));

    goto LABEL_75;
  }

LABEL_20:
  if (*(*(a1 + 32) + 48))
  {
    if (!v72 || (v24 = v72, v25 = v24[3], v24, v25 == 40))
    {
      v26 = 0;
      if (!context || !a4)
      {
        goto LABEL_70;
      }

      v27 = context;
      if (v27 != &__block_literal_global_44658 && v27 != &__block_literal_global_10_44685)
      {
        if (v27 == &__block_literal_global_6_44667 || v27 == &__block_literal_global_8_44676)
        {
        }

        else
        {
          v28 = BYTE6(v27[14].isa);

          if ((v28 & 1) == 0)
          {
LABEL_30:
            v26 = 0;
LABEL_70:
            if (gLogDatapath == 1)
            {
              v52 = __nwlog_obj();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = v11;
                v54 = *(*(a1 + 32) + 16);
                v55 = v53;
                if (v53)
                {
                  v56 = dispatch_data_get_size(v53);
                }

                else
                {
                  v56 = 0;
                }

                v62 = "";
                *buf = 136447234;
                v63 = ", complete";
                *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
                if (!a4)
                {
                  v63 = "";
                }

                *&buf[12] = 2114;
                *&buf[14] = v54;
                *&buf[22] = 2048;
                v86 = v56;
                v87 = 2080;
                if (v26)
                {
                  v62 = ", final";
                }

                v88 = v63;
                v89 = 2080;
                v90 = v62;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes to target%s%s", buf, 0x34u);
                v11 = v55;
              }
            }

            dispatch_group_enter(*(*(a1 + 32) + 232));
            v48 = *(a1 + 32);
            v49 = v48[6];
            v50 = v26 & 1;
            if (v50)
            {
              v51 = &__block_literal_global_6_44667;
            }

            else
            {
              v51 = &__block_literal_global_44658;
            }

            completion[0] = MEMORY[0x1E69E9820];
            completion[1] = 3221225472;
            completion[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_342;
            completion[3] = &unk_1E6A39610;
            v75 = v48;
            v76 = v50;
            nw_connection_send(v49, v11, v51, a4, completion);
            v15 = v75;
            goto LABEL_75;
          }
        }

        v26 = *(*(a1 + 32) + 219) ^ 1;
        goto LABEL_70;
      }

      goto LABEL_30;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v29 = *(*(a1 + 32) + 16);
    *buf = 136446722;
    *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    v86 = v72;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
  }

LABEL_75:
}

BOOL ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_339(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

BOOL ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

void ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_342(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_inner_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  if ((*(a1 + 40) & 1) == 0)
  {
    nw_masque_connection_pair_read_inner(*(a1 + 32));
  }
}

void ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, void *a2, void *a3, _BOOL4 a4, void *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  v13 = *(a1 + 32);
  if (*(v13[2] + 48))
  {
    if (v13[6])
    {
      if (v13[7])
      {
        if (!v11 || (v14 = v11, v15 = v14[3], v14, v15 == 40))
        {
          if (v10 && a4)
          {
            v16 = v10;
            if (v16 != &__block_literal_global_44658 && v16 != &__block_literal_global_10_44685)
            {
              if (v16 == &__block_literal_global_6_44667 || v16 == &__block_literal_global_8_44676)
              {

                v18 = *(a1 + 32);
              }

              else
              {
                v17 = v16[118];

                v18 = *(a1 + 32);
                if ((v17 & 1) == 0)
                {
                  v19 = 0;
                  if (!*(v18 + 32))
                  {
                    goto LABEL_25;
                  }

                  v22 = *(v18 + 72);
                  if (!v22)
                  {
                    goto LABEL_25;
                  }

LABEL_20:
                  if (gLogDatapath == 1)
                  {
                    v38 = __nwlog_obj();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = *(*(a1 + 32) + 16);
                      *buf = 136446722;
                      v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                      v51 = 2114;
                      v52 = v39;
                      v53 = 2112;
                      v54 = v9;
                      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", buf, 0x20u);
                    }

                    v22 = *(*(a1 + 32) + 72);
                  }

                  __s1[0] = 0;
                  __s1[1] = 0;
                  v62 = 0;
                  v23 = nw_dispatch_data_copyout_from_offset(v9, __s1, v22, 1);
                  v24 = *(a1 + 32);
                  if (v23 == v24[36] && (v25 = v23, !memcmp(__s1, v24 + 37, v23)))
                  {
                    if (v25 == v24[47])
                    {
                      size = dispatch_data_get_size(v9);
                      v48 = 0;
                      alloc = dispatch_data_create_alloc();
                      nw_dispatch_data_copyout(v9, 0, size);
                      memcpy(1, (*(a1 + 32) + 96), v25);
                      v34 = alloc;

                      if (gLogDatapath == 1)
                      {
                        v43 = __nwlog_obj();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                        {
                          v44 = *(*(a1 + 32) + 16);
                          *buf = 136446466;
                          v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                          v51 = 2114;
                          v52 = v44;
                          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Replaced with Virtual Client CID before proxying", buf, 0x16u);
                        }
                      }

                      v26 = 1;
                      v9 = v34;
                    }

                    else
                    {
                      v26 = 1;
                    }
                  }

                  else
                  {
LABEL_25:
                    v26 = 0;
                  }

                  if (gLogDatapath == 1)
                  {
                    v35 = __nwlog_obj();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                    {
                      v36 = *(*(a1 + 32) + 16);
                      if (v9)
                      {
                        v37 = dispatch_data_get_size(v9);
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v40 = "";
                      *buf = 136447490;
                      v41 = " directly";
                      v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                      if (!v26)
                      {
                        v41 = "";
                      }

                      v51 = 2114;
                      v52 = v36;
                      v42 = ", complete";
                      if (!a4)
                      {
                        v42 = "";
                      }

                      v53 = 2048;
                      v54 = v37;
                      v55 = 2080;
                      v56 = v41;
                      v57 = 2080;
                      if (v19)
                      {
                        v40 = ", final";
                      }

                      v58 = v42;
                      v59 = 2080;
                      v60 = v40;
                      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes%s to client%s%s", buf, 0x3Eu);
                    }
                  }

                  dispatch_group_enter(*(*(a1 + 32) + 232));
                  v27 = *(a1 + 32);
                  if (v26)
                  {
                    v28 = (v27 + 32);
                  }

                  else
                  {
                    v28 = (*(v27 + 16) + 48);
                  }

                  v29 = *v28;
                  if (*(v27 + 219))
                  {
                    v30 = &_nw_content_context_default_message;
                  }

                  else
                  {
                    v30 = (v27 + 56);
                  }

                  v31 = *v30;
                  completion[0] = MEMORY[0x1E69E9820];
                  completion[1] = 3221225472;
                  completion[2] = ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke_334;
                  completion[3] = &unk_1E6A39610;
                  v46 = v27;
                  v47 = v19 & 1;
                  nw_connection_send(v29, v9, v31, a4, completion);
                  v20 = v46;
                  goto LABEL_34;
                }
              }

              v19 = *(v18 + 219) ^ 1;
              goto LABEL_20;
            }
          }

          v19 = 0;
          v18 = *(a1 + 32);
          goto LABEL_20;
        }
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = *(*(a1 + 32) + 16);
    *buf = 136446722;
    v50 = "nw_masque_connection_pair_read_outer_block_invoke";
    v51 = 2114;
    v52 = v21;
    v53 = 2112;
    v54 = v12;
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
  }

LABEL_34:
}

void ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke_334(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_outer_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  if ((*(a1 + 40) & 1) == 0)
  {
    nw_masque_connection_pair_read_outer(*(a1 + 32));
  }
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7 && (a4 == 40 || !a4))
  {
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1 + 32) + 16);
        *buf = 136446722;
        v21 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
        v22 = 2114;
        v23 = v15;
        v24 = 1024;
        v25 = a3;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to client", buf, 0x1Cu);
      }

      v6 = *(a1 + 32);
      v7 = v6[6];
    }

    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_325;
    batch_block[3] = &unk_1E6A30910;
    v19 = a3;
    v18 = a2;
    v17 = v6;
    nw_connection_batch(v7, batch_block);
    nw_masque_connection_pair_read_outer_datagrams(*(a1 + 32));
    v10 = v17;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 16);
      v13 = *(v11 + 48);
      *buf = 136446978;
      v21 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
      v22 = 2114;
      v23 = v12;
      v24 = 1024;
      v25 = a4;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_325(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    for (i = 0; i < *(a1 + 48); ++i)
    {
      v3 = *(*(a1 + 40) + 8 * i);
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v4 = *(a1 + 32);
      if (*(v4 + 32))
      {
        if (gLogDatapath == 1)
        {
          v11 = __nwlog_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = *(*(a1 + 32) + 16);
            *applier = 136446722;
            *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
            *&applier[12] = 2114;
            *&applier[14] = v12;
            *&applier[22] = 2112;
            v38 = v3;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", applier, 0x20u);
          }

          v4 = *(a1 + 32);
          v5 = *(v4 + 72);
          if (!*(v4 + 72))
          {
LABEL_19:
            if (*(v4 + 192))
            {
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_326;
              v25[3] = &unk_1E6A308E8;
              v26 = v4;
              v27 = &v29;
              dispatch_data_apply(v3, v25);
            }

            goto LABEL_21;
          }
        }

        else
        {
          v5 = *(v4 + 72);
          if (!*(v4 + 72))
          {
            goto LABEL_19;
          }
        }

        __s1[0] = 0;
        __s1[1] = 0;
        v36 = 0;
        v6 = nw_dispatch_data_copyout_from_offset(v3, __s1, v5, 1);
        v7 = *(a1 + 32);
        if (v6 == *(v7 + 72))
        {
          v8 = v6;
          if (!memcmp(__s1, (v7 + 74), v6))
          {
            *(v30 + 24) = 1;
            if (v8 == *(*(a1 + 32) + 94))
            {
              size = dispatch_data_get_size(v3);
              v28 = 0;
              alloc = dispatch_data_create_alloc();
              v34[0] = 0;
              v34[1] = v34;
              v34[2] = 0x2000000000;
              v34[3] = 0;
              v33[0] = 0;
              v33[1] = v33;
              v33[2] = 0x2000000000;
              v33[3] = v28;
              if (v3)
              {
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 0x40000000;
                *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
                v38 = &unk_1E6A34348;
                *(&v39 + 1) = v33;
                v40 = size;
                *&v39 = v34;
                dispatch_data_apply(v3, applier);
              }

              _Block_object_dispose(v33, 8);
              _Block_object_dispose(v34, 8);
              memcpy((v28 + 1), (*(a1 + 32) + 96), v8);
              v10 = alloc;

              if (gLogDatapath == 1)
              {
                v20 = __nwlog_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v21 = *(*(a1 + 32) + 16);
                  *applier = 136446466;
                  *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
                  *&applier[12] = 2114;
                  *&applier[14] = v21;
                  _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Replaced with Virtual Client CID before proxying", applier, 0x16u);
                }
              }

              v3 = v10;
            }
          }
        }
      }

LABEL_21:
      if (gLogDatapath == 1)
      {
        v16 = __nwlog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(*(a1 + 32) + 16);
          if (v3)
          {
            v18 = dispatch_data_get_size(v3);
          }

          else
          {
            v18 = 0;
          }

          v19 = "";
          if (*(v30 + 24))
          {
            v19 = " directly";
          }

          *applier = 136446978;
          *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke_2";
          *&applier[12] = 2114;
          *&applier[14] = v17;
          *&applier[22] = 2048;
          v38 = v18;
          LOWORD(v39) = 2080;
          *(&v39 + 2) = v19;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes%s to client", applier, 0x2Au);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 232));
      v13 = *(a1 + 32);
      if (*(v30 + 24) == 1)
      {
        v14 = v13 + 4;
      }

      else
      {
        v14 = &v13[2][6];
      }

      v15 = *v14;
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_329;
      completion[3] = &unk_1E6A33F88;
      v24 = v13;
      nw_connection_send(v15, v3, &__block_literal_global_44658, 1, completion);

      _Block_object_dispose(&v29, 8);
    }
  }
}

void sub_1825614C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_326(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  matched = nw_masque_connection_pair_match_demux_pattern(a4, a5, *(*(a1 + 32) + 192));
  if (matched)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return matched ^ 1u;
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_329(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
}

void ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_299(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_312(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 length];
  v5 = ",";
  if (!v4)
  {
    v5 = "";
  }

  [v3 appendFormat:@"%s%s", v5, a2];
  return 1;
}

void ___ZL45nw_masque_connection_pair_start_waiting_timerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136446722;
    v6 = "nw_masque_connection_pair_start_waiting_timer_block_invoke";
    v7 = 2114;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ wait timer fired for outer connection %@", &v5, 0x20u);
  }

  nw_connection_cancel(*(a1 + 40));
}

void ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t result, int a2)
{
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    nw_dictionary_set_value(*(*(result + 32) + 56), (*(result + 40) + 200), 0);
    v4 = *(result + 40);

    nw_masque_connection_pair_cancel(v4);
  }
}

void ___ZL51nw_masque_connection_pair_set_state_changed_handlerP36NWConcrete_nw_masque_connection_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void nw_masque_connection_pair_cancel(NWConcrete_nw_masque_connection_pair *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 29);
    v4 = *(*(v1 + 2) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL32nw_masque_connection_pair_cancelP36NWConcrete_nw_masque_connection_pair_block_invoke;
    block[3] = &unk_1E6A3D868;
    v14 = v1;
    dispatch_group_notify(v3, v4, block);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_connection_pair_cancel";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null pair", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v6, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_masque_connection_pair_cancel";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void ___ZL32nw_masque_connection_pair_cancelP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1)
{
  nw_masque_connection_pair_cancel_waiting_timer(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(v2[2] + 48);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 16);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[3];
  if (v6)
  {
    nw_connection_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v9 = v2[4];
  if (v9)
  {
    nw_connection_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v12 = v2[5];
  if (v12)
  {
    _nw_array_apply(v12, &__block_literal_global_270);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v15 = v2[6];
  if (v15)
  {
    nw_connection_cancel(v15);
    v16 = *(a1 + 32);
    v17 = *(v16 + 48);
    *(v16 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v18 = v2[24];
  v2[24] = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 56);
  *(v19 + 56) = 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  *(v21 + 64) = 0;
}

void __nw_masque_connection_set_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = &__block_literal_global_7_30598;
  if (v1)
  {
    v3 = nw_context_copy_globals_context(v1);

    nw_context_assert_queue(v3);
    if (!*(v3 + 18))
    {
      v4 = _Block_copy(&__block_literal_global_7_30598);
      v5 = *(v3 + 18);
      *(v3 + 18) = v4;

      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_context_register_channel_flow_count_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null !context->flow_count_increment_callback", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if ((__nwlog_fault(v11, &type, &v22) & 1) == 0)
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null !context->flow_count_increment_callback", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_context_register_channel_flow_count_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null !context->flow_count_increment_callback, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null !context->flow_count_increment_callback, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null !context->flow_count_increment_callback, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_context_register_channel_flow_count_handler";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null context", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v7, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_context_register_channel_flow_count_handler";
          v26 = 2082;
          v27 = v14;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        goto LABEL_34;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_34:
  if (v7)
  {
    free(v7);
  }

LABEL_4:
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1E0)
  {
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http3_identifier::http3_protocol_identifier, &__block_literal_global_11_30602);
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http2_identifier::http2_protocol_identifier, &__block_literal_global_14_30603);
    if (nw_protocol_http1_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http1_identifier::http1_protocol_identifier, &__block_literal_global_17_30604);
  }
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http1_get_http1_protocol";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v10, &type, &v35))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null protocol";
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v38 = "nw_http1_get_http1_protocol";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_67:
        if (!v10)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      if (!v16)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_66;
  }

  v2 = *(a2 + 40);
  if (!v2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http1_get_http1_protocol";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v10, &type, &v35))
    {
      goto LABEL_67;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v38 = "nw_http1_get_http1_protocol";
        v13 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_66;
      }

      v17 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v18 = os_log_type_enabled(v11, type);
      if (!v17)
      {
        if (!v18)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v38 = "nw_http1_get_http1_protocol";
        v13 = "%{public}s called with null handle, no backtrace";
        goto LABEL_66;
      }

      if (!v18)
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v38 = "nw_http1_get_http1_protocol";
      v39 = 2082;
      v40 = v17;
      v19 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_67;
    }

    *buf = 136446210;
    v38 = "nw_http1_get_http1_protocol";
    v13 = "%{public}s called with null handle";
LABEL_66:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_67;
  }

  v3 = *(v2 + 6);
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_69;
    }

    v4 = v2[2];
    if (v4)
    {
      v2 = (v4 + 480);
      goto LABEL_10;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http1_get_http1_protocol";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v10, &type, &v35))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_connection";
      goto LABEL_66;
    }

    if (v35 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_66;
    }

    v17 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v23 = os_log_type_enabled(v11, type);
    if (!v17)
    {
      if (!v23)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_66;
    }

    if (v23)
    {
      *buf = 136446466;
      v38 = "nw_http1_get_http1_protocol";
      v39 = 2082;
      v40 = v17;
      v19 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

LABEL_32:
    free(v17);
    if (!v10)
    {
      goto LABEL_69;
    }

LABEL_68:
    free(v10);
    goto LABEL_69;
  }

  v5 = v2[1];
  if (!v5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_http1_get_http1_protocol";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v10, &type, &v35))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_stream";
      goto LABEL_66;
    }

    if (v35 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_66;
    }

    v17 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v17)
    {
      if (!v22)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v38 = "nw_http1_get_http1_protocol";
      v13 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_66;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    *buf = 136446466;
    v38 = "nw_http1_get_http1_protocol";
    v39 = 2082;
    v40 = v17;
    v19 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v11, v12, v19, buf, 0x16u);
    goto LABEL_32;
  }

  v2 = (v5 + 248);
LABEL_10:
  v6 = *v2;
  if (v6)
  {
    v7 = *(v6 + 208);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 592);
        nw_queue_set_timer_values(*(v7 + 784), 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v7 = v8;
      }

      while (v8);
    }

    return;
  }

LABEL_69:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v38 = "nw_http1_cancel_idle_connections";
  LODWORD(v34) = 12;
  v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v34);
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v24, &type, &v35))
  {
    goto LABEL_82;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v38 = "nw_http1_cancel_idle_connections";
    v27 = "%{public}s called with null http1";
LABEL_80:
    v32 = v25;
    v33 = v26;
LABEL_81:
    _os_log_impl(&dword_181A37000, v32, v33, v27, buf, 0xCu);
    goto LABEL_82;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v38 = "nw_http1_cancel_idle_connections";
    v27 = "%{public}s called with null http1, backtrace limit exceeded";
    goto LABEL_80;
  }

  v28 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v29 = gLogObj;
  v30 = type;
  v31 = os_log_type_enabled(gLogObj, type);
  if (v28)
  {
    if (v31)
    {
      *buf = 136446466;
      v38 = "nw_http1_cancel_idle_connections";
      v39 = 2082;
      v40 = v28;
      _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v28);
    goto LABEL_82;
  }

  if (v31)
  {
    *buf = 136446210;
    v38 = "nw_http1_cancel_idle_connections";
    v27 = "%{public}s called with null http1, no backtrace";
    v32 = v29;
    v33 = v30;
    goto LABEL_81;
  }

LABEL_82:
  if (v24)
  {
    free(v24);
  }
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http2_cancel_if_idle";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http2_cancel_if_idle";
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
          v18 = "nw_http2_cancel_if_idle";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v6)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http2_cancel_if_idle";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http2_cancel_if_idle";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_41;
  }

  v2 = *(a2 + 40);
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      if (*v3)
      {
        v4 = *v3;

        dispatch_source_set_timer(v4, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        *(v3 + 32) = xmmword_182B08D40;
        if (*(v3 + 48) == 1 && *(v3 + 49) == 1)
        {

          nw_queue_source_run_timer(v3);
        }
      }
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http2_cancel_if_idle";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http2", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http2_cancel_if_idle";
    v9 = "%{public}s called with null http2";
    goto LABEL_40;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http2_cancel_if_idle";
    v9 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_40;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http2_cancel_if_idle";
    v9 = "%{public}s called with null http2, no backtrace";
    goto LABEL_40;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_http2_cancel_if_idle";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
LABEL_42:
    free(v6);
  }
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http3_cancel_if_idle";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http3_cancel_if_idle";
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
          v18 = "nw_http3_cancel_if_idle";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v6)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http3_cancel_if_idle";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v18 = "nw_http3_cancel_if_idle";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_41;
  }

  v2 = *(a2 + 40);
  if (v2)
  {
    v3 = *(v2 + 1280);
    if (v3)
    {
      if (*v3)
      {
        v4 = *v3;

        dispatch_source_set_timer(v4, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        *(v3 + 32) = xmmword_182B08D40;
        if (*(v3 + 48) == 1 && *(v3 + 49) == 1)
        {

          nw_queue_source_run_timer(v3);
        }
      }
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http3_cancel_if_idle";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http3", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http3_cancel_if_idle";
    v9 = "%{public}s called with null http3";
    goto LABEL_40;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http3_cancel_if_idle";
    v9 = "%{public}s called with null http3, backtrace limit exceeded";
    goto LABEL_40;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v18 = "nw_http3_cancel_if_idle";
    v9 = "%{public}s called with null http3, no backtrace";
    goto LABEL_40;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_http3_cancel_if_idle";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
LABEL_42:
    free(v6);
  }
}

uint64_t nw_protocol_http_client_create::$_2::__invoke(nw_protocol_http_client_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (*(this + 5))
    {
      return 0;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "operator()";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http_client", buf, 12);
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
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v17 = "operator()";
      v8 = "%{public}s called with null http_client";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v13 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v17 = "operator()";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_32:
        if (!v5)
        {
          return 0;
        }

LABEL_33:
        free(v5);
        return 0;
      }

      if (!v13)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v17 = "operator()";
      v8 = "%{public}s called with null http_client, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v17 = "operator()";
      v8 = "%{public}s called with null http_client, backtrace limit exceeded";
    }

LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_32;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "operator()";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
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
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v17 = "operator()";
    v8 = "%{public}s called with null protocol";
    goto LABEL_31;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v17 = "operator()";
    v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_31;
  }

  v10 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v11 = os_log_type_enabled(v6, type);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v17 = "operator()";
    v8 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_31;
  }

  if (v11)
  {
    *buf = 136446466;
    v17 = "operator()";
    v18 = 2082;
    v19 = v10;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v5)
  {
    goto LABEL_33;
  }

  return 0;
}

void nw_protocol_http_client_report_transfer_size(nw_protocol *a1, nw_protocol_metadata *a2, unsigned int a3, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v13, &type, &v40))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null protocol";
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v20 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_client_report_transfer_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_106:
        if (!v13)
        {
          return;
        }

        goto LABEL_107;
      }

      if (!v20)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_105;
  }

  handle = a1->handle;
  if (!handle)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v13, &type, &v40))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v40 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        v16 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_105;
      }

      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        v16 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_105;
      }

      if (v22)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        *&buf[12] = 2082;
        *&buf[14] = v21;
        v23 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
LABEL_54:
        _os_log_impl(&dword_181A37000, v14, v15, v23, buf, 0x16u);
      }

LABEL_55:
      free(v21);
      if (!v13)
      {
        return;
      }

LABEL_107:
      free(v13);
      return;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_106;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v16 = "%{public}s called with null http_client";
LABEL_105:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_106;
  }

  if (!a3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null size", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v13, &type, &v40))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null size";
      goto LABEL_105;
    }

    if (v40 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null size, backtrace limit exceeded";
      goto LABEL_105;
    }

    v21 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v30 = os_log_type_enabled(v14, type);
    if (!v21)
    {
      if (!v30)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v16 = "%{public}s called with null size, no backtrace";
      goto LABEL_105;
    }

    if (v30)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      v23 = "%{public}s called with null size, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v7 = nw_http_client_metadata_copy_current_transaction_metadata(handle[59]);
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    if (v8)
    {
      if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
      }

      if (nw_protocol_metadata_matches_definition(v9, nw_protocol_copy_http_transaction_definition_definition))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        v10 = __nw_http_transaction_metadata_increment_inbound_body_size_block_invoke;
        goto LABEL_15;
      }

      v31 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s metadata must be http_transaction", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v25, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v28 = "%{public}s metadata must be http_transaction";
            goto LABEL_117;
          }

LABEL_118:

          goto LABEL_119;
        }

        if (v40 != 1)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v28 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
            goto LABEL_117;
          }

          goto LABEL_118;
        }

        v35 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v38 = os_log_type_enabled(v26, type);
        if (!v35)
        {
          if (v38)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v28 = "%{public}s metadata must be http_transaction, no backtrace";
            goto LABEL_117;
          }

          goto LABEL_118;
        }

        if (v38)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          *&buf[12] = 2082;
          *&buf[14] = v35;
          v37 = "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

LABEL_119:
      if (!v25)
      {
        goto LABEL_17;
      }

      goto LABEL_120;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v25, &type, &v40))
    {
      goto LABEL_119;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v40 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          v28 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      v33 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v34 = os_log_type_enabled(v26, type);
      if (!v33)
      {
        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          v28 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v34)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = v33;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v33);
      goto LABEL_119;
    }

    v26 = __nwlog_obj();
    v27 = type;
    if (!os_log_type_enabled(v26, type))
    {
      goto LABEL_118;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
    v28 = "%{public}s called with null metadata";
LABEL_117:
    _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
    goto LABEL_118;
  }

  v9 = v7;
  if (v8)
  {
    if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    if (nw_protocol_metadata_matches_definition(v9, nw_protocol_copy_http_transaction_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      v10 = __nw_http_transaction_metadata_increment_outbound_body_size_block_invoke;
LABEL_15:
      *&buf[16] = v10;
      v43 = &__block_descriptor_40_e9_B16__0_v8l;
      v44 = a3;
      v11 = _nw_protocol_metadata_get_handle();
      if (v11)
      {
        (*&buf[16])(buf, v11);
      }

      goto LABEL_17;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v25, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v28 = "%{public}s metadata must be http_transaction";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v40 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v28 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      v35 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v39 = os_log_type_enabled(v26, type);
      if (!v35)
      {
        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v28 = "%{public}s metadata must be http_transaction, no backtrace";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v39)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = v35;
        v37 = "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s";
        goto LABEL_88;
      }

      goto LABEL_89;
    }

    goto LABEL_119;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null metadata", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (!__nwlog_fault(v25, &type, &v40))
  {
    goto LABEL_119;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v26 = __nwlog_obj();
    v27 = type;
    if (!os_log_type_enabled(v26, type))
    {
      goto LABEL_118;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    v28 = "%{public}s called with null metadata";
    goto LABEL_117;
  }

  if (v40 != 1)
  {
    v26 = __nwlog_obj();
    v27 = type;
    if (os_log_type_enabled(v26, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
      v28 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

  v35 = __nw_create_backtrace_string();
  v26 = __nwlog_obj();
  v27 = type;
  v36 = os_log_type_enabled(v26, type);
  if (!v35)
  {
    if (v36)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
      v28 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

  if (v36)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    *&buf[12] = 2082;
    *&buf[14] = v35;
    v37 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_88:
    _os_log_impl(&dword_181A37000, v26, v27, v37, buf, 0x16u);
  }

LABEL_89:

  free(v35);
  if (v25)
  {
LABEL_120:
    free(v25);
  }

LABEL_17:

  if (v8)
  {

    os_release(v8);
  }
}

void nw_protocol_http_client_create::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "operator()";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_61:
        if (!v7)
        {
          return;
        }

        goto LABEL_62;
      }

      if (!v15)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_60;
  }

  if (!*(a1 + 40))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v24 = "operator()";
        v10 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_60;
      }

      v16 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v17 = os_log_type_enabled(v8, type);
      if (!v16)
      {
        if (!v17)
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v24 = "operator()";
        v10 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_60;
      }

      if (!v17)
      {
        goto LABEL_42;
      }

      *buf = 136446466;
      v24 = "operator()";
      v25 = 2082;
      v26 = v16;
      v18 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v24 = "operator()";
    v10 = "%{public}s called with null http_client";
LABEL_60:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null metadata", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null metadata";
      goto LABEL_60;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_60;
    }

    v16 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!v16)
    {
      if (!v19)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_60;
    }

    if (!v19)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v24 = "operator()";
    v25 = 2082;
    v26 = v16;
    v18 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_41:
    _os_log_impl(&dword_181A37000, v8, v9, v18, buf, 0x16u);
    goto LABEL_42;
  }

  if (!a5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null completion", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null completion";
      goto LABEL_60;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_60;
    }

    v16 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v20 = os_log_type_enabled(v8, type);
    if (!v16)
    {
      if (!v20)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v24 = "operator()";
      v10 = "%{public}s called with null completion, no backtrace";
      goto LABEL_60;
    }

    if (v20)
    {
      *buf = 136446466;
      v24 = "operator()";
      v25 = 2082;
      v26 = v16;
      v18 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

LABEL_42:
    free(v16);
    if (!v7)
    {
      return;
    }

LABEL_62:
    free(v7);
    return;
  }

  v5 = *(a5 + 16);

  v5(a5, 1);
}

void nw_protocol_http_client_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null protocol";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v19 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v29 = "operator()";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_78:
        if (!v9)
        {
          return;
        }

        goto LABEL_79;
      }

      if (!v19)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_77;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v29 = "operator()";
        v12 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_77;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v21 = os_log_type_enabled(v10, type);
      if (!v20)
      {
        if (!v21)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v29 = "operator()";
        v12 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_77;
      }

      if (!v21)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v29 = "operator()";
      v30 = 2082;
      v31 = v20;
      v22 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v29 = "operator()";
    v12 = "%{public}s called with null http_client";
LABEL_77:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_78;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v29 = "operator()";
        v12 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_77;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v23 = os_log_type_enabled(v10, type);
      if (!v20)
      {
        if (!v23)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v29 = "operator()";
        v12 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_77;
      }

      if (!v23)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v29 = "operator()";
      v30 = 2082;
      v31 = v20;
      v22 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v29 = "operator()";
    v12 = "%{public}s called with null other_protocol";
    goto LABEL_77;
  }

  if (!a3)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null metadata", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null metadata";
      goto LABEL_77;
    }

    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_77;
    }

    v20 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v24 = os_log_type_enabled(v10, type);
    if (!v20)
    {
      if (!v24)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_77;
    }

    if (!v24)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v29 = "operator()";
    v30 = 2082;
    v31 = v20;
    v22 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v10, v11, v22, buf, 0x16u);
    goto LABEL_55;
  }

  if (!a5)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null completion", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null completion";
      goto LABEL_77;
    }

    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_77;
    }

    v20 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v25 = os_log_type_enabled(v10, type);
    if (!v20)
    {
      if (!v25)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v29 = "operator()";
      v12 = "%{public}s called with null completion, no backtrace";
      goto LABEL_77;
    }

    if (v25)
    {
      *buf = 136446466;
      v29 = "operator()";
      v30 = 2082;
      v31 = v20;
      v22 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

LABEL_55:
    free(v20);
    if (!v9)
    {
      return;
    }

LABEL_79:
    free(v9);
    return;
  }

  v7 = nw_http_metadata_copy_response(a3);
  if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v29 = "operator()";
      v30 = 2082;
      v31 = (v5 + 114);
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      status_code = nw_http_response_get_status_code(v7);
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived http response %d", buf, 0x26u);
    }
  }

  (*(a5 + 16))(a5, 1);
  if (v7)
  {
    os_release(v7);
  }
}

void ___ZL37nw_protocol_http_client_get_callbacksv_block_invoke()
{
  nw_protocol_http_client_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840CE8 = nw_protocol_common_replace_input_handler;
  qword_1EA840D28 = nw_protocol_common_get_input_frames;
  qword_1EA840D30 = nw_protocol_common_get_output_frames;
  qword_1EA840D38 = nw_protocol_common_finalize_output_frames;
  qword_1EA840D48 = nw_protocol_common_get_parameters;
  qword_1EA840D50 = nw_protocol_common_get_path;
  qword_1EA840D60 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840D58 = nw_protocol_common_get_local_endpoint;
  qword_1EA840DA0 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840DA8 = nw_protocol_common_get_output_interface;
  qword_1EA840CF0 = nw_protocol_common_connect;
  qword_1EA840D00 = nw_protocol_common_connected;
  qword_1EA840CF8 = nw_protocol_common_disconnect;
  qword_1EA840D08 = nw_protocol_common_disconnected;
  qword_1EA840D18 = nw_protocol_common_input_available;
  qword_1EA840D20 = nw_protocol_common_output_available;
  qword_1EA840D90 = nw_protocol_common_input_finished;
  qword_1EA840D98 = nw_protocol_common_output_finished;
  qword_1EA840DE0 = nw_protocol_common_input_flush;
  qword_1EA840D10 = nw_protocol_common_error;
  qword_1EA840DD8 = nw_protocol_common_reset;
  qword_1EA840DD0 = nw_protocol_common_get_message_properties;
  qword_1EA840D88 = nw_protocol_common_supports_external_data;
  qword_1EA840DB0 = nw_protocol_common_waiting_for_output;
  qword_1EA840D68 = nw_protocol_common_register_notification;
  qword_1EA840D70 = nw_protocol_common_unregister_notification;
  qword_1EA840D78 = nw_protocol_common_notify;
  qword_1EA840D80 = nw_protocol_common_updated_path;
  qword_1EA840D40 = nw_protocol_common_link_state;
  qword_1EA840DB8 = nw_protocol_http_client_copy_info;
  qword_1EA840CE0 = nw_protocol_http_client_remove_input_handler;
}

void nw_quic_metadata_set_original(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((nw_protocol_metadata_is_quic_connection(v3) & 1) == 0)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_quic_metadata_set_original";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_32:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
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
          v18 = "nw_quic_metadata_set_original";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v6);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (nw_protocol_metadata_is_quic_connection(v4))
  {
    _nw_quic_metadata_set_original();
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_metadata_set_original";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata)";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_quic_metadata_set_original";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t (*nw_protocol_set_quic_overrides(uint64_t (*result)(void), uint64_t (*a2)(void, void, void, void, void), uint64_t (*a3)(void), uint64_t (*a4)(void, void, void, void), uint64_t (*a5)(void, void, void, void)))(void)
{
  quic_fillout_definition_callbacks_override = result;
  qpod_conn_create_override = a2;
  qpod_conn_free_override = a3;
  qpod_conn_encode_datagram_override = a4;
  qpod_conn_decode_datagram_override = a5;
  return result;
}

void nw_quic_deallocate_cache_entry(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  v5 = a2[2];
  a2[2] = 0;

  free(a2);
}

void nw_quic_access_application_result_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
    }

    v5 = nw_protocol_copy_quic_connection_definition_quic_definition;
    if (v5)
    {
      cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v5);
      if (cached_content_for_protocol)
      {
        (*(v4 + 2))(v4, *(cached_content_for_protocol + 36), *(cached_content_for_protocol + 40));
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0);
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_access_application_result_on_queue";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
LABEL_42:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_8;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition";
LABEL_40:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_application_result_on_queue";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (!v20)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_40;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_access_application_result_on_queue";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null association", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v8, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association";
LABEL_34:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_application_result_on_queue";
            v25 = 2082;
            v26 = v17;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_36;
        }

        if (!v18)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association, no backtrace";
        goto LABEL_34;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t nw_quic_stream_should_serialize_options(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    return _nw_quic_stream_should_serialize_options(a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_stream_should_serialize_options";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null existing_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle";
LABEL_18:
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
            v13 = "nw_quic_stream_should_serialize_options";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_swift_quic_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = nw_protocol_swift_wrapper_setup_callbacks_onceToken;
  v6 = a4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_swift_wrapper_setup_callbacks_onceToken, &__block_literal_global_58517);
  }

  v7 = nw_protocol_new(32, v6, a1, &g_swift_wrapper_protocol_callbacks);

  if (v7)
  {
    v8 = (v7 - 96);
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    _nw_protocol_create_swift_quic_instance();
    v10 = v9;
    if (v9)
    {
      nw_protocol_swift_wrapper_set_instance(v8, v9, 1);
LABEL_9:

      return v8;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_swift_quic_create";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v18, &type, &v26))
    {
LABEL_44:
      if (v18)
      {
        free(v18);
      }

      v8 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance";
LABEL_42:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v25 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v29 = "nw_protocol_swift_quic_create";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v25)
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance, no backtrace";
        goto LABEL_42;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_swift_quic_create";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol";
LABEL_35:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v23 = os_log_type_enabled(v14, type);
        if (v22)
        {
          if (v23)
          {
            *buf = 136446466;
            v29 = "nw_protocol_swift_quic_create";
            v30 = 2082;
            v31 = v22;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_37;
        }

        if (!v23)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:
  }

LABEL_37:
  if (v13)
  {
    free(v13);
  }

  return 0;
}

void nw_quic_add_tls_application_protocol(nw_protocol_options_t options, const char *application_protocol)
{
  v3 = nw_quic_copy_sec_protocol_options(options);
  sec_protocol_options_add_tls_application_protocol(v3, application_protocol);
}

void nw_quic_connection_set_override_trust_certs_for_tests(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    if (os_variant_allows_internal_security_policies())
    {
      _nw_quic_connection_set_override_trust_certs_for_tests(v3, a2);
    }

    goto LABEL_4;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
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
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_18:
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
            v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_4:
}

void nw_quic_connection_set_trust_override_security_options(void *a1)
{
  options = a1;
  if (os_variant_allows_internal_security_policies())
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v1 = nw_context_copy_implicit_context::implicit_context;
    v2 = nw_context_copy_workloop(v1);
    sec_protocol_options_set_verify_block(options, &__block_literal_global_69, v2);
  }
}

void nw_quic_connection_add_h3_alpn(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_add_h3_alpn(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_add_h3_alpn";
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
        v14 = "nw_quic_connection_add_h3_alpn";
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
            v14 = "nw_quic_connection_add_h3_alpn";
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
        v14 = "nw_quic_connection_add_h3_alpn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_add_h3_alpn";
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

LABEL_3:
}

void nw_quic_connection_set_pqtls_mode(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pqtls_mode(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pqtls_mode";
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
        v14 = "nw_quic_connection_set_pqtls_mode";
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
            v14 = "nw_quic_connection_set_pqtls_mode";
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
        v14 = "nw_quic_connection_set_pqtls_mode";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pqtls_mode";
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

LABEL_3:
}

void nw_quic_connection_set_server_raw_public_keys(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_server_raw_public_keys(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_server_raw_public_keys";
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
        v14 = "nw_quic_connection_set_server_raw_public_keys";
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
            v14 = "nw_quic_connection_set_server_raw_public_keys";
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
        v14 = "nw_quic_connection_set_server_raw_public_keys";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_server_raw_public_keys";
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

LABEL_3:
}

void nw_quic_connection_set_client_identity_reference(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_client_identity_reference(v5, a2, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_connection_set_client_identity_reference";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_quic_connection_set_client_identity_reference";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

uint64_t nw_quic_connection_fetch_proxy_endpoint_from_nehelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = NEHelperCopyXPCEndpointForIdentityProxyExtended();
    if (v4)
    {
LABEL_3:
      v5 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v5 _setEndpoint:v4];
      v11 = 0;
      v6 = [MEMORY[0x1E697AAB0] createIdentityFromEndpoint:v5 error:&v11];
      v7 = v11;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Failed to fetch identity from NEHelper: %@", buf, 0x16u);
        }

        v6 = 0;
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Fetched identity %@ from NEHelper", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = NEHelperCopyXPCEndpointForIdentityProxy();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Unable to copy xpc endpoint for client identity, returning null", buf, 0xCu);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t nw_quic_connection_get_selected_key_index(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic(v1))
  {
    selected_key_index = _nw_quic_connection_get_selected_key_index();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_selected_key_index";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options)";
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
            v14 = "nw_quic_connection_get_selected_key_index";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
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

  selected_key_index = 255;
LABEL_3:

  return selected_key_index;
}

void nw_quic_connection_set_local_identity(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_identity(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_local_identity";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_local_identity";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_quic_connection_copy_local_public_key(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_copy_local_public_key();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_copy_local_public_key";
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
        v14 = "nw_quic_connection_copy_local_public_key";
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
            v14 = "nw_quic_connection_copy_local_public_key";
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
        v14 = "nw_quic_connection_copy_local_public_key";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_copy_local_public_key";
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

void nw_quic_connection_set_trusted_peer_keys(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic(v5))
  {
    if (nw_protocol_options_is_quic_stream(v5))
    {
      v8 = nw_quic_stream_copy_shared_connection_options(v5);

      v5 = v8;
    }

    _nw_quic_connection_set_trusted_peer_keys(v5, v6, v7);
    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_connection_set_trusted_peer_keys";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_quic_connection_set_trusted_peer_keys";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v15)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

LABEL_5:
}

void nw_quic_connection_set_use_swift_tls(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_use_swift_tls(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_use_swift_tls";
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
        v14 = "nw_quic_connection_set_use_swift_tls";
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
            v14 = "nw_quic_connection_set_use_swift_tls";
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
        v14 = "nw_quic_connection_set_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_use_swift_tls";
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

LABEL_3:
}

void nw_quic_connection_set_use_x25519(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_use_x25519(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_use_x25519";
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
        v14 = "nw_quic_connection_set_use_x25519";
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
            v14 = "nw_quic_connection_set_use_x25519";
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
        v14 = "nw_quic_connection_set_use_x25519";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_use_x25519";
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

LABEL_3:
}

void nw_quic_connection_set_client_identity_is_raw_public_Key(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_client_identity_is_raw_public_key();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v12 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v3)
  {
    free(v3);
  }

LABEL_3:
}

void nw_quic_clear_tls_application_protocols(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic(v1))
  {
    if (nw_protocol_options_is_quic_stream(v1))
    {
      v2 = nw_quic_stream_copy_shared_connection_options(v1);

      v1 = v2;
    }

    _nw_quic_clear_tls_application_protocols();
    goto LABEL_5;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_clear_tls_application_protocols";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options)";
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
            v13 = "nw_quic_clear_tls_application_protocols";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

LABEL_5:
}

void nw_quic_iterate_tls_application_protocols(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic(v3))
  {
    _nw_quic_iterate_tls_application_protocols(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_iterate_tls_application_protocols";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

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
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_17:
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
            v15 = "nw_quic_iterate_tls_application_protocols";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_connection_set_initial_max_data(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_data(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_data";
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
        v14 = "nw_quic_connection_set_initial_max_data";
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
            v14 = "nw_quic_connection_set_initial_max_data";
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
        v14 = "nw_quic_connection_set_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_data";
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

LABEL_3:
}

void nw_quic_set_initial_max_data(nw_protocol_options_t options, uint64_t initial_max_data)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_data(v3, initial_max_data);
}

uint64_t nw_quic_get_initial_max_data(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_data = nw_quic_connection_get_initial_max_data(v1);

  return initial_max_data;
}

void nw_quic_set_initial_max_streams_bidirectional(nw_protocol_options_t options, uint64_t initial_max_streams_bidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_streams_bidirectional(v3, initial_max_streams_bidirectional);
}

uint64_t nw_quic_get_initial_max_streams_bidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_streams_bidirectional = nw_quic_connection_get_initial_max_streams_bidirectional(v1);

  return initial_max_streams_bidirectional;
}

void nw_quic_connection_set_initial_max_streams_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_streams_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
            v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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

LABEL_3:
}

void nw_quic_set_initial_max_streams_unidirectional(nw_protocol_options_t options, uint64_t initial_max_streams_unidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_streams_unidirectional(v3, initial_max_streams_unidirectional);
}

uint64_t nw_quic_get_initial_max_streams_unidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_streams_unidirectional = nw_quic_connection_get_initial_max_streams_unidirectional(v1);

  return initial_max_streams_unidirectional;
}

void nw_quic_connection_set_initial_max_stream_data_bidirectional_local(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_bidirectional_local(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_bidirectional_local(nw_protocol_options_t options, uint64_t initial_max_stream_data_bidirectional_local)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_bidirectional_local(v3, initial_max_stream_data_bidirectional_local);
}

uint64_t nw_quic_get_initial_max_stream_data_bidirectional_local(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_bidirectional_local = nw_quic_connection_get_initial_max_stream_data_bidirectional_local(v1);

  return initial_max_stream_data_bidirectional_local;
}

void nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_bidirectional_remote(nw_protocol_options_t options, uint64_t initial_max_stream_data_bidirectional_remote)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(v3, initial_max_stream_data_bidirectional_remote);
}

uint64_t nw_quic_get_initial_max_stream_data_bidirectional_remote(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_bidirectional_remote = nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(v1);

  return initial_max_stream_data_bidirectional_remote;
}

void nw_quic_connection_set_initial_max_stream_data_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_unidirectional(nw_protocol_options_t options, uint64_t initial_max_stream_data_unidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_unidirectional(v3, initial_max_stream_data_unidirectional);
}

uint64_t nw_quic_get_initial_max_stream_data_unidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_unidirectional = nw_quic_connection_get_initial_max_stream_data_unidirectional(v1);

  return initial_max_stream_data_unidirectional;
}

void nw_quic_set_idle_timeout(nw_protocol_options_t options, uint32_t idle_timeout)
{
  v2 = *&idle_timeout;
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_idle_timeout(v3, v2);
}

uint32_t nw_quic_get_idle_timeout(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  idle_timeout = nw_quic_connection_get_idle_timeout(v1);

  return idle_timeout;
}

void nw_quic_connection_set_stream_path_affinity(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_stream_path_affinity();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_stream_path_affinity";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_stream_path_affinity";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v12 = "nw_quic_connection_set_stream_path_affinity";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_stream_path_affinity";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_stream_path_affinity";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v3)
  {
    free(v3);
  }

LABEL_3:
}

void nw_quic_set_stream_path_affinity(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_stream_path_affinity(v1);
}

uint64_t nw_quic_get_stream_path_affinity(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  stream_path_affinity = nw_quic_connection_get_stream_path_affinity(v1);

  return stream_path_affinity;
}

void nw_quic_connection_set_max_udp_payload_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_udp_payload_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_udp_payload_size";
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
        v14 = "nw_quic_connection_set_max_udp_payload_size";
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
            v14 = "nw_quic_connection_set_max_udp_payload_size";
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
        v14 = "nw_quic_connection_set_max_udp_payload_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_udp_payload_size";
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

LABEL_3:
}

void nw_quic_set_max_udp_payload_size(nw_protocol_options_t options, uint16_t max_udp_payload_size)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_max_udp_payload_size(v3, max_udp_payload_size);
}

uint16_t nw_quic_get_max_udp_payload_size(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  max_udp_payload_size = nw_quic_connection_get_max_udp_payload_size(v1);

  return max_udp_payload_size;
}

void nw_quic_connection_set_max_datagram_frame_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_datagram_frame_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
            v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
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

LABEL_3:
}

void nw_quic_set_max_datagram_frame_size(nw_protocol_options_t options, uint16_t max_datagram_frame_size)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_max_datagram_frame_size(v3, max_datagram_frame_size);
}

uint16_t nw_quic_get_max_datagram_frame_size(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  max_datagram_frame_size = nw_quic_connection_get_max_datagram_frame_size(v1);

  return max_datagram_frame_size;
}

void nw_quic_connection_set_initial_packet_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_packet_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_packet_size";
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
        v14 = "nw_quic_connection_set_initial_packet_size";
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
            v14 = "nw_quic_connection_set_initial_packet_size";
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
        v14 = "nw_quic_connection_set_initial_packet_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_packet_size";
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

LABEL_3:
}

void nw_quic_set_initial_packet_size(void *a1, __int16 a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_initial_packet_size(v3, a2);
}

uint64_t nw_quic_get_initial_packet_size(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  initial_packet_size = nw_quic_connection_get_initial_packet_size(v1);

  return initial_packet_size;
}

void nw_quic_set_keepalive_count(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_keepalive_count(v3, a2);
}

uint64_t nw_quic_get_keepalive_count(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  keepalive_count = nw_quic_connection_get_keepalive_count(v1);

  return keepalive_count;
}

void nw_quic_connection_set_ack_delay_size(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_ack_delay_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_ack_delay_size";
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
        v14 = "nw_quic_connection_set_ack_delay_size";
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
            v14 = "nw_quic_connection_set_ack_delay_size";
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
        v14 = "nw_quic_connection_set_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_ack_delay_size";
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

LABEL_3:
}

void nw_quic_set_ack_delay_size(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_ack_delay_size(v3, a2);
}

uint64_t nw_quic_get_ack_delay_size(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  ack_delay_size = nw_quic_connection_get_ack_delay_size(v1);

  return ack_delay_size;
}

void nw_quic_connection_set_source_connection_id(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_source_connection_id(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_source_connection_id";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_source_connection_id";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_set_source_connection_id(void *a1, void *a2)
{
  v3 = a2;
  v4 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_source_connection_id(v4, v3);
}

uint64_t nw_quic_get_source_connection_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  source_connection_id = nw_quic_connection_get_source_connection_id(v1);

  return source_connection_id;
}

void nw_quic_connection_set_max_paths_per_interface(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_paths_per_interface(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_paths_per_interface";
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
        v14 = "nw_quic_connection_set_max_paths_per_interface";
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
            v14 = "nw_quic_connection_set_max_paths_per_interface";
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
        v14 = "nw_quic_connection_set_max_paths_per_interface";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_paths_per_interface";
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

LABEL_3:
}

void nw_quic_set_max_paths_per_interface(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_max_paths_per_interface(v3, a2);
}

uint64_t nw_quic_get_max_paths_per_interface(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  max_paths_per_interface = nw_quic_connection_get_max_paths_per_interface(v1);

  return max_paths_per_interface;
}

void nw_quic_connection_set_pmtud(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_pmtud();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_pmtud";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_pmtud";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v12 = "nw_quic_connection_set_pmtud";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v3)
  {
    free(v3);
  }

LABEL_3:
}