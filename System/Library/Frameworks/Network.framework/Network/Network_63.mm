id nw_http_messaging_options_copy_http3_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v25 = __Block_byref_object_copy__75915;
      v26 = __Block_byref_object_dispose__75916;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_messaging_options_copy_http3_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http3_options";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_messaging", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http3_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http3_options";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
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
          *&buf[4] = "nw_http_messaging_options_copy_http3_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http3_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E50910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http1_set_connection_pool_width(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http1_options(v3);
    nw_http1_set_connection_pool_width(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http1(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http1_set_connection_pool_width_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http1_set_connection_pool_width";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http1(options)", buf, 12);

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
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http1_set_connection_pool_width";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http1(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http1_set_connection_pool_width";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

LABEL_5:
}

void nw_activity_submit_metrics(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v90 = *MEMORY[0x1E69E9840];
  v6 = v5;
  v7 = v2;
  v8 = v7;
  if (!v6)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null activity", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null activity", buf, 0xCu);
      }
    }

    else if (v71 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v34 = type[0];
      v35 = os_log_type_enabled(v27, type[0]);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_105:
        if (!v26)
        {
          goto LABEL_40;
        }

LABEL_106:
        free(v26);
        goto LABEL_40;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v41, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_104:

    goto LABEL_105;
  }

  if (!v4)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null metric_name", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null metric_name", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v71 != 1)
    {
      v27 = __nwlog_obj();
      v42 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null metric_name, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    v36 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v37 = type[0];
    v38 = os_log_type_enabled(v27, type[0]);
    if (!v36)
    {
      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null metric_name, no backtrace", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v38)
    {
      *buf = 136446466;
      *&buf[4] = "nw_activity_submit_metrics";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null metric_name, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_70;
  }

  if (!v7)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_activity_submit_metrics";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null metrics", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v71) = 0;
    if (!__nwlog_fault(v26, type, &v71))
    {
      goto LABEL_105;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null metrics", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v71 != 1)
    {
      v27 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v27, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v43, "%{public}s called with null metrics, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    v36 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v39 = type[0];
    v40 = os_log_type_enabled(v27, type[0]);
    if (!v36)
    {
      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_submit_metrics";
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null metrics, no backtrace", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v40)
    {
      *buf = 136446466;
      *&buf[4] = "nw_activity_submit_metrics";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null metrics, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_70:

    free(v36);
    if (!v26)
    {
      goto LABEL_40;
    }

    goto LABEL_106;
  }

  *type = 0;
  v76 = type;
  v77 = 0x2020000000;
  v78 = 1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_activity_submit_metrics_block_invoke;
  aBlock[3] = &unk_1E6A36148;
  v9 = v6;
  v67 = v9;
  v68 = type;
  v69 = &v71;
  v10 = _Block_copy(aBlock);
  v70 = v10;
  nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v6 + 20, &v70);

  if (v76[24])
  {
    if (*(v72 + 6) >= 0xBu)
    {
      *v88 = 0;
      *&v88[8] = v88;
      *&v88[16] = 0x2020000000;
      v89 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __nw_activity_submit_metrics_block_invoke_87;
      v62[3] = &unk_1E6A3D738;
      v11 = v9;
      v63 = v11;
      v64 = v88;
      v12 = _Block_copy(v62);
      v65 = v12;
      nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v6 + 20, &v65);

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*&v88[8] + 24);
        *buf = 136446978;
        *&buf[4] = "nw_activity_submit_metrics";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        v82 = 2080;
        v83 = v4;
        v84 = 1024;
        v85 = v14;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s Activity %{public}@ exceeded max client metric count, dropping metric named %s (%u total quenched)", buf, 0x26u);
      }

      _Block_object_dispose(v88, 8);
      goto LABEL_39;
    }

    v61 = 0;
    if (nw_activity_metric_object_is_valid(v8, 0, &v61))
    {
      if (__nwlog_metrics_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_metrics_log::onceToken, &__block_literal_global_48);
      }

      v15 = gmetricsLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = v9;
        *&buf[12] = 2082;
        *&buf[14] = v4;
        v82 = 2082;
        v83 = v61;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}@ submitting metrics %{public}s: %{public}s", buf, 0x20u);
      }

      if ((v9[4]._os_unfair_lock_opaque & 0x100) == 0 || !v61)
      {
        if (__nwlog_activity_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
        }

        v24 = gactivityLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ not selected for reporting, metrics complete", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v16 = gactivityLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ selected for reporting, sending metric report to symptoms", buf, 0xCu);
      }

      bzero(buf, 0x1498uLL);
      v17 = v61;
      v18 = v9;
      if (v17)
      {
        v19 = 0;
        *buf = *&v18[2]._os_unfair_lock_opaque;
        while (1)
        {
          v20 = v4[v19];
          buf[v19 + 16] = v20;
          if (!v20)
          {
            break;
          }

          if (++v19 == 255)
          {
            v86 = 0;
            break;
          }
        }

        v21 = v87;
        v22 = 4999;
        while (1)
        {
          v23 = *v17;
          *v21 = v23;
          if (!v23)
          {
            goto LABEL_29;
          }

          ++v17;
          ++v21;
          if (!--v22)
          {
            v87[4999] = 0;
            goto LABEL_29;
          }
        }
      }

      v60 = v18;
      v51 = __nwlog_obj();
      *v88 = 136446210;
      *&v88[4] = "nw_activity_fill_out_client_metric_report";
      v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s called with null client_metric", v88, 12);

      v80 = OS_LOG_TYPE_ERROR;
      v79 = 0;
      if (__nwlog_fault(v52, &v80, &v79))
      {
        if (v80 == OS_LOG_TYPE_FAULT)
        {
          v53 = __nwlog_obj();
          v54 = v80;
          if (os_log_type_enabled(v53, v80))
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null client_metric", v88, 0xCu);
          }
        }

        else if (v79 == 1)
        {
          v56 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v57 = v80;
          v58 = os_log_type_enabled(v53, v80);
          if (v56)
          {
            if (v58)
            {
              *v88 = 136446466;
              *&v88[4] = "nw_activity_fill_out_client_metric_report";
              *&v88[12] = 2082;
              *&v88[14] = v56;
              _os_log_impl(&dword_181A37000, v53, v57, "%{public}s called with null client_metric, dumping backtrace:%{public}s", v88, 0x16u);
            }

            free(v56);
            goto LABEL_126;
          }

          if (v58)
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v57, "%{public}s called with null client_metric, no backtrace", v88, 0xCu);
          }
        }

        else
        {
          v53 = __nwlog_obj();
          v59 = v80;
          if (os_log_type_enabled(v53, v80))
          {
            *v88 = 136446210;
            *&v88[4] = "nw_activity_fill_out_client_metric_report";
            _os_log_impl(&dword_181A37000, v53, v59, "%{public}s called with null client_metric, backtrace limit exceeded", v88, 0xCu);
          }
        }
      }

LABEL_126:
      if (v52)
      {
        free(v52);
      }

      v18 = v60;
LABEL_29:

      if (nw_connection_get_symptom_reporter_handle::once != -1)
      {
        dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
      }

      symptom_new();
      symptom_set_qualifier();
      symptom_set_additional_qualifier();
      symptom_send();
LABEL_37:
      if (v61)
      {
        free(v61);
      }

      goto LABEL_39;
    }

    v44 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_activity_submit_metrics";
    *&buf[12] = 2082;
    *&buf[14] = "Invalid metric object submitted";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

    v88[0] = 16;
    v80 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v45, v88, &v80))
    {
      if (v88[0] == 17)
      {
        v46 = __nwlog_obj();
        v47 = v88[0];
        if (os_log_type_enabled(v46, v88[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
        }
      }

      else if (v80 == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v49 = v88[0];
        v50 = os_log_type_enabled(v46, v88[0]);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446722;
            *&buf[4] = "nw_activity_submit_metrics";
            *&buf[12] = 2082;
            *&buf[14] = "Invalid metric object submitted";
            v82 = 2082;
            v83 = v48;
            _os_log_impl(&dword_181A37000, v46, v49, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v48);
          goto LABEL_121;
        }

        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v49, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v55 = v88[0];
        if (os_log_type_enabled(v46, v88[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_submit_metrics";
          *&buf[12] = 2082;
          *&buf[14] = "Invalid metric object submitted";
          _os_log_impl(&dword_181A37000, v46, v55, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_121:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_37;
  }

LABEL_39:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(type, 8);
LABEL_40:
}

void sub_181E51C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  _Block_object_dispose((v38 - 144), 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __nw_activity_submit_metrics_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 140) & 4) == 0)
  {
    v3 = a1;
    v4 = __nwlog_obj();
    *buf = 136446466;
    v20 = "nw_activity_submit_metrics_block_invoke";
    v21 = 2082;
    v22 = "Cannot submit metrics before activation";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics before activation";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_37:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0x16u);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446722;
          v20 = "nw_activity_submit_metrics_block_invoke";
          v21 = 2082;
          v22 = "Cannot submit metrics before activation";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v5)
        {
LABEL_41:
          *(*(*(v3 + 40) + 8) + 24) = 0;
          return;
        }

LABEL_40:
        free(v5);
        goto LABEL_41;
      }

      if (v11)
      {
        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics before activation";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics before activation";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if ((*(v1 + 140) & 8) != 0)
  {
    v3 = a1;
    v9 = __nwlog_obj();
    *buf = 136446466;
    v20 = "nw_activity_submit_metrics_block_invoke";
    v21 = 2082;
    v22 = "Cannot submit metrics after completion";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics after completion";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
        goto LABEL_37;
      }
    }

    else
    {
      if (v17 == 1)
      {
        v15 = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v16 = os_log_type_enabled(v6, type);
        if (v15)
        {
          if (v16)
          {
            *buf = 136446722;
            v20 = "nw_activity_submit_metrics_block_invoke";
            v21 = 2082;
            v22 = "Cannot submit metrics after completion";
            v23 = 2082;
            v24 = v15;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v15);
          if (!v5)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if (!v16)
        {
          goto LABEL_38;
        }

        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics after completion";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_37;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "Cannot submit metrics after completion";
        v8 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

    goto LABEL_38;
  }

  v2 = *(v1 + 120) + 1;
  *(v1 + 120) = v2;
  if (v2 != v2 << 31 >> 31)
  {
    if (gLogDatapath == 1)
    {
      v12 = a1;
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(*(v12 + 32) + 120);
        *buf = 136446978;
        v20 = "nw_activity_submit_metrics_block_invoke";
        v21 = 2082;
        v22 = "activity->client_metric_count";
        v23 = 2048;
        v24 = 1;
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
      }

      a1 = v12;
    }

    *(*(a1 + 32) + 120) = -1;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 120);
}

uint64_t nw_activity_metric_object_is_valid(void *a1, unsigned int a2, const char **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v6 = gactivityLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      Class = object_getClass(v5);
      v8 = "";
      *buf = 136315906;
      if (!a2)
      {
        v8 = "top level ";
      }

      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = Class;
      *&buf[22] = 1024;
      v35 = a2;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "Inspecting %s%@ at depth %u: %@", buf, 0x26u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v35) = 1;
    if (a2 < 0xB)
    {
      v11 = MEMORY[0x1E69E9E80];
      if (a2 || object_getClass(v5) == v11)
      {
        if (object_getClass(v5) == v11)
        {
          nw_append_format(a3, "{");
          *v32 = 0;
          *&v32[8] = v32;
          *&v32[16] = 0x2020000000;
          v33 = 1;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __nw_activity_metric_object_is_valid_block_invoke;
          applier[3] = &unk_1E6A360F8;
          v30 = a2;
          applier[4] = v32;
          applier[5] = buf;
          applier[6] = a3;
          xpc_dictionary_apply(v5, applier);
          nw_append_format(a3, "}");
          _Block_object_dispose(v32, 8);
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9E50])
        {
          nw_append_format(a3, "[");
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __nw_activity_metric_object_is_valid_block_invoke_75;
          v27[3] = &unk_1E6A36120;
          v28 = a2;
          v27[4] = buf;
          v27[5] = a3;
          xpc_array_apply(v5, v27);
          nw_append_format(a3, "]");
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9F10])
        {
          if (gLogDatapath == 1)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v22 = gactivityLogObj;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446466;
              *&v32[4] = "nw_activity_metric_object_is_valid";
              *&v32[12] = 2112;
              *&v32[14] = object_getClass(v5);
              _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %@ is allowed", v32, 0x16u);
            }
          }

          xpc_string_get_string_ptr(v5);
          nw_append_format(a3, "%s");
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9EB0])
        {
          if (gLogDatapath == 1)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v23 = gactivityLogObj;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446466;
              *&v32[4] = "nw_activity_metric_object_is_valid";
              *&v32[12] = 2112;
              *&v32[14] = object_getClass(v5);
              _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %@ is allowed", v32, 0x16u);
            }
          }

          xpc_int64_get_value(v5);
          nw_append_format(a3, "%lld");
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9F18])
        {
          if (gLogDatapath == 1)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v24 = gactivityLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446466;
              *&v32[4] = "nw_activity_metric_object_is_valid";
              *&v32[12] = 2112;
              *&v32[14] = object_getClass(v5);
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %@ is allowed", v32, 0x16u);
            }
          }

          xpc_uint64_get_value(v5);
          nw_append_format(a3, "%llu");
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9E88])
        {
          if (gLogDatapath == 1)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v25 = gactivityLogObj;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446466;
              *&v32[4] = "nw_activity_metric_object_is_valid";
              *&v32[12] = 2112;
              *&v32[14] = object_getClass(v5);
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %@ is allowed", v32, 0x16u);
            }
          }

          xpc_double_get_value(v5);
          nw_append_format(a3, "%f");
        }

        else if (object_getClass(v5) == MEMORY[0x1E69E9E58])
        {
          if (gLogDatapath == 1)
          {
            if (__nwlog_activity_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
            }

            v26 = gactivityLogObj;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446466;
              *&v32[4] = "nw_activity_metric_object_is_valid";
              *&v32[12] = 2112;
              *&v32[14] = object_getClass(v5);
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %@ is allowed", v32, 0x16u);
            }
          }

          xpc_BOOL_get_value(v5);
          nw_append_format(a3, "%s");
        }

        else
        {
          if (__nwlog_activity_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
          }

          v12 = gactivityLogObj;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v32 = 138412546;
            *&v32[4] = v5;
            *&v32[12] = 2112;
            *&v32[14] = object_getClass(v5);
            _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "Invalid type in metric object: %@ (%@)", v32, 0x16u);
          }

          *(*&buf[8] + 24) = 0;
        }

        v10 = *(*&buf[8] + 24);
        goto LABEL_46;
      }

      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v9 = gactivityLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v32 = 138412290;
        *&v32[4] = v5;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "Top level metrics object is not a dictionary: %@", v32, 0xCu);
      }
    }

    else
    {
      if (__nwlog_activity_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
      }

      v9 = gactivityLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v32 = 138412290;
        *&v32[4] = v5;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "Exceeded max depth with object: %@", v32, 0xCu);
      }
    }

    v10 = 0;
LABEL_46:
    _Block_object_dispose(buf, 8);
    goto LABEL_47;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_activity_metric_object_is_valid";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null metrics", buf, 12);

  v32[0] = 16;
  v31 = 0;
  if (__nwlog_fault(v15, v32, &v31))
  {
    if (v32[0] == 17)
    {
      v16 = __nwlog_obj();
      v17 = v32[0];
      if (os_log_type_enabled(v16, v32[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_metric_object_is_valid";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null metrics", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = v32[0];
      v20 = os_log_type_enabled(v16, v32[0]);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_activity_metric_object_is_valid";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null metrics, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_64;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_metric_object_is_valid";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null metrics, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = v32[0];
      if (os_log_type_enabled(v16, v32[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_metric_object_is_valid";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null metrics, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_64:
  if (v15)
  {
    free(v15);
  }

  v10 = 0;
LABEL_47:

  return v10 & 1;
}

void sub_181E52D0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 128), 8);

  _Unwind_Resume(a1);
}

void nw_append_format(const char **a1, char *a2, ...)
{
  va_start(va, a2);
  v65 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      va_copy(v55, va);
      *v56 = 0;
      v4 = vasprintf(v56, a2, va);
      v5 = v4;
      if ((v4 & 0x80000000) == 0 && *v56)
      {
        if (*a1)
        {
          v6 = strlen(*a1);
          v7 = nw_reallocf_type<char *>(*a1, v6 + (v5 + 1));
          *a1 = v7;
          v8 = strlen(v7);
          if (v7)
          {
LABEL_7:
            v9 = *v56;
            if (!*v56)
            {
              v45 = v8;
              v46 = __nwlog_obj();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = 3;
              }

              else
              {
                v47 = 2;
              }

              *buf = 136446210;
              v58 = "_strict_strlcat";
              LODWORD(v52) = 12;
              v48 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s strict_strlcat called with NULL src", buf, v52);
              if (__nwlog_should_abort(v48))
              {
                goto LABEL_108;
              }

              free(v48);
              v8 = v45;
            }

            v10 = v8 + (v5 + 1);
            if (v10)
            {
              while (*v7)
              {
                ++v7;
                if (!--v10)
                {
                  goto LABEL_11;
                }
              }

              if (v9)
              {
                if (v10 >= 2)
                {
                  goto LABEL_41;
                }

                goto LABEL_43;
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

              *buf = 136446210;
              v58 = "_strict_strlcpy";
              LODWORD(v52) = 12;
              v51 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s strict_strlcpy called with NULL src", buf, v52);
              if (!__nwlog_should_abort(v51))
              {
                free(v51);
                if (v10 < 2)
                {
LABEL_43:
                  *v7 = 0;
                  goto LABEL_62;
                }

LABEL_41:
                while (1)
                {
                  v27 = *v9;
                  *v7 = v27;
                  if (!v27)
                  {
                    break;
                  }

                  ++v7;
                  ++v9;
                  if (--v10 <= 1)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_62:
                v34 = *v56;
                if (!*v56)
                {
                  return;
                }

                goto LABEL_63;
              }

LABEL_108:
              __break(1u);
              return;
            }

LABEL_11:
            if (v9)
            {
              goto LABEL_62;
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
            v58 = "_strict_strlcpy";
            LODWORD(v52) = 12;
            v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict_strlcpy called with NULL src", buf, v52);
            if (__nwlog_should_abort(v13))
            {
              goto LABEL_108;
            }

LABEL_61:
            free(v13);
            goto LABEL_62;
          }
        }

        else
        {
          v20 = malloc_type_malloc((v4 + 1), 0xB0CA0761uLL);
          if (!v20)
          {
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

            *buf = 136446210;
            v58 = "nw_append_format";
            v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s strict allocator failed", buf, 12);
            if (__nwlog_should_abort(v23))
            {
              goto LABEL_108;
            }

            free(v23);
            v20 = 0;
          }

          v8 = 0;
          *a1 = v20;
          *v20 = 0;
          v7 = *a1;
          if (*a1)
          {
            goto LABEL_7;
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v58 = "nw_append_format";
        LODWORD(v52) = 12;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s reallocf failed", buf, v52);
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (__nwlog_fault(v13, &type, &v53))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_60;
            }

            *buf = 136446210;
            v58 = "nw_append_format";
            v26 = "%{public}s reallocf failed";
LABEL_58:
            v32 = v24;
            v33 = v25;
LABEL_59:
            _os_log_impl(&dword_181A37000, v32, v33, v26, buf, 0xCu);
            goto LABEL_60;
          }

          if (v53 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_60;
            }

            *buf = 136446210;
            v58 = "nw_append_format";
            v26 = "%{public}s reallocf failed, backtrace limit exceeded";
            goto LABEL_58;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = type;
          v31 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *buf = 136446466;
              v58 = "nw_append_format";
              v59 = 2082;
              v60 = backtrace_string;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s reallocf failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

          else if (v31)
          {
            *buf = 136446210;
            v58 = "nw_append_format";
            v26 = "%{public}s reallocf failed, no backtrace";
            v32 = v29;
            v33 = v30;
            goto LABEL_59;
          }
        }

LABEL_60:
        if (!v13)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v58 = "nw_append_format";
      v59 = 2082;
      v60 = a2;
      v61 = 1024;
      v62 = v5;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s vasprintf(%{public}s) returned %d failed", buf, 28);
      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v14, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v58 = "nw_append_format";
            v59 = 2082;
            v60 = a2;
            v61 = 1024;
            v62 = v5;
            v17 = "%{public}s vasprintf(%{public}s) returned %d failed";
LABEL_51:
            _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x1Cu);
          }
        }

        else if (v53 == 1)
        {
          v18 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          v19 = os_log_type_enabled(gLogObj, type);
          if (v18)
          {
            if (v19)
            {
              *buf = 136446978;
              v58 = "nw_append_format";
              v59 = 2082;
              v60 = a2;
              v61 = 1024;
              v62 = v5;
              v63 = 2082;
              v64 = v18;
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s vasprintf(%{public}s) returned %d failed, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v18);
            goto LABEL_52;
          }

          if (v19)
          {
            *buf = 136446722;
            v58 = "nw_append_format";
            v59 = 2082;
            v60 = a2;
            v61 = 1024;
            v62 = v5;
            v17 = "%{public}s vasprintf(%{public}s) returned %d failed, no backtrace";
            goto LABEL_51;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v58 = "nw_append_format";
            v59 = 2082;
            v60 = a2;
            v61 = 1024;
            v62 = v5;
            v17 = "%{public}s vasprintf(%{public}s) returned %d failed, backtrace limit exceeded";
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      if (v14)
      {
        free(v14);
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      goto LABEL_62;
    }

    v40 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_append_format";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null format", buf, 12);
    v56[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55) = 0;
    if (__nwlog_fault(v36, v56, &v55))
    {
      if (v56[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = v56[0];
        if (!os_log_type_enabled(v37, v56[0]))
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        v58 = "nw_append_format";
        v39 = "%{public}s called with null format";
        goto LABEL_105;
      }

      if (v55 != 1)
      {
        v37 = __nwlog_obj();
        v38 = v56[0];
        if (!os_log_type_enabled(v37, v56[0]))
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        v58 = "nw_append_format";
        v39 = "%{public}s called with null format, backtrace limit exceeded";
        goto LABEL_105;
      }

      v43 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = v56[0];
      v44 = os_log_type_enabled(v37, v56[0]);
      if (v43)
      {
        if (v44)
        {
          *buf = 136446466;
          v58 = "nw_append_format";
          v59 = 2082;
          v60 = v43;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null format, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        if (v36)
        {
          goto LABEL_107;
        }

        return;
      }

      if (v44)
      {
        *buf = 136446210;
        v58 = "nw_append_format";
        v39 = "%{public}s called with null format, no backtrace";
LABEL_105:
        _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      }
    }
  }

  else
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_append_format";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null buffer", buf, 12);
    v56[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55) = 0;
    if (!__nwlog_fault(v36, v56, &v55))
    {
      goto LABEL_106;
    }

    if (v56[0] == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = v56[0];
      if (!os_log_type_enabled(v37, v56[0]))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v58 = "nw_append_format";
      v39 = "%{public}s called with null buffer";
      goto LABEL_105;
    }

    if (v55 != 1)
    {
      v37 = __nwlog_obj();
      v38 = v56[0];
      if (!os_log_type_enabled(v37, v56[0]))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v58 = "nw_append_format";
      v39 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_105;
    }

    v41 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = v56[0];
    v42 = os_log_type_enabled(v37, v56[0]);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v58 = "nw_append_format";
      v39 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_105;
    }

    if (v42)
    {
      *buf = 136446466;
      v58 = "nw_append_format";
      v59 = 2082;
      v60 = v41;
      _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_106:
  if (v36)
  {
LABEL_107:
    v34 = v36;
LABEL_63:
    free(v34);
  }
}

uint64_t __nw_activity_metric_object_is_valid_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    nw_append_format(*(a1 + 48), ",");
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = 0;
  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v7 = gactivityLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = a2;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "Inspecting dictionary key: %s", buf, 0xCu);
  }

  nw_append_format(*(a1 + 48), "%s:", a2);
  is_valid = nw_activity_metric_object_is_valid(v5, *(a1 + 56) + 1, *(a1 + 48));
  if ((is_valid & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return is_valid;
}

void *nw_reallocf_type<char *>(void *a1, size_t __size)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!__size)
  {
    v4 = a1;
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 136446210;
    v13 = "nw_reallocf_type";
    v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_reallocf called with size 0", &v12, 12);
    result = __nwlog_should_abort(v7);
    if (result)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    free(v7);
    a1 = v4;
  }

  result = reallocf(a1, __size);
  if (!result)
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

    v12 = 136446466;
    v13 = "nw_reallocf_type";
    v14 = 2048;
    v15 = __size;
    LODWORD(v11) = 22;
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_reallocf(%zu) failed", &v12, v11);
    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
      return 0;
    }

    goto LABEL_14;
  }

  return result;
}

void nw_framer_input_loop(NWConcrete_nw_framer *a1)
{
  v1 = a1;
  do
  {
    if (v1->received_input_frames.tqh_first)
    {
      v2 = 0;
      nw_frame_array_get_frame_count(&v1->received_input_frames, 1, &v2);
    }

    nw_framer_get_input_from_below(v1);
    if ((*(v1 + 607) & 2) == 0)
    {
      break;
    }

    nw_framer_process_input_callout(v1);
    if (v1->protocol.default_input_handler)
    {
      break;
    }
  }

  while ((*(v1 + 608) & 4) == 0);
}

void __cxx_global_var_init_16966()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__description_def_instance = nw::object::class_def::register_method_def(qword_1ED4119A0, nw::object::_description, 0);
    LOBYTE(qword_1ED4119A0) = v0;
  }
}

void __cxx_global_var_init_2_16967()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__redacted_description_def_instance = nw::object::class_def::register_method_def(qword_1ED411968, nw::object::_redacted_description, 0);
    LOBYTE(qword_1ED411968) = v0;
  }
}

void __cxx_global_var_init_4_16968()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__destroy_def_instance = nw::object::class_def::register_method_def(qword_1ED411980, nw::object::_destroy, 0);
    LOBYTE(qword_1ED411980) = v0;
  }
}

void nw_framer_protocol_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2->parent_definition)
      {
        v4 = *(v2 + 608);
        if ((v4 & 1) == 0)
        {
          if ((*(v2 + 606) & 0x10) != 0)
          {
            nw_framer_signal_input_available(v2);
            v4 = *(v3 + 608);
          }

          if ((v4 & 0x20) != 0)
          {
            if (gLogDatapath == 1)
            {
              v47 = __nwlog_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v55 = "nw_framer_protocol_input_available";
                v56 = 2080;
                log_str = v3->log_str;
                _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %s Input is unacknowledged, not processing input", buf, 0x16u);
              }
            }
          }

          else
          {
            nw_framer_input_loop(v3);
          }

          goto LABEL_14;
        }

        default_input_handler = v2->protocol.default_input_handler;
        if (default_input_handler)
        {
          callbacks = default_input_handler->callbacks;
          if (callbacks)
          {
            input_available = callbacks->input_available;
            if (input_available)
            {
              input_available();
LABEL_14:

              return;
            }
          }
        }

        v8 = __nwlog_obj();
        v9 = v3->protocol.default_input_handler;
        v10 = "invalid";
        if (v9)
        {
          name = v9->identifier->name;
          if (name)
          {
            v10 = name;
          }
        }

        *buf = 136446466;
        v55 = "nw_framer_protocol_input_available";
        v56 = 2082;
        log_str = v10;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s protocol %{public}s has invalid input_available callback", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v12, &type, &v52))
        {
          goto LABEL_102;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            v15 = v3->protocol.default_input_handler;
            v16 = "invalid";
            if (v15)
            {
              v17 = v15->identifier->name;
              if (v17)
              {
                v16 = v17;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_input_available";
            v56 = 2082;
            log_str = v16;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s protocol %{public}s has invalid input_available callback", buf, 0x16u);
          }
        }

        else if (v52 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v13 = __nwlog_obj();
          v27 = type;
          v28 = os_log_type_enabled(v13, type);
          if (backtrace_string)
          {
            if (v28)
            {
              v29 = v3->protocol.default_input_handler;
              v30 = "invalid";
              if (v29)
              {
                v31 = v29->identifier->name;
                if (v31)
                {
                  v30 = v31;
                }
              }

              *buf = 136446722;
              v55 = "nw_framer_protocol_input_available";
              v56 = 2082;
              log_str = v30;
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v13, v27, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            if (!v12)
            {
              goto LABEL_14;
            }

            goto LABEL_103;
          }

          if (v28)
          {
            v49 = v3->protocol.default_input_handler;
            v50 = "invalid";
            if (v49)
            {
              v51 = v49->identifier->name;
              if (v51)
              {
                v50 = v51;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_input_available";
            v56 = 2082;
            log_str = v50;
            _os_log_impl(&dword_181A37000, v13, v27, "%{public}s protocol %{public}s has invalid input_available callback, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v13 = __nwlog_obj();
          v41 = type;
          if (os_log_type_enabled(v13, type))
          {
            v42 = v3->protocol.default_input_handler;
            v43 = "invalid";
            if (v42)
            {
              v44 = v42->identifier->name;
              if (v44)
              {
                v43 = v44;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_input_available";
            v56 = 2082;
            log_str = v43;
            _os_log_impl(&dword_181A37000, v13, v41, "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      else
      {
        v24 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_framer_protocol_input_available";
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null framer->parent_definition", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v12, &type, &v52))
        {
          goto LABEL_102;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_input_available";
            _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v52 == 1)
        {
          v38 = __nw_create_backtrace_string();
          v13 = __nwlog_obj();
          v39 = type;
          v40 = os_log_type_enabled(v13, type);
          if (v38)
          {
            if (v40)
            {
              *buf = 136446466;
              v55 = "nw_framer_protocol_input_available";
              v56 = 2082;
              log_str = v38;
              _os_log_impl(&dword_181A37000, v13, v39, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v38);
            if (!v12)
            {
              goto LABEL_14;
            }

            goto LABEL_103;
          }

          if (v40)
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_input_available";
            _os_log_impl(&dword_181A37000, v13, v39, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v13 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_input_available";
            _os_log_impl(&dword_181A37000, v13, v48, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v22 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_framer_protocol_input_available";
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v12, &type, &v52))
      {
        goto LABEL_102;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_input_available";
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v35 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v13, type);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v55 = "nw_framer_protocol_input_available";
            v56 = 2082;
            log_str = v35;
            _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
LABEL_102:
          if (!v12)
          {
            goto LABEL_14;
          }

LABEL_103:
          free(v12);
          goto LABEL_14;
        }

        if (v37)
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_input_available";
          _os_log_impl(&dword_181A37000, v13, v36, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_input_available";
          _os_log_impl(&dword_181A37000, v13, v46, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_102;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_framer_protocol_input_available";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v19, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_input_available";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v20, type);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446466;
          v55 = "nw_framer_protocol_input_available";
          v56 = 2082;
          log_str = v32;
          _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        goto LABEL_94;
      }

      if (v34)
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_input_available";
        _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_input_available";
        _os_log_impl(&dword_181A37000, v20, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_94:
  if (v19)
  {
    free(v19);
  }
}

void nw_framer_signal_input_available(NWConcrete_nw_framer *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ((*(v1 + 607) & 1) == 0 && (*(v1 + 606) & 0x80000000) == 0)
  {
    default_input_handler = v1->protocol.default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        if (callbacks->input_available)
        {
          *(v1 + 607) |= 1u;
          if (v1->pending_input_frames.tqh_first)
          {
            *(v1 + 608) |= 0x20u;
          }

          v4 = default_input_handler->callbacks;
          if (v4)
          {
            input_available = v4->input_available;
            if (input_available)
            {
              v6 = v1;
              input_available(default_input_handler, &v1->protocol);
LABEL_11:
              v1 = v6;
              *(v6 + 607) &= ~1u;
              goto LABEL_12;
            }
          }

          v6 = v1;
          v7 = __nwlog_obj();
          v8 = v6->protocol.default_input_handler;
          v9 = "invalid";
          if (v8)
          {
            name = v8->identifier->name;
            if (name)
            {
              v9 = name;
            }
          }

          *buf = 136446466;
          v33 = "nw_framer_signal_input_available";
          v34 = 2082;
          v35 = v9;
          v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s protocol %{public}s has invalid input_available callback", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v30 = 0;
          if (__nwlog_fault(v11, &type, &v30))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v12 = __nwlog_obj();
              v13 = type;
              if (os_log_type_enabled(v12, type))
              {
                v14 = v6->protocol.default_input_handler;
                v15 = "invalid";
                if (v14)
                {
                  v16 = v14->identifier->name;
                  if (v16)
                  {
                    v15 = v16;
                  }
                }

                *buf = 136446466;
                v33 = "nw_framer_signal_input_available";
                v34 = 2082;
                v35 = v15;
                _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid input_available callback", buf, 0x16u);
              }
            }

            else if (v30 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v12 = __nwlog_obj();
              v18 = type;
              v19 = os_log_type_enabled(v12, type);
              if (backtrace_string)
              {
                if (v19)
                {
                  v20 = v6->protocol.default_input_handler;
                  v21 = "invalid";
                  if (v20)
                  {
                    v22 = v20->identifier->name;
                    if (v22)
                    {
                      v21 = v22;
                    }
                  }

                  *buf = 136446722;
                  v33 = "nw_framer_signal_input_available";
                  v34 = 2082;
                  v35 = v21;
                  v36 = 2082;
                  v37 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v12, v18, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(backtrace_string);
                goto LABEL_44;
              }

              if (v19)
              {
                v27 = v6->protocol.default_input_handler;
                v28 = "invalid";
                if (v27)
                {
                  v29 = v27->identifier->name;
                  if (v29)
                  {
                    v28 = v29;
                  }
                }

                *buf = 136446466;
                v33 = "nw_framer_signal_input_available";
                v34 = 2082;
                v35 = v28;
                _os_log_impl(&dword_181A37000, v12, v18, "%{public}s protocol %{public}s has invalid input_available callback, no backtrace", buf, 0x16u);
              }
            }

            else
            {
              v12 = __nwlog_obj();
              v23 = type;
              if (os_log_type_enabled(v12, type))
              {
                v24 = v6->protocol.default_input_handler;
                v25 = "invalid";
                if (v24)
                {
                  v26 = v24->identifier->name;
                  if (v26)
                  {
                    v25 = v26;
                  }
                }

                *buf = 136446466;
                v33 = "nw_framer_signal_input_available";
                v34 = 2082;
                v35 = v25;
                _os_log_impl(&dword_181A37000, v12, v23, "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded", buf, 0x16u);
              }
            }
          }

LABEL_44:
          if (v11)
          {
            free(v11);
          }

          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
}

uint64_t nw_framer_protocol_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a1->handle;
    v9 = v8;
    if (v8)
    {
      if (v8->parent_definition)
      {
        if ((*(v8 + 606) & 0x10) == 0)
        {
          goto LABEL_5;
        }

        *(v8 + 608) &= ~0x20u;
        pending_input_frame_count = v8->pending_input_frame_count;
        if (!pending_input_frame_count)
        {
          nw_framer_process_body_input(v8);
          pending_input_frame_count = v9->pending_input_frame_count;
          if (!pending_input_frame_count)
          {
            if (*(v9 + 608))
            {
              output_handler = a1->output_handler;
              if (output_handler)
              {
                callbacks = output_handler->callbacks;
                if (callbacks)
                {
                  get_input_frames = callbacks->get_input_frames;
                  if (get_input_frames)
                  {
                    v10 = get_input_frames();
                    goto LABEL_11;
                  }
                }
              }

              v43 = a1->output_handler;
              v44 = __nwlog_obj();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v48 = "nw_framer_protocol_get_input_frames";
                v49 = 2080;
                log_str = v9->log_str;
                v51 = 2048;
                v52 = v43;
                _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %s Unable to call get_input_frames with output_handler %p", buf, 0x20u);
              }

LABEL_5:
              v10 = 0;
LABEL_11:

              return v10;
            }

            nw_framer_get_input_from_below(v9);
            nw_framer_process_input_callout(v9);
            pending_input_frame_count = v9->pending_input_frame_count;
            if (!pending_input_frame_count)
            {
              goto LABEL_5;
            }
          }
        }

        v9->pending_input_frame_count = pending_input_frame_count - 1;
        v12 = v9->pending_input_frames.tqh_first;
        p_tqh_last = &v9->pending_input_frames.tqh_last;
        v14 = (v12 + 32);
        v15 = *(v12 + 4);
        v16 = *(v12 + 5);
        if (v15)
        {
          p_tqh_last = (v15 + 40);
        }

        *p_tqh_last = v16;
        *v16 = v15;
        *(v12 + 5) = 0;
        *v14 = 0;
        tqh_last = a6->tqh_last;
        *(v12 + 5) = tqh_last;
        *tqh_last = v12;
        a6->tqh_last = v14;

        v10 = 1;
        goto LABEL_11;
      }

      v30 = __nwlog_obj();
      *buf = 136446210;
      v48 = "nw_framer_protocol_get_input_frames";
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (!__nwlog_fault(v27, &type, &v45))
      {
LABEL_74:
        if (v27)
        {
          free(v27);
        }

        goto LABEL_5;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_73:

        goto LABEL_74;
      }

      if (v45 != 1)
      {
        v28 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v42, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_73;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v28, type);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v39)
      {
        *buf = 136446466;
        v48 = "nw_framer_protocol_get_input_frames";
        v49 = 2082;
        log_str = backtrace_string;
        _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      *buf = 136446210;
      v48 = "nw_framer_protocol_get_input_frames";
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (!__nwlog_fault(v27, &type, &v45))
      {
        goto LABEL_74;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v45 != 1)
      {
        v28 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v41, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_73;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v28, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v48 = "nw_framer_protocol_get_input_frames";
          _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v37)
      {
        *buf = 136446466;
        v48 = "nw_framer_protocol_get_input_frames";
        v49 = 2082;
        log_str = backtrace_string;
        _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_74;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v48 = "nw_framer_protocol_get_input_frames";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v23, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v48 = "nw_framer_protocol_get_input_frames";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v24, type);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446466;
          v48 = "nw_framer_protocol_get_input_frames";
          v49 = 2082;
          log_str = v32;
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        goto LABEL_65;
      }

      if (v34)
      {
        *buf = 136446210;
        v48 = "nw_framer_protocol_get_input_frames";
        _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v48 = "nw_framer_protocol_get_input_frames";
        _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_65:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

void nw_framer_process_body_input(NWConcrete_nw_framer *a1)
{
  framer = a1;
  if (framer->input_body_remaining && framer->received_input_frames.tqh_first)
  {
    v1 = framer;
    do
    {
      input_body_remaining = v1->input_body_remaining;
      if (!input_body_remaining)
      {
        break;
      }

      v1->input_body_remaining = 0;
      v3 = nw_framer_deliver_input_no_copy(&v1->super, input_body_remaining, v1->pending_inbound_message, (*(v1 + 607) & 8) != 0);
      v1 = framer;
    }

    while (v3);
    if (v1->pending_input_frames.tqh_first)
    {
      nw_framer_signal_input_available(framer);
    }
  }
}

uint64_t __nw_framer_deliver_input_no_copy_block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_11;
  }

  HIDWORD(v55) = 0;
  v5 = nw_frame_unclaimed_bytes(v3, &v55 + 1);
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 == HIDWORD(v55))
  {
    if (gLogDatapath == 1)
    {
      v36 = __nwlog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 32);
        if (v37)
        {
          v38 = (v37 + 609);
        }

        else
        {
          v38 = "";
        }

        v39 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136446978;
        v57 = "nw_framer_deliver_input_no_copy_block_invoke";
        v58 = 2080;
        v59 = v38;
        v60 = 1024;
        v61 = HIDWORD(v55);
        v62 = 2048;
        v63 = v39;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %s Parsing exact body (%u/%zu)", buf, 0x26u);
      }
    }

    nw_frame_set_metadata(v4, *(a1 + 40), 1, *(a1 + 56));
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = (v8 + 520);
    v10 = v4 + 4;
    v11 = v4[4];
    v12 = v4[5];
    if (v11)
    {
      v9 = (v11 + 40);
    }

    *v9 = v12;
    *v12 = v11;
    v4[5] = 0;
    *v10 = 0;
    v13 = *v7;
    v14 = *(*v7 + 536);
    v4[5] = v14;
    *v14 = v4;
    *(v13 + 536) = v10;
    ++*(*v7 + 544);
    v15 = *(*v7 + 384);
    *(*v7 + 384) = 0;

    v16 = 0;
    *(*v7 + 504) = 0;
    goto LABEL_12;
  }

  if (v6 >= HIDWORD(v55))
  {
    if (HIDWORD(v55))
    {
      if (gLogDatapath)
      {
        v47 = __nwlog_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = *(a1 + 32);
          if (v48)
          {
            v49 = (v48 + 609);
          }

          else
          {
            v49 = "";
          }

          v50 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 136446978;
          v57 = "nw_framer_deliver_input_no_copy_block_invoke";
          v58 = 2080;
          v59 = v49;
          v60 = 1024;
          v61 = HIDWORD(v55);
          v62 = 2048;
          v63 = v50;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %s Parsing partial body (%u/%zu)", buf, 0x26u);
        }
      }

      v16 = 1;
      nw_frame_set_metadata(v4, *(a1 + 40), 1, 0);
      v26 = v4 + 4;
      v27 = v4[4];
      v28 = (*(a1 + 32) + 520);
      v29 = v4[5];
      if (v27)
      {
        v28 = (v27 + 40);
      }

      *v28 = v29;
      *v29 = v27;
      v4[5] = 0;
      *v26 = 0;
      v30 = *(a1 + 32);
      v31 = *(v30 + 536);
      v4[5] = v31;
      *v31 = v4;
      *(v30 + 536) = v26;
      ++*(*(a1 + 32) + 544);
      *(*(a1 + 32) + 504) = *(*(*(a1 + 48) + 8) + 24) - HIDWORD(v55);
      *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 504);
    }

    else
    {
      if (gLogDatapath)
      {
        v51 = __nwlog_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v52 = *(a1 + 32);
          if (v52)
          {
            v53 = (v52 + 609);
          }

          else
          {
            v53 = "";
          }

          v54 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 136446978;
          v57 = "nw_framer_deliver_input_no_copy_block_invoke";
          v58 = 2080;
          v59 = v53;
          v60 = 1024;
          v61 = HIDWORD(v55);
          v62 = 2048;
          v63 = v54;
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %s Not enough bytes to parse body (%u/%zu)", buf, 0x26u);
        }

        v6 = *(*(*(a1 + 48) + 8) + 24);
        v32 = HIDWORD(v55) == 0;
      }

      else
      {
        v32 = 1;
      }

      *(*(a1 + 32) + 504) = v6;
      *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 504);
      if (v32)
      {
        v33 = (*(a1 + 32) + 520);
        v34 = v4[4];
        v35 = v4[5];
        if (v34)
        {
          v33 = (v34 + 40);
        }

        *v33 = v35;
        *v35 = v34;
        v4[4] = 0;
        v4[5] = 0;
        v16 = 1;
        nw_frame_finalize(v4);
      }

      else
      {
        v16 = 1;
      }
    }

    goto LABEL_12;
  }

  v17 = v5;
  if (gLogDatapath == 1)
  {
    v40 = __nwlog_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 32);
      if (v41)
      {
        v42 = (v41 + 609);
      }

      else
      {
        v42 = "";
      }

      v43 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446978;
      v57 = "nw_framer_deliver_input_no_copy_block_invoke";
      v58 = 2080;
      v59 = v42;
      v60 = 1024;
      v61 = HIDWORD(v55);
      v62 = 2048;
      v63 = v43;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %s Parsing full body (%u/%zu)", buf, 0x26u);
    }

    v6 = *(*(*(a1 + 48) + 8) + 24);
  }

  frame = nw_framer_protocol_create_frame(*(a1 + 32), v6, nw_framer_protocol_inbound_data_finalizer, *(a1 + 32) + 464, 0);
  v19 = nw_frame_unclaimed_bytes(frame, 0);
  nw_frame_set_metadata(frame, *(a1 + 40), 1, *(a1 + 56));
  memcpy(v19, v17, *(*(*(a1 + 48) + 8) + 24));
  nw_frame_claim(v4, v20, *(*(*(a1 + 48) + 8) + 24), 0);
  if (nw_frame_unclaimed_length(v4))
  {
LABEL_10:
    v22 = *(a1 + 32);
    v21 = a1 + 32;
    frame[4] = 0;
    v23 = *(v22 + 536);
    frame[5] = v23;
    *v23 = frame;
    *(v22 + 536) = frame + 4;
    ++*(*v21 + 544);
    v24 = *(*v21 + 384);
    *(*v21 + 384) = 0;

    *(*v21 + 504) = 0;
LABEL_11:
    v16 = 0;
LABEL_12:

    return v16;
  }

  v44 = __nwlog_obj();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  *buf = 136446210;
  v57 = "nw_framer_deliver_input_no_copy_block_invoke";
  LODWORD(v55) = 12;
  v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s Frame has no more unclaimed bytes left", buf, v55);

  result = __nwlog_should_abort(v46);
  if (!result)
  {
    free(v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

BOOL nw_framer_deliver_input_no_copy(nw_framer_t framer, size_t input_length, nw_framer_message_t message, BOOL is_complete)
{
  v4 = is_complete;
  v48 = *MEMORY[0x1E69E9840];
  v7 = framer;
  v8 = message;
  v9 = v8;
  if (!v7)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_deliver_input_no_copy";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null framer", buf, 0xCu);
      }

      goto LABEL_68;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v28 = type;
    v29 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }

      goto LABEL_68;
    }

    if (v29)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_deliver_input_no_copy";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_50;
  }

  if (!v8)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_deliver_input_no_copy";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null message", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null message", buf, 0xCu);
      }

      goto LABEL_68;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v30 = type;
    v31 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }

      goto LABEL_68;
    }

    if (v31)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_deliver_input_no_copy";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_50;
  }

  if (!nw_protocol_metadata_is_framer_message(v8))
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_deliver_input_no_copy";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null nw_protocol_metadata_is_framer_message(message)", buf, 0xCu);
      }

LABEL_68:

LABEL_69:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_6;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_68;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), no backtrace", buf, 0xCu);
      }

      goto LABEL_68;
    }

    if (v33)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_deliver_input_no_copy";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null nw_protocol_metadata_is_framer_message(message), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_50:

    free(backtrace_string);
    goto LABEL_69;
  }

  nw_context_assert_queue(v7[46].isa);
  if (v7[63].isa)
  {
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_framer_deliver_input_no_copy";
        *&buf[12] = 2080;
        *&buf[14] = v7 + 609;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %s Cannot start a new parse with an outstanding parse", buf, 0x16u);
      }
    }

LABEL_6:
    v10 = 0;
    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v47 = input_length;
  if (input_length)
  {
    v7[63].isa = input_length;
    objc_storeStrong(&v7[48].isa, message);
    if (v4)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    HIBYTE(v7[75].isa) = HIBYTE(v7[75].isa) & 0xF7 | v11;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __nw_framer_deliver_input_no_copy_block_invoke;
    v39 = &unk_1E6A2C128;
    v42 = buf;
    v40 = v7;
    v41 = v9;
    v43 = v4;
    isa = v7[64].isa;
    do
    {
      if (!isa)
      {
        break;
      }

      v13 = *(isa + 4);
      v14 = (v38)(v37);
      isa = v13;
    }

    while ((v14 & 1) != 0);
    v10 = v7[63].isa == 0;

    frame = v40;
  }

  else
  {
    frame = nw_framer_protocol_create_frame(v7, 0, nw_framer_protocol_inbound_data_finalizer, &v7[58], 0);
    v10 = 1;
    nw_frame_set_metadata(frame, v9, 1, v4);
    frame[4].isa = 0;
    v16 = v7[67].isa;
    frame[5].isa = v16;
    *v16 = frame;
    v7[67].isa = &frame[4];
    ++LODWORD(v7[68].isa);
  }

  _Block_object_dispose(buf, 8);
LABEL_17:

  return v10;
}

void sub_181E56670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void nw_framer_process_input_callout(NWConcrete_nw_framer *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_framer_process_input_callout";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v14, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v26 = "nw_framer_process_input_callout";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v23 == 1)
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
            v26 = "nw_framer_process_input_callout";
            v27 = 2082;
            log_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (v19)
        {
          *buf = 136446210;
          v26 = "nw_framer_process_input_callout";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v26 = "nw_framer_process_input_callout";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_41:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_6;
  }

  nw_framer_process_body_input(v1);
  v3 = *(v2 + 607);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(v2 + 606);
    if ((v4 & 0x80000000) == 0)
    {
      parse_input = v2->parse_input;
      if (parse_input)
      {
        if (!v2->input_body_remaining && v2->received_input_frames.tqh_first)
        {
          *(v2 + 606) = v4 | 0x80;
          *(v2 + 607) = v3 & 0x7D;
          v2->input_needed = parse_input[2](parse_input, v2);
          *(v2 + 606) &= ~0x80u;
          v6 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          if (gLogDatapath == 1)
          {
            v21 = __nwlog_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              input_needed = v2->input_needed;
              *buf = 136446722;
              v26 = "nw_framer_process_input_callout";
              v27 = 2080;
              log_str = v2->log_str;
              v29 = 2048;
              v30 = input_needed;
              _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %s Requested %zu more bytes", buf, 0x20u);
            }
          }

          if (*(v2 + 607) & 2) == 0 || (*(v2 + 608))
          {
LABEL_23:
            if (v2->pending_input_frames.tqh_first)
            {
              nw_framer_signal_input_available(v2);
            }
          }

          else
          {
            while (1)
            {
              nw_framer_process_body_input(v2);
              v7 = *(v2 + 607);
              if (v7 < 0)
              {
                break;
              }

              v8 = *(v2 + 606);
              if (v8 < 0)
              {
                goto LABEL_23;
              }

              v9 = v2->parse_input;
              if (!v9 || v2->input_body_remaining || !v2->received_input_frames.tqh_first)
              {
                goto LABEL_23;
              }

              *(v2 + 606) = v8 | 0x80;
              *(v2 + 607) = v7 & 0x7D;
              v2->input_needed = v9[2](v9, v2);
              *(v2 + 606) &= ~0x80u;
              if (BYTE1(v6[82].isa) == 1)
              {
                v10 = v6;
                v11 = __nwlog_obj();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  v12 = v2->input_needed;
                  *buf = 136446722;
                  v26 = "nw_framer_process_input_callout";
                  v27 = 2080;
                  log_str = v2->log_str;
                  v29 = 2048;
                  v30 = v12;
                  _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %s Requested %zu more bytes", buf, 0x20u);
                }

                v6 = v10;
                if ((*(v2 + 607) & 2) == 0)
                {
                  goto LABEL_23;
                }
              }

              else if ((*(v2 + 607) & 2) == 0)
              {
                goto LABEL_23;
              }

              if (*(v2 + 608))
              {
                goto LABEL_23;
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
}

BOOL nw_framer_parse_input(nw_framer_t framer, size_t minimum_incomplete_length, size_t maximum_length, uint8_t *temp_buffer, nw_framer_parse_completion_t parse)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = framer;
  v10 = parse;
  if (v9)
  {
    nw_context_assert_queue(v9[46].isa);
    if (v9[63].isa)
    {
      if (gLogDatapath == 1)
      {
        v17 = __nwlog_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v25 = "nw_framer_parse_input";
          v26 = 2080;
          v27 = &v9[76].isa + 1;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %s Cannot start a new parse with an outstanding parse", buf, 0x16u);
        }
      }

      (*(v10 + 2))(v10, 0, 0, 0);
      v11 = 0;
    }

    else
    {
      v11 = nw_framer_parse_array(v9, &v9[64].isa, 1, (BYTE6(v9[75].isa) & 2) != 0, minimum_incomplete_length, maximum_length, temp_buffer, v10);
    }

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_framer_parse_input";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null framer", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v14, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v25 = "nw_framer_parse_input";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v25 = "nw_framer_parse_input";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v19, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_framer_parse_input";
        _os_log_impl(&dword_181A37000, v15, v19, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v25 = "nw_framer_parse_input";
        _os_log_impl(&dword_181A37000, v15, v21, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_6:

  return v11;
}

uint64_t nw_framer_parse_array(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v82 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v15 = a8;
  v16 = v15;
  v17 = 0;
  v18 = *a2;
  while (v18)
  {
    v22 = *(v18 + 52);
    if (v22)
    {
      v22 -= *(v18 + 56) + *(v18 + 60);
    }

    v18 = *(v18 + 32);
    v19 = __CFADD__(v17, v22);
    v20 = v17 + v22;
    v17 += v22;
    if (v19)
    {
      v21 = -1;
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= a5)
    {
      goto LABEL_12;
    }
  }

  if (v17 >= a5)
  {
LABEL_12:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v81) = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = a7;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v65 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v49 = ___ZL21nw_framer_parse_arrayP20NWConcrete_nw_framerP16nw_frame_array_sbbmmPhU13block_pointerFmS3_mbE_block_invoke;
    v50 = &unk_1E6A2C1A0;
    v62 = a3;
    v59 = a6;
    v60 = a5;
    v53 = &v66;
    v54 = &v70;
    v58 = a2;
    v55 = &v74;
    v63 = a4;
    v25 = v15;
    v52 = v25;
    v23 = v40;
    v26 = v40;
    v51 = v26;
    v56 = buf;
    v57 = v64;
    v61 = a7;
    v27 = *a2;
    do
    {
      if (!v27)
      {
        break;
      }

      v28 = *(v27 + 32);
      v29 = (v49)(v48);
      v27 = v28;
    }

    while ((v29 & 1) != 0);
    if ((*(*&buf[8] + 24) & 1) == 0 && v67[3])
    {
      if (gLogDatapath == 1)
      {
        v38 = __nwlog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = v67[3];
          *v78 = 136446722;
          *&v78[4] = "nw_framer_parse_array";
          *&v78[12] = 2080;
          *&v78[14] = v26 + 609;
          *&v78[22] = 2048;
          v79 = v39;
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %s Reconstructed buffer of %zu bytes", v78, 0x20u);
        }
      }

      v30 = (*(v25 + 2))(v25, v71[3]);
      if (v30)
      {
        v31 = v67[3];
        if (v30 < v31)
        {
          LODWORD(v31) = v30;
        }

        *v78 = 0;
        *&v78[8] = v78;
        *&v78[16] = 0x2020000000;
        LODWORD(v79) = v31;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v42 = ___ZL21nw_framer_parse_arrayP20NWConcrete_nw_framerP16nw_frame_array_sbbmmPhU13block_pointerFmS3_mbE_block_invoke_135;
        v43 = &unk_1E6A2C1C8;
        v45 = v78;
        v47 = a3;
        v44 = v26;
        v46 = a2;
        v32 = *a2;
        do
        {
          if (!v32)
          {
            break;
          }

          v33 = *(v32 + 32);
          v34 = (v42)(v41);
          v32 = v33;
        }

        while ((v34 & 1) != 0);

        _Block_object_dispose(v78, 8);
      }
    }

    v35 = v75[3];
    if (v35)
    {
      free(v35);
      v75[3] = 0;
    }

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(buf, 8);
    v24 = 1;
    goto LABEL_28;
  }

  v23 = v40;
  if (gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_framer_parse_array";
      *&buf[12] = 2080;
      *&buf[14] = v40 + 609;
      *&buf[22] = 2048;
      v81 = a5;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %s Not enough bytes to parse %zu", buf, 0x20u);
    }
  }

  v16[2](v16, 0, 0, 0);
  v24 = 0;
LABEL_28:

  return v24;
}

void sub_181E573A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 160), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL21nw_framer_parse_arrayP20NWConcrete_nw_framerP16nw_frame_array_sbbmmPhU13block_pointerFmS3_mbE_block_invoke(uint64_t a1, void *a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!nw_frame_uses_external_data(v3))
  {
    HIDWORD(__n) = 0;
    v17 = nw_frame_unclaimed_bytes(v3, &__n + 1);
    v18 = HIDWORD(__n);
    if (HIDWORD(__n))
    {
      v19 = v17;
      v20 = *(a1 + 48);
      v21 = *(*(v20 + 8) + 24);
      if (*(a1 + 96) - v21 >= HIDWORD(__n))
      {
        v22 = HIDWORD(__n);
      }

      else
      {
        v22 = *(a1 + 96) - v21;
      }

      if (!v21 && v22 >= *(a1 + 104))
      {
        if (*(a1 + 112))
        {
          memcpy(*(a1 + 112), v17, v22);
        }

        v43 = (*(*(a1 + 40) + 16))();
        if (v43)
        {
          if (v43 >= v22)
          {
            v45 = v22;
          }

          else
          {
            v45 = v43;
          }

          nw_frame_claim(v3, v44, v45, 0);
        }

        if (*(a1 + 120) == 1 && !nw_frame_unclaimed_length(v3))
        {
          v46 = (*(a1 + 88) + 8);
          v47 = *(v3 + 4);
          v48 = *(v3 + 5);
          if (v47)
          {
            v46 = (v47 + 40);
          }

          *v46 = v48;
          *v48 = v47;
          *(v3 + 4) = 0;
          *(v3 + 5) = 0;
          nw_frame_finalize(v3);
        }

        v32 = 0;
        *(*(*(a1 + 72) + 8) + 24) = 1;
        goto LABEL_102;
      }

      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        v23 = *(a1 + 104);
        if (!v23)
        {
          v78 = __nwlog_obj();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = 3;
          }

          else
          {
            v79 = 2;
          }

          *buf = 136446210;
          v87 = "nw_framer_parse_array_block_invoke";
          v80 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s strict_malloc called with size 0", buf, 12);

          result = __nwlog_should_abort(v80);
          if (result)
          {
            goto LABEL_142;
          }

          free(v80);
          v23 = 0;
        }

        v24 = malloc_type_malloc(v23, 0x4FE896F1uLL);
        if (!v24)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          *buf = 136446210;
          v87 = "nw_framer_parse_array_block_invoke";
          LODWORD(v84) = 12;
          v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s strict allocator failed", buf, v84);

          result = __nwlog_should_abort(v27);
          if (result)
          {
            goto LABEL_142;
          }

          free(v27);
          v24 = 0;
        }

        *(*(*(a1 + 64) + 8) + 24) = v24;
        *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        v20 = *(a1 + 48);
        v21 = *(*(v20 + 8) + 24);
        v18 = HIDWORD(__n);
      }

      v28 = *(a1 + 104) - v21;
      if (v28 <= v18)
      {
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v22 = v28;
        }

        if (v22 == v18)
        {
          v37 = (*(a1 + 121) & 1) != 0 || *(v3 + 186) < 0;
          *(*(*(a1 + 80) + 8) + 24) = v37;
        }

        if (gLogDatapath == 1)
        {
          v70 = __nwlog_obj();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            v71 = *(a1 + 32);
            if (v71)
            {
              v72 = (v71 + 609);
            }

            else
            {
              v72 = "";
            }

            v73 = *(*(*(a1 + 48) + 8) + 24);
            v74 = *(a1 + 104);
            *buf = 136447234;
            v87 = "nw_framer_parse_array_block_invoke";
            v88 = 2080;
            v89 = v72;
            v90 = 2048;
            v91 = v73;
            v92 = 2048;
            v93 = v73 + v22;
            v94 = 2048;
            v95 = v74;
            _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %s Reading from %zu-%zu of %zu (complete)", buf, 0x34u);
          }
        }

        memcpy((*(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24)), v19, v22);
        v32 = 0;
        *(*(*(a1 + 48) + 8) + 24) += v22;
        goto LABEL_102;
      }

      if (gLogDatapath == 1)
      {
        v60 = __nwlog_obj();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(a1 + 32);
          if (v61)
          {
            v62 = (v61 + 609);
          }

          else
          {
            v62 = "";
          }

          v63 = *(*(*(a1 + 48) + 8) + 24);
          v64 = *(a1 + 104);
          *buf = 136447234;
          v87 = "nw_framer_parse_array_block_invoke";
          v88 = 2080;
          v89 = v62;
          v90 = 2048;
          v91 = v63;
          v92 = 2048;
          v93 = v63 + HIDWORD(__n);
          v94 = 2048;
          v95 = v64;
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %s Reading from %zu-%zu of %zu (partial)", buf, 0x34u);
        }

        v20 = *(a1 + 48);
        LODWORD(v18) = HIDWORD(__n);
      }

      memcpy((*(*(*(a1 + 56) + 8) + 24) + *(*(v20 + 8) + 24)), v19, v18);
      *(*(*(a1 + 48) + 8) + 24) += HIDWORD(__n);
    }

    else if (*(a1 + 120) == 1)
    {
      v33 = (*(a1 + 88) + 8);
      v34 = *(v3 + 4);
      v35 = *(v3 + 5);
      if (v34)
      {
        v33 = (v34 + 40);
      }

      *v33 = v35;
      *v35 = v34;
      *(v3 + 4) = 0;
      *(v3 + 5) = 0;
      v32 = 1;
      nw_frame_finalize(v3);
      goto LABEL_102;
    }

    v32 = 1;
LABEL_102:

    return v32;
  }

  __n = 0;
  v4 = nw_frame_copy_external_data(v3, &__n, &__n + 1);
  v5 = HIDWORD(__n);
  if (!HIDWORD(__n))
  {
    if (*(a1 + 120) == 1)
    {
      v29 = (*(a1 + 88) + 8);
      v30 = *(v3 + 4);
      v31 = *(v3 + 5);
      if (v30)
      {
        v29 = (v30 + 40);
      }

      *v29 = v31;
      *v31 = v30;
      *(v3 + 4) = 0;
      *(v3 + 5) = 0;
      v32 = 1;
      nw_frame_finalize(v3);
      goto LABEL_101;
    }

    goto LABEL_42;
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 48);
  v8 = *(*(v7 + 8) + 24);
  if (v6 - v8 >= HIDWORD(__n))
  {
    v9 = HIDWORD(__n);
  }

  else
  {
    v9 = v6 - v8;
  }

  if (!v8 && v9 >= *(a1 + 104))
  {
    v38 = *(*(*(a1 + 56) + 8) + 24);
    if (!v38)
    {
      if (!v6)
      {
        v81 = __nwlog_obj();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        *buf = 136446210;
        v87 = "nw_framer_parse_array_block_invoke";
        v83 = _os_log_send_and_compose_impl(v82, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s strict_malloc called with size 0", buf, 12);

        result = __nwlog_should_abort(v83);
        if (result)
        {
          goto LABEL_142;
        }

        free(v83);
      }

      v39 = malloc_type_malloc(v9, 0x7496CE4DuLL);
      if (!v39)
      {
        v40 = __nwlog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *buf = 136446210;
        v87 = "nw_framer_parse_array_block_invoke";
        LODWORD(v84) = 12;
        v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s strict allocator failed", buf, v84);

        result = __nwlog_should_abort(v42);
        if (result)
        {
          goto LABEL_142;
        }

        free(v42);
        v39 = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = v39;
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      v38 = *(*(*(a1 + 56) + 8) + 24);
    }

    nw_dispatch_data_copyout_from_offset(v4, v38, v9, __n);
    v49 = (*(*(a1 + 40) + 16))();
    if (v49)
    {
      if (v49 >= v9)
      {
        v51 = v9;
      }

      else
      {
        v51 = v49;
      }

      nw_frame_claim(v3, v50, v51, 0);
    }

    if (*(a1 + 120) == 1 && !nw_frame_unclaimed_length(v3))
    {
      v52 = (*(a1 + 88) + 8);
      v53 = *(v3 + 4);
      v54 = *(v3 + 5);
      if (v53)
      {
        v52 = (v53 + 40);
      }

      *v52 = v54;
      *v54 = v53;
      *(v3 + 4) = 0;
      *(v3 + 5) = 0;
      nw_frame_finalize(v3);
    }

    v32 = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_101;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
LABEL_17:
    v16 = *(a1 + 104) - v8;
    if (v16 <= v5)
    {
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v9 = v16;
      }

      if (v9 == v5)
      {
        v36 = (*(a1 + 121) & 1) != 0 || *(v3 + 186) < 0;
        *(*(*(a1 + 80) + 8) + 24) = v36;
      }

      if (gLogDatapath == 1)
      {
        v65 = __nwlog_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v66 = *(a1 + 32);
          if (v66)
          {
            v67 = (v66 + 609);
          }

          else
          {
            v67 = "";
          }

          v68 = *(*(*(a1 + 48) + 8) + 24);
          v69 = *(a1 + 104);
          *buf = 136447234;
          v87 = "nw_framer_parse_array_block_invoke";
          v88 = 2080;
          v89 = v67;
          v90 = 2048;
          v91 = v68;
          v92 = 2048;
          v93 = v68 + v9;
          v94 = 2048;
          v95 = v69;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %s Reading from %zu-%zu of %zu (complete)", buf, 0x34u);
        }
      }

      nw_dispatch_data_copyout_from_offset(v4, *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24), v9, __n);
      v32 = 0;
      *(*(*(a1 + 48) + 8) + 24) += v9;
      goto LABEL_101;
    }

    if (gLogDatapath == 1)
    {
      v55 = __nwlog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(a1 + 32);
        if (v56)
        {
          v57 = (v56 + 609);
        }

        else
        {
          v57 = "";
        }

        v58 = *(*(*(a1 + 48) + 8) + 24);
        v59 = *(a1 + 104);
        *buf = 136447234;
        v87 = "nw_framer_parse_array_block_invoke";
        v88 = 2080;
        v89 = v57;
        v90 = 2048;
        v91 = v58;
        v92 = 2048;
        v93 = v58 + HIDWORD(__n);
        v94 = 2048;
        v95 = v59;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %s Reading from %zu-%zu of %zu (partial)", buf, 0x34u);
      }

      v7 = *(a1 + 48);
      LODWORD(v5) = HIDWORD(__n);
    }

    nw_dispatch_data_copyout_from_offset(v4, *(*(*(a1 + 56) + 8) + 24) + *(*(v7 + 8) + 24), v5, __n);
    *(*(*(a1 + 48) + 8) + 24) += HIDWORD(__n);
LABEL_42:
    v32 = 1;
LABEL_101:

    goto LABEL_102;
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
    v75 = __nwlog_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *buf = 136446210;
    v87 = "nw_framer_parse_array_block_invoke";
    v77 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s strict_malloc called with size 0", buf, 12);

    result = __nwlog_should_abort(v77);
    if (result)
    {
      goto LABEL_142;
    }

    free(v77);
    v10 = 0;
  }

  v11 = malloc_type_malloc(v10, 0xDB19DBC2uLL);
  if (v11)
  {
LABEL_16:
    *(*(*(a1 + 64) + 8) + 24) = v11;
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    v7 = *(a1 + 48);
    v8 = *(*(v7 + 8) + 24);
    v5 = HIDWORD(__n);
    goto LABEL_17;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  *buf = 136446210;
  v87 = "nw_framer_parse_array_block_invoke";
  LODWORD(v84) = 12;
  v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict allocator failed", buf, v84);

  result = __nwlog_should_abort(v14);
  if (!result)
  {
    free(v14);
    v11 = 0;
    goto LABEL_16;
  }

LABEL_142:
  __break(1u);
  return result;
}

nw_framer_message_t nw_framer_message_create(nw_framer_t framer)
{
  v17 = *MEMORY[0x1E69E9840];
  if (framer)
  {
    isa = framer[1].isa;

    return nw_framer_protocol_create_message(isa);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_framer_message_create";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null framer", buf, 12);

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
        v14 = "nw_framer_message_create";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null framer", buf, 0xCu);
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
          v14 = "nw_framer_message_create";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_framer_message_create";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_framer_message_create";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_framer_get_input_from_below(NWConcrete_nw_framer *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  output_handler = v1->protocol.output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks)
    {
      get_input_frames = callbacks->get_input_frames;
      if (get_input_frames)
      {
        get_input_frames();
        if (v7)
        {
          tqh_last = v1->received_input_frames.tqh_last;
          *tqh_last = v7;
          v6 = v8;
          *(v7 + 40) = tqh_last;
          v1->received_input_frames.tqh_last = v6;
          *(v1 + 607) |= 2u;
        }
      }
    }
  }
}

void __cxx_global_var_init_69742()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__description_def_instance = nw::object::class_def::register_method_def(qword_1ED4119A0, nw::object::_description, 0);
    LOBYTE(qword_1ED4119A0) = v0;
  }
}

void __cxx_global_var_init_2_69743()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__redacted_description_def_instance = nw::object::class_def::register_method_def(qword_1ED411968, nw::object::_redacted_description, 0);
    LOBYTE(qword_1ED411968) = v0;
  }
}

void __cxx_global_var_init_4_69744()
{
  {
    {
      nw::object::_class(void)::instance = "object";
      unk_1ED4119D0 = 6;
      xmmword_1ED4119D8 = 0u;
      unk_1ED4119E8 = 0u;
      xmmword_1ED4119F8 = 0u;
      *&qword_1ED411A08 = 0u;
      *(&xmmword_1ED411A10 + 8) = 0u;
      *&qword_1ED411A28 = 0u;
      xmmword_1ED411A38 = 0u;
      unk_1ED411A48 = 0u;
      qword_1ED411A58 = &qword_1ED411A58;
      unk_1ED411A60 = &qword_1ED411A58;
      qword_1ED411A68 = 0;
      dword_1ED411A70 = 0;
    }

    nw::object::__destroy_def_instance = nw::object::class_def::register_method_def(qword_1ED411980, nw::object::_destroy, 0);
    LOBYTE(qword_1ED411980) = v0;
  }
}

uint64_t _nw_quic_connection_set_sec_protocol_options_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      if (a2)
      {
        *(v6 + 112) = sub_181AA847C(a2);
        *(v6 + 120) = v7;
      }

      else
      {
        *(v6 + 112) = 0;
        *(v6 + 120) = 0;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void nw_protocol_options_set_prohibit_joining(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_protocol_options_set_prohibit_joining(a1, 1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_options_set_prohibit_joining";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null options", buf, 12);

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
        v11 = "nw_protocol_options_set_prohibit_joining";
        v5 = "%{public}s called with null options";
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
            v11 = "nw_protocol_options_set_prohibit_joining";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_protocol_options_set_prohibit_joining";
        v5 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_options_set_prohibit_joining";
        v5 = "%{public}s called with null options, backtrace limit exceeded";
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

void nw_quic_connection_set_sec_protocol_options(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_sec_protocol_options(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_sec_protocol_options";
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
        v15 = "nw_quic_connection_set_sec_protocol_options";
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
            v15 = "nw_quic_connection_set_sec_protocol_options";
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
        v15 = "nw_quic_connection_set_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_sec_protocol_options";
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

uint64_t _nw_protocol_transform_create_0()
{
  type metadata accessor for __NWProtocolTransform();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 29) = 6;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 48) = MEMORY[0x1E69E7CC0];
  *(result + 56) = v1;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_181E58E20(uint64_t a1, int a2)
{

  swift_beginAccess();
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v7 = *(a1 + 64);
      if ((v7 & 2) == 0)
      {
        v5 = v7 | 2;
        goto LABEL_12;
      }
    }

    if (a2 == 5)
    {
    }
  }

  else
  {
    if (a2 == 1)
    {
    }

    if (a2 == 2)
    {
      v4 = *(a1 + 64);
      if ((v4 & 4) == 0)
      {
        v5 = v4 | 4;
LABEL_12:
        *(a1 + 64) = v5;
      }
    }
  }

  v6 = *(a1 + 64);
  if ((v6 & 1) == 0)
  {
    v5 = v6 | 1;
    goto LABEL_12;
  }
}

uint64_t sub_181E58EC4(uint64_t result, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a3)
  {
    if (v8 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:

    v13 = swift_unknownObjectRetain();
    sub_181F61FE0(v13, a5, v22);
    v14 = v22[0];
    v15 = v22[1];
    swift_beginAccess();
    v16 = *(v9 + 48);
    v17 = *(v9 + 56);
    *(v9 + 48) = v14;
    *(v9 + 56) = v15;
    sub_181A52FE0(v16, v17);
  }

  type metadata accessor for ProtocolStack();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  *(v9 + 40) = xmmword_182AE3C80;
  *(v9 + 56) = 0xF000000000000007;
  *(v9 + 64) = 2;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = xmmword_182AE3C90;
  *(v9 + 104) = 0xF000000000000007;
  swift_beginAccess();
  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  *(v9 + 48) = xmmword_182AE3CA0;
  result = sub_181A52FE0(v11, v12);
  *a3 = v9;
  if (v8 == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = 0x2000000000000000;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = 0x4000000000000000;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = 0x6000000000000000;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = 0x8000000000000000;
            }

            else
            {
              v19 = a5 | 0xA000000000000000;
              v18 = v7;
            }
          }
        }
      }
    }

    v20 = *(v9 + 32);
    v21 = *(v9 + 40);
    *(v9 + 32) = v18;
    *(v9 + 40) = v19;

    swift_unknownObjectRetain();
    sub_181A5301C(v20, v21);
  }

  else
  {
    if (v8 != 3)
    {
      return result;
    }

    sub_181CB32CC(v7, v9, a4, a5);
  }
}

uint64_t sub_181E5912C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_181E591D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_182AD4268() & 1;
  }
}

uint64_t sub_181E59234(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_181AA847C(a3);
  v7 = v6;

  swift_beginAccess();
  v8 = 0x40302010003uLL >> (8 * a2);
  if (a2 >= 6)
  {
    LOBYTE(v8) = 3;
  }

  v11 = v8;
  ObjectType = swift_getObjectType();
  sub_181E58EC4(v5, &v11, (a1 + 16), ObjectType, v7);
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t _nw_protocol_transform_set_fallback_mode_0(uint64_t a1, unsigned int a2)
{

  swift_beginAccess();
  if (a2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 40) = v4;
}

uint64_t _nw_protocol_transform_add_match_url_scheme_0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = sub_182AD3158();
  v5 = v4;
  v6 = *(a1 + 56);
  v14[0] = v3;
  v14[1] = v4;
  v13[2] = v14;
  if (sub_181E5912C(sub_181E59580, v13, v6))
  {
  }

  else
  {
    v7 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_181E59474(0, *(v7 + 2) + 1, 1, v7);
      *(a1 + 56) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_181E59474((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v3;
    *(v11 + 5) = v5;
    *(a1 + 56) = v7;
  }

  swift_endAccess();
}

char *sub_181E59474(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEC0, &qword_182AE61B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void nw_parameters_set_transform_array(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_set_transform_array";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
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
        v21 = "nw_parameters_set_transform_array";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          v21 = "nw_parameters_set_transform_array";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
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
        v21 = "nw_parameters_set_transform_array";
        v10 = "%{public}s called with null parameters, no backtrace";
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
        v21 = "nw_parameters_set_transform_array";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_clear_transforms(v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_parameters_set_transform_array_block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v17 = v3;
    _nw_array_apply(v5, aBlock);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_parameters_set_transform_array";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null transform_array", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v7, &type, &v18))
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
      v21 = "nw_parameters_set_transform_array";
      v10 = "%{public}s called with null transform_array";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v18 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v21 = "nw_parameters_set_transform_array";
      v10 = "%{public}s called with null transform_array, backtrace limit exceeded";
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
      v21 = "nw_parameters_set_transform_array";
      v10 = "%{public}s called with null transform_array, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v21 = "nw_parameters_set_transform_array";
    v22 = 2082;
    v23 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null transform_array, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

id *nw_http_connection_state_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xE7C44B58uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v7 = 136446722;
    v8 = "nw_http_connection_state_allocate_options";
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
    v12 = 16;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (nw_http_connection_state_storage_copy_shared_token != -1)
  {
    dispatch_once(&nw_http_connection_state_storage_copy_shared_token, &__block_literal_global_55557);
  }

  objc_storeStrong(v2, nw_http_connection_state_storage_copy_shared_storage);

  return v2;
}

void nw_http_connection_state_options_set_connection_state_storage(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_connection_state_options_set_connection_state_storage";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_connection_state_options_set_connection_state_storage";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_http_connection_state_options_set_connection_state_storage";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_connection_state_options_set_connection_state_storage";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_connection_state_options_set_connection_state_storage";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_connection_state_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_connection_state_definition_http_connection_state_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_connection_state_options_set_connection_state_storage_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_connection_state_options_set_connection_state_storage";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not http_connection_state", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_connection_state_options_set_connection_state_storage";
      v9 = "%{public}s protocol options are not http_connection_state";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_connection_state_options_set_connection_state_storage";
      v9 = "%{public}s protocol options are not http_connection_state, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
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
      v20 = "nw_http_connection_state_options_set_connection_state_storage";
      v9 = "%{public}s protocol options are not http_connection_state, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_connection_state_options_set_connection_state_storage";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http_connection_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http_connection_state_options_set_assumes_http3_capable(void *a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
        v8 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v5);
        goto LABEL_6;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_connection_state_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_connection_state_definition_http_connection_state_definition))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http_connection_state_options_set_assumes_http3_capable_block_invoke;
    v14[3] = &__block_descriptor_33_e9_B16__0_v8l;
    v15 = a2;
    nw_protocol_options_access_handle(v3, v14);
    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol options are not http_connection_state", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
      v8 = "%{public}s protocol options are not http_connection_state";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
      v8 = "%{public}s protocol options are not http_connection_state, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
      v8 = "%{public}s protocol options are not http_connection_state, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v19 = "nw_http_connection_state_options_set_assumes_http3_capable";
    v20 = 2082;
    v21 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol options are not http_connection_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void *nw_http_joining_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x33E1BCA1uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_joining_allocate_options";
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
  v12 = 4;
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

id *nw_http_cookie_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x8CD39E71uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v7 = 136446722;
    v8 = "nw_http_cookie_allocate_options";
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
    v12 = 40;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (nw_http_cookie_storage_copy_shared_token != -1)
  {
    dispatch_once(&nw_http_cookie_storage_copy_shared_token, &__block_literal_global_66793);
  }

  objc_storeStrong(v2, nw_http_cookie_storage_copy_shared_storage);

  return v2;
}

void nw_http_cookie_options_set_cookie_storage(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_cookie_options_set_cookie_storage";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_cookie_options_set_cookie_storage";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_http_cookie_options_set_cookie_storage";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_cookie_options_set_cookie_storage";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_cookie_options_set_cookie_storage";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_cookie_definition_http_cookie_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_cookie_options_set_cookie_storage_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_cookie_options_set_cookie_storage";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not http_cookie", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_cookie_options_set_cookie_storage";
      v9 = "%{public}s protocol options are not http_cookie";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_cookie_options_set_cookie_storage";
      v9 = "%{public}s protocol options are not http_cookie, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
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
      v20 = "nw_http_cookie_options_set_cookie_storage";
      v9 = "%{public}s protocol options are not http_cookie, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_cookie_options_set_cookie_storage";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void *nw_http_retry_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x8D0C3874uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_retry_allocate_options";
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
  v12 = 4;
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

uint64_t _nw_protocol_transform_set_prohibit_direct_0(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x10) == 0)
    {
      v5 = v4 | 0x10;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    v5 = v4 & 0xFFEF;
    goto LABEL_6;
  }
}

void nw_protocol_transform_append_protocol(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_transform_append_protocol";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null transform", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_transform_append_protocol";
        v12 = "%{public}s called with null transform";
LABEL_32:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          v21 = "nw_protocol_transform_append_protocol";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null transform, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v9);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_transform_append_protocol";
        v12 = "%{public}s called with null transform, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_transform_append_protocol";
        v12 = "%{public}s called with null transform, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v6)
  {
    _nw_protocol_transform_append_protocol(v5, a2, v6);
    goto LABEL_4;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_transform_append_protocol";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol_parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_transform_append_protocol";
      v12 = "%{public}s called with null protocol_parameters";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_transform_append_protocol";
      v12 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v21 = "nw_protocol_transform_append_protocol";
      v12 = "%{public}s called with null protocol_parameters, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_transform_append_protocol";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_http_retry_options_set_limit(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_retry_options_set_limit";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_retry_options_set_limit";
        v8 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_http_retry_options_set_limit";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v5);
        goto LABEL_6;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_http_retry_options_set_limit";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_retry_options_set_limit";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_retry_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_retry_definition_http_retry_definition))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http_retry_options_set_limit_block_invoke;
    v14[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v15 = a2;
    nw_protocol_options_access_handle(v3, v14);
    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_retry_options_set_limit";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol options are not http retry", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_retry_options_set_limit";
      v8 = "%{public}s protocol options are not http retry";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_retry_options_set_limit";
      v8 = "%{public}s protocol options are not http retry, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v19 = "nw_http_retry_options_set_limit";
      v8 = "%{public}s protocol options are not http retry, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v19 = "nw_http_retry_options_set_limit";
    v20 = 2082;
    v21 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol options are not http retry, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_6:
}

id *nw_http_authentication_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x2F68CDAEuLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v7 = 136446722;
    v8 = "nw_http_authentication_allocate_options";
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
    v12 = 48;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (nw_authentication_credential_storage_copy_shared_token[0] != -1)
  {
    dispatch_once(nw_authentication_credential_storage_copy_shared_token, &__block_literal_global_26387);
  }

  objc_storeStrong(v2 + 1, nw_authentication_credential_storage_copy_shared_storage);

  return v2;
}

void nw_http_authentication_options_set_challenge_handler(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_challenge_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_challenge_handler";
        v12 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_http_authentication_options_set_challenge_handler";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v9);
        goto LABEL_6;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_challenge_handler";
        v12 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_challenge_handler";
        v12 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  if (nw_protocol_options_matches_definition(v5, nw_protocol_copy_http_authentication_definition_http_authentication_definition))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_http_authentication_options_set_challenge_handler_block_invoke;
    v18[3] = &unk_1E6A3AA50;
    v20 = v6;
    v19 = v7;
    nw_protocol_options_access_handle(v5, v18);

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_authentication_options_set_challenge_handler";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s protocol options are not http authentication", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v9, &type, &v21))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_authentication_options_set_challenge_handler";
      v12 = "%{public}s protocol options are not http authentication";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v21 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_authentication_options_set_challenge_handler";
      v12 = "%{public}s protocol options are not http authentication, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v24 = "nw_http_authentication_options_set_challenge_handler";
      v12 = "%{public}s protocol options are not http authentication, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17)
  {
    *buf = 136446466;
    v24 = "nw_http_authentication_options_set_challenge_handler";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol options are not http authentication, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_37;
  }

LABEL_6:
}

uint64_t __nw_http_authentication_options_set_challenge_handler_block_invoke(uint64_t a1, void **a2)
{
  v4 = _Block_copy(*(a1 + 40));
  v5 = *a2;
  *a2 = v4;

  objc_storeStrong(a2 + 5, *(a1 + 32));
  return 1;
}

void nw_http_authentication_options_set_credential_storage(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_authentication_options_set_credential_storage";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_options_set_credential_storage";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_http_authentication_options_set_credential_storage";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_options_set_credential_storage";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_options_set_credential_storage";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_authentication_definition_http_authentication_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_authentication_options_set_credential_storage_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_authentication_options_set_credential_storage";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not http_authentication", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_authentication_options_set_credential_storage";
      v9 = "%{public}s protocol options are not http_authentication";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_authentication_options_set_credential_storage";
      v9 = "%{public}s protocol options are not http_authentication, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
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
      v20 = "nw_http_authentication_options_set_credential_storage";
      v9 = "%{public}s protocol options are not http_authentication, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_authentication_options_set_credential_storage";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http_authentication_options_set_credential_cache(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_credential_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v24 = "nw_http_authentication_options_set_credential_cache";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_50:
          if (!v7)
          {
            goto LABEL_7;
          }

LABEL_51:
          free(v7);
          goto LABEL_7;
        }

        if (v14)
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_credential_cache";
          v10 = "%{public}s called with null options, no backtrace";
          goto LABEL_48;
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_credential_cache";
          v10 = "%{public}s called with null options, backtrace limit exceeded";
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_credential_cache";
    v10 = "%{public}s called with null options";
    goto LABEL_48;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_credential_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null credential_cache", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_credential_cache";
          v10 = "%{public}s called with null credential_cache, backtrace limit exceeded";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!v15)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_credential_cache";
          v10 = "%{public}s called with null credential_cache, no backtrace";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_http_authentication_options_set_credential_cache";
        v25 = 2082;
        v26 = v15;
        v17 = "%{public}s called with null credential_cache, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v8, v9, v17, buf, 0x16u);
      }

LABEL_34:

      free(v15);
      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_51;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_credential_cache";
    v10 = "%{public}s called with null credential_cache";
LABEL_48:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_49;
  }

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  if ((nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_authentication_definition_http_authentication_definition) & 1) == 0)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_credential_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_authentication", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_credential_cache";
        v10 = "%{public}s protocol options are not http_authentication";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_credential_cache";
        v10 = "%{public}s protocol options are not http_authentication, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v15)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_credential_cache";
        v10 = "%{public}s protocol options are not http_authentication, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_http_authentication_options_set_credential_cache";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __nw_http_authentication_options_set_credential_cache_block_invoke;
  v19[3] = &unk_1E6A3A950;
  v20 = v5;
  nw_protocol_options_access_handle(v3, v19);

LABEL_7:
}

void nw_http_authentication_options_set_h1_fallback_cache(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_h1_fallback_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v24 = "nw_http_authentication_options_set_h1_fallback_cache";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_50:
          if (!v7)
          {
            goto LABEL_7;
          }

LABEL_51:
          free(v7);
          goto LABEL_7;
        }

        if (v14)
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_h1_fallback_cache";
          v10 = "%{public}s called with null options, no backtrace";
          goto LABEL_48;
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_h1_fallback_cache";
          v10 = "%{public}s called with null options, backtrace limit exceeded";
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_h1_fallback_cache";
    v10 = "%{public}s called with null options";
    goto LABEL_48;
  }

  if (!v4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_h1_fallback_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null h1_fallback_cache", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_h1_fallback_cache";
          v10 = "%{public}s called with null h1_fallback_cache, backtrace limit exceeded";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!v15)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_http_authentication_options_set_h1_fallback_cache";
          v10 = "%{public}s called with null h1_fallback_cache, no backtrace";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_http_authentication_options_set_h1_fallback_cache";
        v25 = 2082;
        v26 = v15;
        v17 = "%{public}s called with null h1_fallback_cache, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v8, v9, v17, buf, 0x16u);
      }

LABEL_34:

      free(v15);
      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_51;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_h1_fallback_cache";
    v10 = "%{public}s called with null h1_fallback_cache";
LABEL_48:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_49;
  }

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  if ((nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_authentication_definition_http_authentication_definition) & 1) == 0)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_authentication_options_set_h1_fallback_cache";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_authentication", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_h1_fallback_cache";
        v10 = "%{public}s protocol options are not http_authentication";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_h1_fallback_cache";
        v10 = "%{public}s protocol options are not http_authentication, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v15)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_http_authentication_options_set_h1_fallback_cache";
        v10 = "%{public}s protocol options are not http_authentication, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_http_authentication_options_set_h1_fallback_cache";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __nw_http_authentication_options_set_h1_fallback_cache_block_invoke;
  v19[3] = &unk_1E6A3A950;
  v20 = v5;
  nw_protocol_options_access_handle(v3, v19);

LABEL_7:
}

void nw_http_authentication_options_set_appsso_h1_fallback_headers(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
        v8 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v5);
        goto LABEL_6;
      }

      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_authentication_definition_http_authentication_definition))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http_authentication_options_set_appsso_h1_fallback_headers_block_invoke;
    v14[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v14[4] = a2;
    nw_protocol_options_access_handle(v3, v14);
    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol options are not http_authentication", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v5, &type, &v15))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
      v8 = "%{public}s protocol options are not http_authentication";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v15 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
      v8 = "%{public}s protocol options are not http_authentication, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
      v8 = "%{public}s protocol options are not http_authentication, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v18 = "nw_http_authentication_options_set_appsso_h1_fallback_headers";
    v19 = 2082;
    v20 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_6:
}

uint64_t sub_181E5D914(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void *nw_http_encoding_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 4uLL, 0xBC80D35DuLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_encoding_allocate_options";
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
  v12 = 4;
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

void *nw_http_security_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0xB13AC307uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_security_allocate_options";
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
  v12 = 40;
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

void nw_http_security_options_set_hsts_storage(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_security_options_set_hsts_storage";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_security_options_set_hsts_storage";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_http_security_options_set_hsts_storage";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_security_options_set_hsts_storage";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_security_options_set_hsts_storage";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_security_options_set_hsts_storage_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_security_options_set_hsts_storage";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not http security", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_security_options_set_hsts_storage";
      v9 = "%{public}s protocol options are not http security";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_security_options_set_hsts_storage";
      v9 = "%{public}s protocol options are not http security, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
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
      v20 = "nw_http_security_options_set_hsts_storage";
      v9 = "%{public}s protocol options are not http security, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_security_options_set_hsts_storage";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http_security_options_set_handler(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_security_options_set_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_security_options_set_handler";
        v12 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_http_security_options_set_handler";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v9);
        goto LABEL_6;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_http_security_options_set_handler";
        v12 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_security_options_set_handler";
        v12 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  if (nw_protocol_options_matches_definition(v5, nw_protocol_copy_http_security_definition_http_security_definition))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_http_security_options_set_handler_block_invoke;
    v18[3] = &unk_1E6A3AA50;
    v20 = v6;
    v19 = v7;
    nw_protocol_options_access_handle(v5, v18);

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_security_options_set_handler";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s protocol options are not http security", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v9, &type, &v21))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_security_options_set_handler";
      v12 = "%{public}s protocol options are not http security";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v21 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_security_options_set_handler";
      v12 = "%{public}s protocol options are not http security, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v24 = "nw_http_security_options_set_handler";
      v12 = "%{public}s protocol options are not http security, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17)
  {
    *buf = 136446466;
    v24 = "nw_http_security_options_set_handler";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_37;
  }

LABEL_6:
}

uint64_t __nw_http_security_options_set_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _Block_copy(*(a1 + 40));
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;

  objc_storeStrong((a2 + 24), *(a1 + 32));
  return 1;
}

void nw_http_security_options_set_skip_hsts_lookup(void *a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_security_options_set_skip_hsts_lookup";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_security_options_set_skip_hsts_lookup";
        v8 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_http_security_options_set_skip_hsts_lookup";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v5);
        goto LABEL_6;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_http_security_options_set_skip_hsts_lookup";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_security_options_set_skip_hsts_lookup";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http_security_options_set_skip_hsts_lookup_block_invoke;
    v14[3] = &__block_descriptor_33_e9_B16__0_v8l;
    v15 = a2;
    nw_protocol_options_access_handle(v3, v14);
    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_security_options_set_skip_hsts_lookup";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol options are not http security", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_security_options_set_skip_hsts_lookup";
      v8 = "%{public}s protocol options are not http security";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_security_options_set_skip_hsts_lookup";
      v8 = "%{public}s protocol options are not http security, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v19 = "nw_http_security_options_set_skip_hsts_lookup";
      v8 = "%{public}s protocol options are not http security, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v19 = "nw_http_security_options_set_skip_hsts_lookup";
    v20 = 2082;
    v21 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void *nw_http_redirect_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0xC779C9D8uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_redirect_allocate_options";
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
  v12 = 24;
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

void nw_http_redirect_options_set_limit(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_redirect_options_set_limit";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_redirect_options_set_limit";
        v8 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_http_redirect_options_set_limit";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v5);
        goto LABEL_6;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_http_redirect_options_set_limit";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v19 = "nw_http_redirect_options_set_limit";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_redirect_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_redirect_definition_http_redirect_definition))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http_redirect_options_set_limit_block_invoke;
    v14[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v15 = a2;
    nw_protocol_options_access_handle(v3, v14);
    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_redirect_options_set_limit";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol options are not http redirect", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_redirect_options_set_limit";
      v8 = "%{public}s protocol options are not http redirect";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v19 = "nw_http_redirect_options_set_limit";
      v8 = "%{public}s protocol options are not http redirect, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (v13)
    {
      *buf = 136446210;
      v19 = "nw_http_redirect_options_set_limit";
      v8 = "%{public}s protocol options are not http redirect, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v19 = "nw_http_redirect_options_set_limit";
    v20 = 2082;
    v21 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http_redirect_options_set_handler(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_redirect_options_set_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_redirect_options_set_handler";
        v12 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_http_redirect_options_set_handler";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v9);
        goto LABEL_6;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_http_redirect_options_set_handler";
        v12 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_redirect_options_set_handler";
        v12 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_redirect_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  if (nw_protocol_options_matches_definition(v5, nw_protocol_copy_http_redirect_definition_http_redirect_definition))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_http_redirect_options_set_handler_block_invoke;
    v18[3] = &unk_1E6A3AA50;
    v20 = v6;
    v19 = v7;
    nw_protocol_options_access_handle(v5, v18);

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_redirect_options_set_handler";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s protocol options are not http redirect", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v9, &type, &v21))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_redirect_options_set_handler";
      v12 = "%{public}s protocol options are not http redirect";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v21 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v24 = "nw_http_redirect_options_set_handler";
      v12 = "%{public}s protocol options are not http redirect, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v24 = "nw_http_redirect_options_set_handler";
      v12 = "%{public}s protocol options are not http redirect, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17)
  {
    *buf = 136446466;
    v24 = "nw_http_redirect_options_set_handler";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_37;
  }

LABEL_6:
}

uint64_t NWEndpoint.Host.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A8, &qword_182AEB7F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v36 - v7;
  sub_181E5F9E8(a1, a2, 0, &v40);
  v9 = v43;
  if (v43 == 255)
  {
    v40 = a1;
    v41 = a2;
    v38 = 37;
    v39 = 0xE100000000000000;
    v13 = sub_182AD2268();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_181AC2364();
    sub_182AD3A38();
    v15 = v14;
    v17 = v16;
    sub_181F49A88(v8, &qword_1EA8394A8, &qword_182AEB7F0);
    if (v17)
    {
      result = sub_182AD30F8();
      if (result < 1)
      {

        v10 = 0;
        v9 = 0;
        v11 = 0xE100000000000000;
        a1 = 46;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v11 = a2;
      }
    }

    else
    {
      v18 = sub_181F9EA44(v15, a1, a2);
      v19 = MEMORY[0x1865D9BC0](v18);
      v21 = v20;

      sub_181C8DF10(v19, v21, &v40, v36);
      type metadata accessor for Interface.BackingClass();
      v10 = swift_allocObject();
      v22 = v37[0];
      v10[9] = v36[8];
      v10[10] = v22;
      *(v10 + 170) = *(v37 + 10);
      v23 = v36[5];
      v10[5] = v36[4];
      v10[6] = v23;
      v24 = v36[7];
      v10[7] = v36[6];
      v10[8] = v24;
      v25 = v36[1];
      v10[1] = v36[0];
      v10[2] = v25;
      v26 = v36[3];
      v10[3] = v36[2];
      v10[4] = v26;
      v27 = sub_182AD3258();
      v29 = v28;
      v31 = v30;
      v33 = v32;

      a1 = MEMORY[0x1865D9BC0](v27, v29, v31, v33);
      v11 = v34;

      v9 = 0;
    }
  }

  else
  {
    v11 = v41;
    v10 = v42;
    a1 = v40;
  }

  *a3 = a1;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  return result;
}

uint64_t sub_181E5F9E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v7 = 0;
  v52[2] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A8, &qword_182AEB7F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v45 = a1;
  v46 = a2;
  *&v51.ai_flags = a1;
  *&v51.ai_socktype = a2;
  v52[0] = 37;
  v52[1] = 0xE100000000000000;
  v11 = sub_182AD2268();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_181AC2364();

  v42 = sub_182AD3A38();
  v13 = v12;
  v15 = v14;
  sub_181F49A88(v10, &qword_1EA8394A8, &qword_182AEB7F0);
  if ((v15 & 1) == 0)
  {
    v16 = sub_181F9EA44(v13, a1, a2);
    v17 = MEMORY[0x1865D9BC0](v16);
    v19 = v18;

    sub_181C8DF10(v17, v19, &v51, v47);
    type metadata accessor for Interface.BackingClass();
    v7 = swift_allocObject();
    v20 = v48[0];
    v7[9] = v47[8];
    v7[10] = v20;
    *(v7 + 170) = *(v48 + 10);
    v21 = v47[5];
    v7[5] = v47[4];
    v7[6] = v21;
    v22 = v47[7];
    v7[7] = v47[6];
    v7[8] = v22;
    v23 = v47[1];
    v7[1] = v47[0];
    v7[2] = v23;
    v24 = v47[3];
    v7[3] = v47[2];
    v7[4] = v24;
    sub_181F9EA90(v42);
  }

  v25 = v43;
  v51.ai_flags = 4;
  v51.ai_family = v43;
  *&v51.ai_socktype = 1;
  v51.ai_addrlen = 0;
  memset(&v51.ai_canonname, 0, 24);
  v52[0] = 0;
  v26 = sub_182AD3048();
  v27 = getaddrinfo((v26 + 32), 0, &v51, v52);

  if (v27 || (v29 = v52[0]) == 0)
  {

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = -1;
    return result;
  }

  ai_addr = v52[0]->ai_addr;
  if (ai_addr)
  {
    sa_family = ai_addr->sa_family;
    if (sa_family == 2)
    {

      v32 = *&ai_addr->sa_data[2];

      v35 = 0;
LABEL_17:
      v36 = 1;
      v33 = v7;
      goto LABEL_19;
    }

    if (sa_family == 30)
    {
      v32 = *&ai_addr->sa_data[6];
      v33 = *&ai_addr[1].sa_len;
      v34 = *&ai_addr[1].sa_data[6];
      if (v34)
      {
        sub_181E378A4(v34, &v44, v49);

        type metadata accessor for Interface.BackingClass();
        v7 = swift_allocObject();
        v37 = v50[0];
        v7[9] = v49[8];
        v7[10] = v37;
        *(v7 + 170) = *(v50 + 10);
        v38 = v49[5];
        v7[5] = v49[4];
        v7[6] = v38;
        v39 = v49[7];
        v7[7] = v49[6];
        v7[8] = v39;
        v40 = v49[1];
        v7[1] = v49[0];
        v7[2] = v40;
        v41 = v49[3];
        v7[3] = v49[2];
        v7[4] = v41;
      }

      if (v32 || v33 != -65536 || v25)
      {
        v36 = 2;
        v35 = v7;
        goto LABEL_19;
      }

      v35 = 0;
      v32 = HIDWORD(v33);
      goto LABEL_17;
    }
  }

  v32 = 0;
  v33 = 0;
  v35 = 0;
  v36 = -1;
LABEL_19:
  freeaddrinfo(v29);

  *a4 = v32;
  *(a4 + 8) = v33;
  *(a4 + 16) = v35;
  *(a4 + 24) = v36;
  return result;
}

void *NWEndpoint.alternatePort.setter(unsigned __int16 a1)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v4 = result;
    sub_181D8E388(v1, type metadata accessor for NWEndpoint);
    nw_endpoint_set_alternate_port(v4, a1);
    *v1 = v4;
    type metadata accessor for NWEndpoint(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void nw_endpoint_set_alternate_port(void *a1, uint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_alternate_port(v3, v2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_alternate_port";
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
        v16 = "nw_endpoint_set_alternate_port";
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
          v16 = "nw_endpoint_set_alternate_port";
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
        v16 = "nw_endpoint_set_alternate_port";
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
        v16 = "nw_endpoint_set_alternate_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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