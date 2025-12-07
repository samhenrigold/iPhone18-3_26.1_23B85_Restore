uint64_t nw_protocol_masque_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v53[0]) = 0;
    if (__nwlog_fault(v37, type, v53))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (os_log_type_enabled(v38, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v40 = "%{public}s called with null protocol";
LABEL_85:
          _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
        }
      }

      else if (LOBYTE(v53[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type[0];
        v45 = os_log_type_enabled(v38, type[0]);
        if (backtrace_string)
        {
          if (v45)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_86;
        }

        if (v45)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v40 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_85;
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (os_log_type_enabled(v38, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_finalize_output_frames";
          v40 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_85;
        }
      }
    }

LABEL_86:
    if (v37)
    {
      free(v37);
    }

    return 0;
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
    if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v41 = a2;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v42 = gprivacy_proxyLogObj;
      v43 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v41;
      if (v43)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_masque_finalize_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 603;
        v62 = 2080;
        v63 = " ";
        v64 = 1024;
        frame_count = nw_frame_array_get_frame_count(v41, 1, 0);
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMASQUE got finalize output frames, count %u", buf, 0x26u);
        a2 = v41;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    tqh_first = a2->tqh_first;
    if (a2->tqh_first)
    {
      *(tqh_first + 5) = buf;
      tqh_last = a2->tqh_last;
      *buf = tqh_first;
      *&buf[8] = tqh_last;
      a2->tqh_first = 0;
      a2->tqh_last = &a2->tqh_first;
    }

    if (v7[5].identifier)
    {
      v14 = *&v7[9].flow_id[4];
      if (v14 == 1 || v14 == 2 && (BYTE1(v7[9].callbacks) & 0x20) != 0)
      {
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 0x40000000;
        v57 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
        v58 = &__block_descriptor_tmp_119;
        p_output_handler = &v7[1].output_handler;
        v60 = v2;
        do
        {
          v15 = *buf;
          if (!*buf)
          {
            break;
          }

          v16 = *(*buf + 32);
          v17 = *(*buf + 40);
          v18 = (v16 + 40);
          if (!v16)
          {
            v18 = &buf[8];
          }

          *v18 = v17;
          *v17 = v16;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
        }

        while (((v57)(v56) & 1) != 0);
      }
    }

    *type = 0;
    v55 = type;
    v53[0] = 0;
    v53[1] = v53;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v47 = ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_120;
    v48 = &__block_descriptor_tmp_125_27841;
    v49 = &v7[1].output_handler;
    v50 = type;
    v51 = v2;
    v52 = v53;
    do
    {
      v19 = *buf;
      if (!*buf)
      {
        break;
      }

      v20 = *(*buf + 32);
      v21 = *(*buf + 40);
      v22 = (v20 + 40);
      if (!v20)
      {
        v22 = &buf[8];
      }

      *v22 = v21;
      *v21 = v20;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
    }

    while (((v47)(v46) & 1) != 0);
    if (v53[0])
    {
      (v7[4].output_handler->callbacks->finalize_output_frames)();
    }

    if (*type)
    {
      (v2->output_handler->callbacks->finalize_output_frames)();
    }

    result = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_54;
    }

    return result;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_finalize_output_frames";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v53[0]) = 0;
  if (!__nwlog_fault(v8, type, v53))
  {
    goto LABEL_51;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque";
LABEL_49:
    v28 = v9;
    v29 = v10;
LABEL_50:
    _os_log_impl(&dword_181A37000, v28, v29, v11, buf, 0xCu);
    goto LABEL_51;
  }

  if (LOBYTE(v53[0]) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_49;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  v26 = type[0];
  v27 = os_log_type_enabled(gLogObj, type[0]);
  if (v24)
  {
    if (v27)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_masque_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v24);
  }

  else if (v27)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_finalize_output_frames";
    v11 = "%{public}s called with null masque, no backtrace";
    v28 = v25;
    v29 = v26;
    goto LABEL_50;
  }

LABEL_51:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_54:
    v30 = v2->handle;
    if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v31 = v2[1].callbacks;
      if (v31)
      {
        v32 = (v31 - 1);
        v2[1].callbacks = v32;
        if (!v32)
        {
          v33 = result;
          v34 = *v2[1].flow_id;
          if (v34)
          {
            *v2[1].flow_id = 0;
            v34[2](v34);
            _Block_release(v34);
          }

          if (v2[1].flow_id[8])
          {
            v35 = *v2[1].flow_id;
            if (v35)
            {
              _Block_release(v35);
            }
          }

          free(v2);
          return v33;
        }
      }
    }
  }

  return result;
}

id nw_http_metadata_copy_request(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_definition_http_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_metadata_copy_request_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_request";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_request";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_request";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_request";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_request";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DA8B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_request_has_method(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
LABEL_3:
      has_method = _nw_http_request_has_method(v3, a2);

      return has_method;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 136446210;
    v14 = "nw_http_request_has_method";
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s NULL argument", &v13, 12);

    result = __nwlog_should_abort(v8);
    if (result)
    {
      goto LABEL_14;
    }

    free(v8);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v13 = 136446210;
  v14 = "nw_http_request_has_method";
  LODWORD(v12) = 12;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s NULL argument", &v13, v12);

  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    goto LABEL_3;
  }

LABEL_14:
  __break(1u);
  return result;
}

void nw_protocol_inbound_data_finalizer(void *a1, uint64_t a2, void *a3)
{
  nw_protocol_data_finalizer(a3, a1, a2, a3 + 128);
}

uint64_t sub_181DA8DC8(uint64_t a1, uint64_t a2)
{

  v3 = sub_182AD3158();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 56) == v3 && *(v6 + 64) == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

id _nw_protocol_options_copy_proxy_endpoint(uint64_t a1)
{
  v2 = *(*a1 + 136);

  swift_beginAccess();
  v3 = *(a1 + v2);

  return v3;
}

uint64_t nw_endpoint_get_url_path(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    url_path = _nw_endpoint_get_url_path(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
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
          v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
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
        v16 = "nw_endpoint_get_url_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  url_path = 0;
LABEL_3:

  return url_path;
}

uint64_t _nw_endpoint_get_url_path_0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD2008();
    v12 = v11;
    v13 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 15, v10, v12, &v15);

    os_unfair_lock_unlock((*&v9[v13] + 16));
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);

    return v15;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_endpoint_get_url_scheme(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    url_scheme = _nw_endpoint_get_url_scheme();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_get_url_scheme";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null endpoint", buf, 12);

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
        v15 = "nw_endpoint_get_url_scheme";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint", buf, 0xCu);
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
          v15 = "nw_endpoint_get_url_scheme";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_url_scheme";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_url_scheme";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  url_scheme = 0;
LABEL_3:

  return url_scheme;
}

uint64_t sub_181DA962C(uint64_t a1, const char *a2, const char *a3, const char *a4)
{
  sub_1822463A8(a1, &v60);
  v7 = v60;
  v8 = v61;
  if (a2)
  {
    v9 = strlen(a2);
    if (v9)
    {
      v10 = 0;
      while ((a2[v10] & 0x80000000) == 0)
      {
        if (v9 == ++v10)
        {
          goto LABEL_6;
        }
      }

      v60 = a2;
      v61 = v9;
      v62 = sub_1822876F4;
      v63 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0, &qword_182AF7A28);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0, &qword_182AF7A28, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      v11 = sub_182AD30B8();
      v13 = v12;
    }

    if (!_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v11, v13))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (a3)
  {
    v14 = strlen(a3);
    if (v14)
    {
      v15 = 0;
      while ((a3[v15] & 0x80000000) == 0)
      {
        if (v14 == ++v15)
        {
          goto LABEL_15;
        }
      }

      v60 = a3;
      v61 = v14;
      v62 = sub_1822876F4;
      v63 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0, &qword_182AF7A28);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0, &qword_182AF7A28, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();
      a3 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
LABEL_15:
      a3 = sub_182AD30B8();
      v17 = v16;
    }

    if (!_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(a3, v17))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v18 = strlen(a4);
    if (v18)
    {
      v19 = 0;
      while ((a4[v19] & 0x80000000) == 0)
      {
        if (v18 == ++v19)
        {
          goto LABEL_24;
        }
      }

      v60 = a4;
      v61 = v18;
      v62 = sub_1822876F4;
      v63 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0, &qword_182AF7A28);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0, &qword_182AF7A28, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();
      a4 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
LABEL_24:
      a4 = sub_182AD30B8();
      v21 = v20;
    }

    if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(a4, v21))
    {
      v22 = a3;
      v23 = v8;
      v24 = v7;
      goto LABEL_29;
    }

LABEL_39:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v22 = a3;
  v23 = v8;
  v24 = v7;
  v21 = 0;
LABEL_29:
  if (v13)
  {
    v25 = v11;
  }

  else
  {
    v25 = 0;
  }

  if (v17)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  if (v21)
  {
    v27 = a4;
  }

  else
  {
    v27 = 0;
  }

  v59 = v27;
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v28 = swift_allocObject();
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0u;
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  *(v28 + 16) = 0x646F6874656D3ALL;
  *(v28 + 24) = 0xE700000000000000;
  *(v28 + 32) = 0x646F6874656D3ALL;
  *(v28 + 40) = 0xE700000000000000;
  *(v28 + 48) = 0;
  *(v28 + 56) = v24;
  *(v28 + 64) = v23;
  v29 = vdup_n_s32(v13 == 0);
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94B0);
  *(v28 + 88) = v31;
  *(v28 + 72) = v31;
  *(v28 + 104) = 0;
  *(v28 + 112) = v25;
  *(v28 + 120) = v13;
  sub_181D04D28(0, 0, 0, 0, 0, 0, 0);
  v32 = *(v28 + 128);
  v33 = *(v28 + 136);
  v34 = *(v28 + 144);
  v35 = *(v28 + 152);
  v36 = *(v28 + 160);
  v37 = *(v28 + 168);
  v38 = *(v28 + 176);
  v39 = vdup_n_s32(v17 == 0);
  v30.i64[0] = v39.u32[0];
  v30.i64[1] = v39.u32[1];
  v40 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94A0);
  *(v28 + 128) = v40;
  *(v28 + 144) = v40;
  *(v28 + 160) = 0;
  *(v28 + 168) = v26;
  *(v28 + 176) = v17;
  sub_181D04D28(v32, v33, v34, v35, v36, v37, v38);
  v41 = *(v28 + 184);
  v42 = *(v28 + 192);
  v43 = *(v28 + 200);
  v44 = *(v28 + 208);
  v45 = *(v28 + 216);
  v46 = *(v28 + 224);
  v47 = *(v28 + 232);
  v48 = vdup_n_s32(v21 == 0);
  v30.i64[0] = v48.u32[0];
  v30.i64[1] = v48.u32[1];
  v49 = vandq_s8(vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL)), xmmword_182AE94C0);
  *(v28 + 184) = v49;
  *(v28 + 200) = v49;
  *(v28 + 216) = 0;
  *(v28 + 224) = v59;
  *(v28 + 232) = v21;
  sub_181D04D28(v41, v42, v43, v44, v45, v46, v47);
  v50 = *(v28 + 240);
  v51 = *(v28 + 248);
  v52 = *(v28 + 256);
  v53 = *(v28 + 264);
  v54 = *(v28 + 272);
  v55 = *(v28 + 280);
  v56 = *(v28 + 288);
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  sub_181D04D28(v50, v51, v52, v53, v54, v55, v56);
  HTTPFields.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v60);
  v57 = v60;
  type metadata accessor for __NWHTTPRequest();
  result = swift_allocObject();
  *(result + 16) = v28;
  *(result + 24) = v57;
  return result;
}

uint64_t nw_quic_connection_copy_stream_metadata(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_copy_stream_metadata(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_copy_stream_metadata";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)", buf, 12);

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
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)";
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
            v14 = "nw_quic_connection_copy_stream_metadata";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_copy_stream_metadata";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), backtrace limit exceeded";
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

void nw_http_request_access_extended_connect_protocol(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
LABEL_3:
      _nw_http_request_access_extended_connect_protocol(v3, v5);

      return;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 136446210;
    v14 = "nw_http_request_access_extended_connect_protocol";
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s NULL argument", &v13, 12);

    if (__nwlog_should_abort(v8))
    {
      goto LABEL_14;
    }

    free(v8);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v13 = 136446210;
  v14 = "nw_http_request_access_extended_connect_protocol";
  LODWORD(v12) = 12;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s NULL argument", &v13, v12);

  if (!__nwlog_should_abort(v11))
  {
    free(v11);
    goto LABEL_3;
  }

LABEL_14:
  __break(1u);
}

uint64_t _nw_http_request_access_extended_connect_protocolTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t *, void *, __n128))
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  swift_beginAccess();
  v7 = *(a1 + 24);
  v9[0] = *(a1 + 16);
  v9[1] = v7;

  (a3)(v9, v6);
  _Block_release(v5);
  _Block_release(v6);
}

uint64_t sub_181DAA094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0, &qword_182B03870);
        v4 = sub_181A93260();
        if (v4)
        {
          v3 = v4;
          os_unfair_lock_lock((*(v2 + 248) + 16));
          os_unfair_lock_unlock((*(v2 + 248) + 16));
        }

        else
        {
          v3 = 0;
        }
      }

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__138(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 54) = *(a2 + 54);
  *(result + 48) = v2;
  return result;
}

uint64_t nw_quic_stream_get_application_error(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    application_error = _nw_quic_stream_get_application_error();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_application_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  application_error = 0;
LABEL_3:

  return application_error;
}

void nw_http_request_set_extended_connect_protocol(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    goto LABEL_2;
  }

  v2 = __nwlog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v5 = 136446210;
  v6 = "nw_http_request_set_extended_connect_protocol";
  v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s NULL argument", &v5, 12);

  if (!__nwlog_should_abort(v4))
  {
    free(v4);
LABEL_2:
    _nw_http_request_set_extended_connect_protocol();

    return;
  }

  __break(1u);
}

uint64_t _nw_quic_stream_get_application_error()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0, &qword_182B03870);
  v0 = sub_181A93260();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 64);

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);

  return v3;
}

uint64_t sub_181DAA5B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 248))
  {
    v5 = *(v3 + 280);
    v4 = *(v3 + 288);
    MEMORY[0x1EEE9AC00](a1);
    v11[6] = v6;
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = sub_181AACB1C;
    v11[3] = v8;

    sub_181DE92EC(v5, v4, sub_181DE94B0, v11);
  }

  else
  {
    v10 = *(a2 + 16);

    return v10(a2, 0);
  }
}

uint64_t _nw_http_request_set_extended_connect_protocol_0(uint64_t a1, const char *a2)
{

  if (!a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1822C9498();

      *(a1 + 16) = v10;
    }

    v11 = v10[30];
    v12 = v10[31];
    v13 = v10[32];
    v14 = v10[33];
    v15 = v10[34];
    v16 = v10[35];
    v17 = v10[36];
    *(v10 + 15) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 17) = 0u;
    v10[36] = 0;
    swift_endAccess();
    sub_181D04D28(v11, v12, v13, v14, v15, v16, v17);
  }

  v4 = strlen(a2);
  if (v4)
  {
    v5 = 0;
    while ((a2[v5] & 0x80000000) == 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0, &qword_182AF7A28);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0, &qword_182AF7A28, MEMORY[0x1E69E6CC8]);
    sub_182AD30A8();
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    v6 = sub_182AD30B8();
    v8 = v7;
  }

  if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v6, v8))
  {
    swift_beginAccess();
    sub_1822470EC(a1 + 16, v6, v8);
    swift_endAccess();
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t nw_quic_connection_get_application_error(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    application_error = _nw_quic_connection_get_application_error(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_application_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  application_error = 0;
LABEL_3:

  return application_error;
}

void nw::http::content_length_manager::set_inbound_message(nw::http::content_length_manager *this, nw_protocol_metadata *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v23 = "set_inbound_message";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v9, &v21, &v20))
    {
      goto LABEL_46;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v21;
      if (!os_log_type_enabled(v10, v21))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null metadata";
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      v10 = __nwlog_obj();
      v11 = v21;
      if (!os_log_type_enabled(v10, v21))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = v21;
    v15 = os_log_type_enabled(v10, v21);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_45;
    }

    if (v15)
    {
      *buf = 136446466;
      v23 = "set_inbound_message";
      v24 = 2082;
      v25 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_46:
    if (!v9)
    {
      return;
    }

    goto LABEL_47;
  }

  v3 = a2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v4 = nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition);

  if ((v4 & 1) == 0)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "set_inbound_message";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null (nw_protocol_metadata_is_http(metadata))", buf, 12);
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v9, &v21, &v20))
    {
      goto LABEL_46;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v21;
      if (!os_log_type_enabled(v10, v21))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata))";
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      v10 = __nwlog_obj();
      v11 = v21;
      if (!os_log_type_enabled(v10, v21))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), backtrace limit exceeded";
      goto LABEL_45;
    }

    v16 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = v21;
    v17 = os_log_type_enabled(v10, v21);
    if (v16)
    {
      if (v17)
      {
        *buf = 136446466;
        v23 = "set_inbound_message";
        v24 = 2082;
        v25 = v16;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v16);
      if (!v9)
      {
        return;
      }

LABEL_47:
      free(v9);
      return;
    }

    if (v17)
    {
      *buf = 136446210;
      v23 = "set_inbound_message";
      v12 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (*(this + 48) == 1)
  {
    v5 = nw_http_metadata_copy_request(v3);
    *(this + 49) = nw_http_request_has_method(v5, "HEAD");
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2nw4http22content_length_manager19set_inbound_messageEP20nw_protocol_metadata_block_invoke;
    v19[3] = &__block_descriptor_tmp_141_63756;
    v19[4] = this;
    v6 = v19;
    goto LABEL_7;
  }

  v5 = nw_http_metadata_copy_response(v3);
  status_code = nw_http_response_get_status_code(v5);
  if ((*(this + 49) & 1) == 0 && status_code != 304 && status_code != 204)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZN2nw4http22content_length_manager19set_inbound_messageEP20nw_protocol_metadata_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_142_63757;
    v18[4] = this;
    v6 = v18;
LABEL_7:
    nw_http_fields_access_value_by_name(v5, "Content-Length", v6);
    if (!v5)
    {
      return;
    }

    goto LABEL_15;
  }

  if ((*(this + 32) & 1) == 0)
  {
    *(this + 32) = 1;
  }

  *(this + 3) = 0;
  if (v5)
  {
LABEL_15:
    os_release(v5);
  }
}

void nw_quic_connection_report_application_result(void *a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_report_application_result(v3, v2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_report_application_result";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_report_application_result";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_report_application_result";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

uint64_t sub_181DAB338(void (*a1)(uint64_t *))
{
  swift_beginAccess();
  v4 = *(v1 + 24);

  a1(&v4);
}

uint64_t nw_masque_add_extra_headers_to_request(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *type = 0;
    v22 = type;
    v23 = 0x2000000000;
    v24 = 0;
    if (a3 && a4)
    {
      *a4 = 0;
    }

    v6 = *(a1 + 328);
    if (v6)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZL38nw_masque_add_extra_headers_to_requestP9nw_masqueP14nw_http_fieldsPA37_cPb_block_invoke;
      v20[3] = &unk_1E6A2F930;
      v20[4] = type;
      v20[5] = a1;
      v20[6] = a2;
      v20[7] = a3;
      v20[8] = a4;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL41nw_masque_options_enumerate_extra_headersP19nw_protocol_optionsU13block_pointerFbPKcS2_E_block_invoke;
      v27 = &unk_1E6A2F958;
      v28 = v20;
      nw_protocol_options_access_handle(v6, buf);
    }

    v7 = *(a1 + 320);
    if (v7)
    {
      v8 = v7;
      effective_traffic_class = _nw_path_get_effective_traffic_class(v8);

      if ((effective_traffic_class - 1) <= 0xC7)
      {
        v10 = a2;
        _nw_http_fields_append(v10, "Sec-CH-Background", "?1");
      }
    }

    v11 = *(v22 + 24) ^ 1;
    _Block_object_dispose(type, 8);
    return v11 & 1;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_add_extra_headers_to_request";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null request", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v14, type, &v25))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v17 = "%{public}s called with null request";
LABEL_25:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type[0];
      v19 = os_log_type_enabled(v15, type[0]);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_add_extra_headers_to_request";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v17 = "%{public}s called with null request, no backtrace";
        goto LABEL_25;
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_add_extra_headers_to_request";
        v17 = "%{public}s called with null request, backtrace limit exceeded";
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t _nw_quic_connection_report_application_result_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 208);
      if (v6)
      {
        (*(v6 + 16))(v6, a2 & 1);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t ___ZL41nw_masque_options_enumerate_extra_headersP19nw_protocol_optionsU13block_pointerFbPKcS2_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    count = 0;
    v6 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  count = xpc_array_get_count(v4);
  v6 = *(a2 + 16);
  if (v6)
  {
LABEL_3:
    v6 = xpc_array_get_count(v6);
  }

LABEL_4:
  if (count && count == v6)
  {
    v7 = 0;
    v8 = count - 1;
    do
    {
      v9 = *(a1 + 32);
      string = xpc_array_get_string(*(a2 + 8), v7);
      v11 = xpc_array_get_string(*(a2 + 16), v7);
      if ((*(v9 + 16))(v9, string, v11))
      {
        v12 = v8 == v7;
      }

      else
      {
        v12 = 1;
      }

      ++v7;
    }

    while (!v12);
  }

  return 1;
}

uint64_t ___ZL38nw_masque_add_extra_headers_to_requestP9nw_masqueP14nw_http_fieldsPA37_cPb_block_invoke(uint64_t a1, const char *a2, char *__s1)
{
  v3 = __s1;
  v165 = *MEMORY[0x1E69E9840];
  v6 = strstr(__s1, "<token=");
  if (v6)
  {
    v7 = v6;
    v8 = strlen(v3);
    v9 = v7 + 7;
    v10 = strchr(v7 + 7, 62);
    v11 = strstr(v3, "{domain=");
    v12 = strstr(v3, "[type=");
    v163 = 0uLL;
    if (!(v11 | v12))
    {
      if (!v10 || v10 - v9 != 36)
      {
        v49 = *(a1 + 40);
        if (!v49 || (*(v49 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v50 = gprivacy_proxyLogObj;
          v51 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
          v49 = *(a1 + 40);
          if (v51)
          {
            v52 = (v49 + 507);
            if (!v49)
            {
              v52 = "";
            }

            *buf = 136446978;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            v53 = " ";
            if (!v49)
            {
              v53 = "";
            }

            *&buf[14] = v53;
            *&buf[22] = 2082;
            *&buf[24] = "<token=";
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s%sValue included %{public}s, but token UUID cannot be read: %{public}s", buf, 0x2Au);
            v49 = *(a1 + 40);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        nw_masque_mark_failed_with_error(v49, 22);
        return 1;
      }

      buf[36] = 0;
      v34 = *v9;
      v35 = *(v7 + 23);
      *&buf[32] = *(v7 + 39);
      *&buf[16] = v35;
      *buf = v34;
      uuid_parse(buf, (*(a1 + 40) + 256));
      goto LABEL_37;
    }

    if (v11 && v12)
    {
      v13 = v11 + 8;
      v14 = v12;
      v15 = strchr(v13, 125);
      v16 = v14 + 6;
      v17 = strchr(v14 + 6, 93);
      if (v15 && v17)
      {
        v18 = v15 - v13;
        v19 = v17 - v16;
        if (v18 <= 0x20 && v19 < 0x21)
        {
          v162 = 0;
          __dst = 0u;
          v161 = 0u;
          v159 = 0;
          v157 = 0u;
          v158 = 0u;
          memcpy(&__dst, v13, v18);
          memcpy(&v157, v16, v19);
          v20 = *(a1 + 40);
          if (!v20 || (*(v20 + 505) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v21 = gprivacy_proxyLogObj;
            v22 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
            v20 = *(a1 + 40);
            if (v22)
            {
              v23 = "";
              *buf = 136447234;
              *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
              v24 = v20 == 0;
              if (v20)
              {
                v25 = (v20 + 507);
              }

              else
              {
                v25 = "";
              }

              *&buf[12] = 2082;
              *&buf[14] = v25;
              *&buf[22] = 2080;
              if (!v24)
              {
                v23 = " ";
              }

              *&buf[24] = v23;
              *&buf[32] = 2080;
              *&buf[34] = &__dst;
              *&buf[42] = 2080;
              *&buf[44] = &v157;
              _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinding token agent with domain '%s' type '%s'", buf, 0x34u);
              v20 = *(a1 + 40);
            }
          }

          if ((_nw_path_get_agent_uuid_for_type(*(v20 + 320), &v163, &__dst, &v157) & 1) == 0)
          {
            return 1;
          }

          *(*(a1 + 40) + 256) = v163;
LABEL_37:
          size = 0;
          v155 = 0;
          v36 = *(a1 + 40);
          v37 = *(v36 + 440);
          if (!v37)
          {
            v42 = 0;
            if ((*(v36 + 503) & 2) != 0)
            {
              goto LABEL_106;
            }

LABEL_103:
            if (v42)
            {
              goto LABEL_106;
            }

            if (v155)
            {
              goto LABEL_107;
            }

            return 1;
          }

          v38 = v37;
          v39 = nw_protocol_copy_http_connection_definition_onceToken;
          v40 = v38;
          if (v39 != -1)
          {
            dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
          }

          v41 = nw_protocol_metadata_matches_definition(v40, nw_protocol_copy_http_connection_definition_definition);

          if (v41)
          {
            *&__dst = 0;
            *(&__dst + 1) = &__dst;
            v161 = 0x2020000000uLL;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_http_connection_metadata_copy_cached_token_block_invoke;
            *&buf[24] = &unk_1E6A3AD20;
            *&buf[32] = &__dst;
            *&buf[40] = &v155;
            *&buf[48] = &size;
            if (_nw_protocol_metadata_get_handle())
            {
              (*&buf[16])(buf);
            }

            v42 = *(*(&__dst + 1) + 24);
            _Block_object_dispose(&__dst, 8);
            goto LABEL_44;
          }

          v115 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
          v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s metadata must be http_connection", buf, 12);

          LOBYTE(__dst) = 16;
          LOBYTE(v157) = 0;
          if (__nwlog_fault(v116, &__dst, &v157))
          {
            if (__dst == 17)
            {
              v117 = __nwlog_obj();
              v118 = __dst;
              if (os_log_type_enabled(v117, __dst))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, v118, "%{public}s metadata must be http_connection", buf, 0xCu);
              }
            }

            else if (v157 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v117 = __nwlog_obj();
              __na = __dst;
              v120 = os_log_type_enabled(v117, __dst);
              if (backtrace_string)
              {
                if (v120)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v117, __na, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_316;
              }

              if (v120)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, __na, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v117 = __nwlog_obj();
              v130 = __dst;
              if (os_log_type_enabled(v117, __dst))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_connection_metadata_copy_cached_token";
                _os_log_impl(&dword_181A37000, v117, v130, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_316:
          if (v116)
          {
            free(v116);
          }

          v42 = 0;
LABEL_44:

          v36 = *(a1 + 40);
          if ((*(v36 + 503) & 2) != 0)
          {
LABEL_106:
            if (v42)
            {
LABEL_108:
              if (v42 && size)
              {
                if (!v36 || (*(v36 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v72 = gprivacy_proxyLogObj;
                  v73 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
                  v36 = *(a1 + 40);
                  if (v73)
                  {
                    v74 = (v36 + 507);
                    *buf = 136447234;
                    *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
                    if (!v36)
                    {
                      v74 = "";
                    }

                    *&buf[12] = 2082;
                    *&buf[14] = v74;
                    *&buf[22] = 2080;
                    v75 = " ";
                    if (!v36)
                    {
                      v75 = "";
                    }

                    *&buf[24] = v75;
                    *&buf[32] = 1042;
                    *&buf[34] = 16;
                    *&buf[38] = 2098;
                    *&buf[40] = v36 + 256;
                    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFetched token from %{public, uuid_t}.16P", buf, 0x30u);
                    v36 = *(a1 + 40);
                  }
                }

                v76 = *(v36 + 440);
                v77 = size;
                if (v76)
                {
                  nw_http_connection_metadata_set_cached_token(v76, v42, size);
                  v77 = size;
                }

                v78 = &v3[v8];
                v79 = dispatch_data_create(v42, v77, 0, *MEMORY[0x1E69E9648]);
                v80 = dispatch_data_create_with_transform();
                if (v79)
                {
                  dispatch_release(v79);
                }

                v81 = v10 + 1;
                v82 = dispatch_data_get_size(v80);
                __n = v78 - (v10 + 1);
                v83 = nw_calloc_type<unsigned char>(v7 - v3 + v78 - v10 + v82);
                *&__dst = 0;
                *(&__dst + 1) = &__dst;
                v161 = 0x2000000000uLL;
                *&v157 = 0;
                *(&v157 + 1) = &v157;
                *&v158 = 0x2000000000;
                *(&v158 + 1) = &v83[v7 - v3];
                if (v80)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
                  *&buf[24] = &unk_1E6A34348;
                  *&buf[40] = &v157;
                  *&buf[48] = v82;
                  *&buf[32] = &__dst;
                  dispatch_data_apply(v80, buf);
                  _Block_object_dispose(&v157, 8);
                  _Block_object_dispose(&__dst, 8);
                  dispatch_release(v80);
                }

                else
                {
                  _Block_object_dispose(&v157, 8);
                  _Block_object_dispose(&__dst, 8);
                }

                for (i = &v83[v7 - v3]; ; i = v107 + 1)
                {
                  v107 = strchr(i, 43);
                  if (!v107)
                  {
                    break;
                  }

                  *v107 = 45;
                }

                for (j = &v83[v7 - v3]; ; j = v109 + 1)
                {
                  v109 = strchr(j, 47);
                  if (!v109)
                  {
                    break;
                  }

                  *v109 = 95;
                }

                if (v7 != v3)
                {
                  memcpy(v83, v3, v7 - v3);
                }

                if (v78 != v81)
                {
                  memcpy(&v83[v7 - v3 + v82], v81, __n);
                }

                nw_http_fields_append(*(a1 + 48), a2, v83);
                if (v83)
                {
                  free(v83);
                }
              }

              else
              {
                if (!v36 || (*(v36 + 505) & 1) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v84 = gprivacy_proxyLogObj;
                  v85 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
                  v36 = *(a1 + 40);
                  if (v85)
                  {
                    v86 = "";
                    v87 = (v36 + 507);
                    if (!v36)
                    {
                      v87 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = v87;
                    *&buf[12] = 2080;
                    if (v36)
                    {
                      v86 = " ";
                    }

                    *&buf[14] = v86;
                    *&buf[22] = 1042;
                    *&buf[24] = 16;
                    *&buf[28] = 2098;
                    *&buf[30] = v36 + 256;
                    _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to fetch token from %{public, uuid_t}.16P", buf, 0x26u);
                    v36 = *(a1 + 40);
                  }
                }

                nw_path_report_error_to_agent(*(v36 + 320), (v36 + 256), 81);
                *(*(*(a1 + 32) + 8) + 24) = 1;
                nw_masque_mark_failed_with_error(*(a1 + 40), 2);
              }

              return 1;
            }

LABEL_107:
            v42 = nw_path_copy_token_from_agent(*(v36 + 320), (v36 + 256), &size);
            v36 = *(a1 + 40);
            goto LABEL_108;
          }

          goto LABEL_103;
        }

        v43 = *(a1 + 40);
        if (v43 && (*(v43 + 505) & 1) != 0)
        {
          goto LABEL_101;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v94 = gprivacy_proxyLogObj;
        v95 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        v43 = *(a1 + 40);
        if (!v95)
        {
LABEL_101:
          nw_masque_mark_failed_with_error(v43, 22);
          return 0;
        }

        v96 = (v43 + 507);
        if (!v43)
        {
          v96 = "";
        }

        *buf = 136446978;
        *&buf[4] = v96;
        *&buf[12] = 2080;
        v97 = " ";
        if (!v43)
        {
          v97 = "";
        }

        *&buf[14] = v97;
        *&buf[22] = 2048;
        *&buf[24] = v18;
        *&buf[32] = 2048;
        *&buf[34] = v19;
        v48 = "%{public}s%sInvalid agent domain/type length (%zd/%zd)";
        v69 = v94;
        v70 = 42;
LABEL_100:
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, v48, buf, v70);
        v43 = *(a1 + 40);
        goto LABEL_101;
      }

      v43 = *(a1 + 40);
      if (v43 && (*(v43 + 505) & 1) != 0)
      {
        goto LABEL_101;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v44 = gprivacy_proxyLogObj;
      v66 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      v43 = *(a1 + 40);
      if (!v66)
      {
        goto LABEL_101;
      }

      v67 = (v43 + 507);
      v68 = "";
      if (v43)
      {
        v68 = " ";
      }

      else
      {
        v67 = "";
      }

      *buf = 136446466;
      *&buf[4] = v67;
      *&buf[12] = 2080;
      *&buf[14] = v68;
      v48 = "%{public}s%sInvalid agent type suffix";
    }

    else
    {
      v43 = *(a1 + 40);
      if (v43 && (*(v43 + 505) & 1) != 0)
      {
        goto LABEL_101;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v44 = gprivacy_proxyLogObj;
      v45 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      v43 = *(a1 + 40);
      if (!v45)
      {
        goto LABEL_101;
      }

      v46 = (v43 + 507);
      v47 = "";
      if (v43)
      {
        v47 = " ";
      }

      else
      {
        v46 = "";
      }

      *buf = 136446466;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = v47;
      v48 = "%{public}s%sInvalid agent type configuration";
    }

    v69 = v44;
    v70 = 22;
    goto LABEL_100;
  }

  if (!strcmp(v3, "INSERT-RANDOM-TRANSACTION-ID"))
  {
    v54 = *(a1 + 56);
    if (!v54)
    {
      return 1;
    }

    v55 = *(a1 + 64);
    if (!v55)
    {
      return 1;
    }

    if ((*v55 & 1) == 0)
    {
      *&buf[8] = 0;
      *buf = 0;
      uuid_generate_random(buf);
      uuid_unparse(buf, *(a1 + 56));
      **(a1 + 64) = 1;
      v54 = *(a1 + 56);
    }

    v56 = *(a1 + 48);
    v57 = a2;
    goto LABEL_226;
  }

  v26 = strcasecmp(a2, "Sec-CH-Geohash");
  v27 = strcasecmp(a2, "Priority");
  v28 = strcasecmp(a2, "Require-Interface");
  v29 = strcasecmp(a2, "Prohibit-Interface");
  v30 = strcasecmp(a2, "Client-Application");
  v31 = strcasecmp(a2, "Multipath");
  v32 = strcasecmp(a2, "Listener-Association");
  if (!v26)
  {
    v58 = *(*(a1 + 40) + 304);
    if (!v58)
    {
      goto LABEL_76;
    }

    if (_nw_parameters_get_is_known_tracker(v58))
    {
      return 1;
    }

    v59 = *(*(a1 + 40) + 304);
    if (v59)
    {
      if (_nw_parameters_get_parent_is_known_tracker(v59))
      {
        return 1;
      }

      goto LABEL_75;
    }

    v126 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
    v127 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s called with null parameters", buf, 12);

    LOBYTE(__dst) = 16;
    LOBYTE(v157) = 0;
    if (__nwlog_fault(v127, &__dst, &v157))
    {
      if (__dst == 17)
      {
        v128 = __nwlog_obj();
        v129 = __dst;
        if (os_log_type_enabled(v128, __dst))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v129, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v157 == 1)
      {
        v143 = __nw_create_backtrace_string();
        v128 = __nwlog_obj();
        v144 = __dst;
        v145 = os_log_type_enabled(v128, __dst);
        if (v143)
        {
          if (v145)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
            *&buf[12] = 2082;
            *&buf[14] = v143;
            _os_log_impl(&dword_181A37000, v128, v144, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v143);
          goto LABEL_331;
        }

        if (v145)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v144, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v128 = __nwlog_obj();
        v151 = __dst;
        if (os_log_type_enabled(v128, __dst))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_parent_is_known_tracker";
          _os_log_impl(&dword_181A37000, v128, v151, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_331:
    if (v127)
    {
      free(v127);
    }

LABEL_75:
    if (nw_parameters_get_use_enhanced_privacy_mode(*(*(a1 + 40) + 304)))
    {
      return 1;
    }

LABEL_76:
    if (v3)
    {
      v60 = *(a1 + 40);
      if (*v3)
      {
        if ((!v60 || (*(v60 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v61 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v62 = *(a1 + 40);
            v63 = v62 == 0;
            if (v62)
            {
              v64 = (v62 + 507);
            }

            else
            {
              v64 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
            *&buf[14] = v64;
            v65 = " ";
            *&buf[12] = 2082;
            if (v63)
            {
              v65 = "";
            }

            *&buf[22] = 2080;
            *&buf[24] = v65;
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived geohash hint %{public}s", buf, 0x2Au);
          }
        }

LABEL_224:
        if (!*v3)
        {
          return 1;
        }

LABEL_225:
        v56 = *(a1 + 48);
        v57 = a2;
        v54 = v3;
LABEL_226:
        nw_http_fields_append(v56, v57, v54);
        return 1;
      }
    }

    else
    {
      v60 = *(a1 + 40);
    }

    if (v60)
    {
      v110 = *(v60 + 312);
      if (v110)
      {
        if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
        }

        if (nw_protocol_masque_get_definition(void)::definition)
        {
          v111 = os_retain(nw_protocol_masque_get_definition(void)::definition);
        }

        else
        {
          v111 = 0;
        }

        globals_for_protocol = nw_context_get_globals_for_protocol(v110, v111);
        if (globals_for_protocol)
        {
          v3 = (globals_for_protocol + 4);
          *(globals_for_protocol + 10) = 0;
          v113 = *(a1 + 40);
          if (v113)
          {
            goto LABEL_221;
          }

          goto LABEL_222;
        }

        v142 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        LODWORD(v152) = 12;
        v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s called with null globals", buf, v152);
        LOBYTE(__dst) = 16;
        LOBYTE(v157) = 0;
        if (!__nwlog_fault(v132, &__dst, &v157))
        {
LABEL_340:
          if (v132)
          {
            free(v132);
          }

          v3 = 0;
          v113 = *(a1 + 40);
          if (v113)
          {
LABEL_221:
            if (*(v113 + 505))
            {
              goto LABEL_223;
            }
          }

LABEL_222:
          if (gLogDatapath == 1)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v136 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              v137 = *(a1 + 40);
              v138 = v137 == 0;
              if (v137)
              {
                v139 = (v137 + 507);
              }

              else
              {
                v139 = "";
              }

              *buf = 136446978;
              *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
              *&buf[14] = v139;
              v140 = " ";
              *&buf[12] = 2082;
              if (v138)
              {
                v140 = "";
              }

              *&buf[22] = 2080;
              *&buf[24] = v140;
              *&buf[32] = 2082;
              *&buf[34] = v3;
              _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sUsing cached geohash hint %{public}s", buf, 0x2Au);
            }
          }

LABEL_223:
          if (!v3)
          {
            return 1;
          }

          goto LABEL_224;
        }

        if (__dst == 17)
        {
          v133 = __nwlog_obj();
          v134 = __dst;
          if (!os_log_type_enabled(v133, __dst))
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v135 = "%{public}s called with null globals";
          goto LABEL_339;
        }

        if (v157 != 1)
        {
          v133 = __nwlog_obj();
          v134 = __dst;
          if (!os_log_type_enabled(v133, __dst))
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v135 = "%{public}s called with null globals, backtrace limit exceeded";
          goto LABEL_339;
        }

        v146 = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = __dst;
        v150 = os_log_type_enabled(v133, __dst);
        if (!v146)
        {
          if (!v150)
          {
            goto LABEL_340;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          v135 = "%{public}s called with null globals, no backtrace";
          goto LABEL_339;
        }

        if (v150)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_get_cached_geohash_value";
          *&buf[12] = 2082;
          *&buf[14] = v146;
          v148 = "%{public}s called with null globals, dumping backtrace:%{public}s";
          goto LABEL_311;
        }

LABEL_312:
        free(v146);
        goto LABEL_340;
      }

      v141 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      LODWORD(v152) = 12;
      v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null masque->context", buf, v152);
      LOBYTE(__dst) = 16;
      LOBYTE(v157) = 0;
      if (!__nwlog_fault(v132, &__dst, &v157))
      {
        goto LABEL_340;
      }

      if (__dst == 17)
      {
        v133 = __nwlog_obj();
        v134 = __dst;
        if (!os_log_type_enabled(v133, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque->context";
        goto LABEL_339;
      }

      if (v157 != 1)
      {
        v133 = __nwlog_obj();
        v134 = __dst;
        if (!os_log_type_enabled(v133, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque->context, backtrace limit exceeded";
        goto LABEL_339;
      }

      v146 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v134 = __dst;
      v149 = os_log_type_enabled(v133, __dst);
      if (!v146)
      {
        if (!v149)
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque->context, no backtrace";
        goto LABEL_339;
      }

      if (!v149)
      {
        goto LABEL_312;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      *&buf[12] = 2082;
      *&buf[14] = v146;
      v148 = "%{public}s called with null masque->context, dumping backtrace:%{public}s";
    }

    else
    {
      v131 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      LODWORD(v152) = 12;
      v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v131, 16, "%{public}s called with null masque", buf, v152);
      LOBYTE(__dst) = 16;
      LOBYTE(v157) = 0;
      if (!__nwlog_fault(v132, &__dst, &v157))
      {
        goto LABEL_340;
      }

      if (__dst == 17)
      {
        v133 = __nwlog_obj();
        v134 = __dst;
        if (!os_log_type_enabled(v133, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque";
LABEL_339:
        _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0xCu);
        goto LABEL_340;
      }

      if (v157 != 1)
      {
        v133 = __nwlog_obj();
        v134 = __dst;
        if (!os_log_type_enabled(v133, __dst))
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_339;
      }

      v146 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v134 = __dst;
      v147 = os_log_type_enabled(v133, __dst);
      if (!v146)
      {
        if (!v147)
        {
          goto LABEL_340;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_get_cached_geohash_value";
        v135 = "%{public}s called with null masque, no backtrace";
        goto LABEL_339;
      }

      if (!v147)
      {
        goto LABEL_312;
      }

      *buf = 136446466;
      *&buf[4] = "nw_masque_get_cached_geohash_value";
      *&buf[12] = 2082;
      *&buf[14] = v146;
      v148 = "%{public}s called with null masque, dumping backtrace:%{public}s";
    }

LABEL_311:
    _os_log_impl(&dword_181A37000, v133, v134, v148, buf, 0x16u);
    goto LABEL_312;
  }

  v33 = v32;
  if (!strcasecmp(a2, "User-Agent"))
  {
    *&__dst = 0;
    if (v3 && *v3)
    {
      v88 = *(a1 + 40);
      if ((!v88 || (*(v88 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v89 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(a1 + 40);
          v91 = v90 == 0;
          if (v90)
          {
            v92 = (v90 + 507);
          }

          else
          {
            v92 = "";
          }

          *buf = 136446978;
          *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
          *&buf[14] = v92;
          v93 = " ";
          *&buf[12] = 2082;
          if (v91)
          {
            v93 = "";
          }

          *&buf[22] = 2080;
          *&buf[24] = v93;
          *&buf[32] = 2082;
          *&buf[34] = v3;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived user agent %{public}s", buf, 0x2Au);
        }
      }

LABEL_177:
      if (*v3)
      {
        nw_http_fields_append(*(a1 + 48), a2, v3);
      }

LABEL_179:
      v105 = __dst;
      if (!__dst)
      {
        return 1;
      }

LABEL_180:
      free(v105);
      return 1;
    }

    if (nw_utilities_get_user_agent::onceToken != -1)
    {
      dispatch_once(&nw_utilities_get_user_agent::onceToken, &__block_literal_global_13_47236);
    }

    v3 = nw_utilities_get_user_agent::user_agent_string;
    v103 = *(*(a1 + 40) + 503);
    if ((v103 & 0x1000000) != 0)
    {
      asprintf(&__dst, "%s (nwhttp)", nw_utilities_get_user_agent::user_agent_string);
      v3 = __dst;
      v104 = *(a1 + 40);
      if (!v104)
      {
LABEL_175:
        if (gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v121 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v122 = *(a1 + 40);
            v123 = v122 == 0;
            if (v122)
            {
              v124 = (v122 + 507);
            }

            else
            {
              v124 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_add_extra_headers_to_request_block_invoke";
            *&buf[14] = v124;
            v125 = " ";
            *&buf[12] = 2082;
            if (v123)
            {
              v125 = "";
            }

            *&buf[22] = 2080;
            *&buf[24] = v125;
            *&buf[32] = 2082;
            *&buf[34] = v3;
            _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sUsing process user agent %{public}s", buf, 0x2Au);
          }
        }

LABEL_176:
        if (!v3)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

      v103 = *(v104 + 503);
    }

    if ((v103 & 0x10000) != 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if (v27 || v3 && *v3)
  {
    if (!v28 && (!v3 || !*v3))
    {
      nw_masque_add_require_interface_header_to_request(*(*(a1 + 40) + 304), *(a1 + 48));
      return 1;
    }

    if (!v29 && (!v3 || !*v3))
    {
      nw_masque_add_prohibit_interface_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    if (!v30 && (!v3 || !*v3))
    {
      nw_masque_add_client_application_header_to_request(*(*(a1 + 40) + 304), *(a1 + 48));
      return 1;
    }

    if (!v31 && (!v3 || !*v3))
    {
      nw_masque_add_multipath_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    if (!v33 && (!v3 || !*v3))
    {
      nw_masque_add_listener_association_header_to_request(*(a1 + 40), *(a1 + 48));
      return 1;
    }

    goto LABEL_225;
  }

  v98 = *(a1 + 40);
  v99 = *(a1 + 48);
  traffic_class = nw_parameters_get_traffic_class(*(v98 + 304));
  result = 1;
  if (traffic_class <= 499)
  {
    if (traffic_class <= 199)
    {
      if (!traffic_class)
      {
        v101 = nw_http_priority_traffic_class_best_effort;
        v102 = "u=6";
        goto LABEL_243;
      }

      if (traffic_class != 100)
      {
        return result;
      }

      v101 = nw_http_priority_traffic_class_background_system;
    }

    else
    {
      if (traffic_class != 200)
      {
        if (traffic_class == 300)
        {
          v101 = nw_http_priority_traffic_class_responsive_data;
          v102 = "u=5";
        }

        else
        {
          if (traffic_class != 400)
          {
            return result;
          }

          v101 = nw_http_priority_traffic_class_oam;
          v102 = "u=4";
        }

        goto LABEL_243;
      }

      v101 = nw_http_priority_traffic_class_background_user;
    }

    v102 = "u=7";
    goto LABEL_243;
  }

  if (traffic_class > 699)
  {
    switch(traffic_class)
    {
      case 700:
        v101 = nw_http_priority_traffic_class_video;
        break;
      case 900:
        v101 = nw_http_priority_traffic_class_network_control;
        v102 = "u=0";
        goto LABEL_243;
      case 800:
        v101 = nw_http_priority_traffic_class_voice;
        break;
      default:
        return result;
    }

    v102 = "u=1";
    goto LABEL_243;
  }

  if (traffic_class == 500)
  {
    v101 = nw_http_priority_traffic_class_av_streaming;
    v102 = "u=3";
  }

  else
  {
    if (traffic_class != 600)
    {
      return result;
    }

    v101 = nw_http_priority_traffic_class_responsive_av;
    v102 = "u=2";
  }

LABEL_243:
  v114 = *v101;
  if (v114)
  {
    *buf = 0;
    asprintf(buf, "%s,%s", v102, v114);
    nw_http_fields_append(v99, "Priority", *buf);
    v105 = *buf;
    if (!*buf)
    {
      return 1;
    }

    goto LABEL_180;
  }

  return result;
}

void sub_181DAD4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_fields_append(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (a2)
    {
LABEL_3:
      if (a3)
      {
LABEL_4:
        _nw_http_fields_append(v5, a2, a3);

        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v16 = 136446210;
    v17 = "nw_http_fields_append";
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s NULL argument", &v16, 12);

    if (__nwlog_should_abort(v8))
    {
      goto LABEL_20;
    }

    free(v8);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v16 = 136446210;
  v17 = "nw_http_fields_append";
  LODWORD(v15) = 12;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s NULL argument", &v16, v15);

  if (__nwlog_should_abort(v11))
  {
    goto LABEL_20;
  }

  free(v11);
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_15:
  v12 = __nwlog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v16 = 136446210;
  v17 = "nw_http_fields_append";
  LODWORD(v15) = 12;
  v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s NULL argument", &v16, v15);

  if (!__nwlog_should_abort(v14))
  {
    free(v14);
    goto LABEL_4;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_181DAD744(uint64_t a1, unint64_t a2, const char *a3)
{

  sub_181CA0008(a2, -1, &v22);
  v6 = v23;
  if (v23)
  {
    v7 = v22;
    v8 = v24;
    v9 = v25;
    v10 = strlen(a3);
    if (v10)
    {
      v11 = 0;
      while ((a3[v11] & 0x80000000) == 0)
      {
        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }

      v22 = a3;
      v23 = v10;
      v24 = sub_1822876F4;
      v25 = 0;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0, &qword_182AF7A28);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0, &qword_182AF7A28, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      v12 = sub_182AD30B8();
      v14 = v13;
    }

    v15 = sub_181CA1930(v12, v14);
    v17 = v16;

    v22 = v7;
    v23 = v6;
    v24 = v8;
    v25 = v9;
    v26 = 0;
    *v27 = v21;
    *&v27[3] = *(&v21 + 3);
    v28 = v15;
    v29 = v17;
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(*a1 + 88))(sub_181DAD98C, v19);

    return sub_181CA27BC(&v22);
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_181DAD994(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 24);
  return swift_endAccess();
}

void nw_quic_report_application_result_on_queue(void *a1, int a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_quic_report_application_result_on_queue";
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null association", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v53, &type, &v63))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v56 = "%{public}s called with null association";
LABEL_100:
        _os_log_impl(&dword_181A37000, v54, v55, v56, buf, 0xCu);
      }
    }

    else
    {
      if (v63 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v55 = type;
        v59 = os_log_type_enabled(v54, type);
        if (backtrace_string)
        {
          if (v59)
          {
            *buf = 136446466;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_102;
        }

        if (!v59)
        {
          goto LABEL_101;
        }

        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v56 = "%{public}s called with null association, no backtrace";
        goto LABEL_100;
      }

      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v56 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_100;
      }
    }

LABEL_101:

LABEL_102:
    if (v53)
    {
      free(v53);
    }

    goto LABEL_73;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v4 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (!v4)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_quic_report_application_result_on_queue";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v27, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null definition";
        goto LABEL_48;
      }

      if (v63 != 1)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_48;
      }

      v60 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v61 = os_log_type_enabled(v28, type);
      if (!v60)
      {
        if (!v61)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null definition, no backtrace";
        goto LABEL_48;
      }

      if (v61)
      {
        *buf = 136446466;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2082;
        v68 = v60;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v60);
    }

LABEL_51:
    if (!v27)
    {
LABEL_72:

LABEL_73:
      return;
    }

LABEL_52:
    free(v27);
    goto LABEL_72;
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v4);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 0x30uLL, 0x3A426E9CuLL)) != 0)
  {
    v6 = cached_content_for_protocol;
    if (a2)
    {
      v7 = *(cached_content_for_protocol + 36) + 1;
      *(cached_content_for_protocol + 36) = v7;
      if (v7 != v7 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = *(v6 + 36);
        *buf = 136446978;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2082;
        v68 = "association_cache->application_success_count";
        v69 = 2048;
        v70 = 1;
        v71 = 2048;
        *v72 = v9;
        v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);

        type = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (!__nwlog_fault(v10, &type, &v63))
        {
LABEL_57:
          if (v10)
          {
            free(v10);
          }

          *(v6 + 36) = -1;
          goto LABEL_67;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v11, type))
          {
            v13 = *(v6 + 36);
            *buf = 136446978;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = "association_cache->application_success_count";
            v69 = 2048;
            v70 = 1;
            v71 = 2048;
            *v72 = v13;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_55:
            _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x2Au);
          }
        }

        else
        {
          if (v63 == 1)
          {
            v31 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v11 = gLogObj;
            v12 = type;
            v32 = os_log_type_enabled(v11, type);
            if (v31)
            {
              if (v32)
              {
                v33 = *(v6 + 36);
                *buf = 136447234;
                v66 = "nw_quic_report_application_result_on_queue";
                v67 = 2082;
                v68 = "association_cache->application_success_count";
                v69 = 2048;
                v70 = 1;
                v71 = 2048;
                *v72 = v33;
                *&v72[8] = 2082;
                v73 = v31;
                _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v31);
              goto LABEL_57;
            }

            if (!v32)
            {
              goto LABEL_56;
            }

            v44 = *(v6 + 36);
            *buf = 136446978;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = "association_cache->application_success_count";
            v69 = 2048;
            v70 = 1;
            v71 = 2048;
            *v72 = v44;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_55;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v11, type))
          {
            v40 = *(v6 + 36);
            *buf = 136446978;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = "association_cache->application_success_count";
            v69 = 2048;
            v70 = 1;
            v71 = 2048;
            *v72 = v40;
            v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_55;
          }
        }

LABEL_56:

        goto LABEL_57;
      }

LABEL_67:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v46 = gLogObj;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = "failure";
        v48 = *(v6 + 36);
        v49 = *(v6 + 40);
        if (a2)
        {
          v47 = "success";
        }

        *buf = 136447234;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2112;
        v68 = v3;
        v69 = 2080;
        v70 = v47;
        v71 = 1024;
        *v72 = v48;
        *&v72[4] = 1024;
        *&v72[6] = v49;
        _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %@ recording %s for QUIC application result, total success: %u, total failure: %u", buf, 0x2Cu);
      }

      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_cache_seconds, 1800);
      v51 = time(0);
      nw_association_set_cached_content_for_protocol(v3, v4, v6, v51 + int64_with_default);
      goto LABEL_72;
    }

    v15 = *(cached_content_for_protocol + 40) + 1;
    *(cached_content_for_protocol + 40) = v15;
    if (v15 == v15 << 31 >> 31)
    {
      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = *(v6 + 40);
    *buf = 136446978;
    v66 = "nw_quic_report_application_result_on_queue";
    v67 = 2082;
    v68 = "association_cache->application_failure_count";
    v69 = 2048;
    v70 = 1;
    v71 = 2048;
    *v72 = v17;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v18, &type, &v63))
    {
LABEL_64:
      if (v18)
      {
        free(v18);
      }

      *(v6 + 40) = -1;
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        v21 = *(v6 + 40);
        *buf = 136446978;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2082;
        v68 = "association_cache->application_failure_count";
        v69 = 2048;
        v70 = 1;
        v71 = 2048;
        *v72 = v21;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_62:
        _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x2Au);
      }
    }

    else
    {
      if (v63 == 1)
      {
        v34 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v35 = os_log_type_enabled(v19, type);
        if (v34)
        {
          if (v35)
          {
            v36 = *(v6 + 40);
            *buf = 136447234;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = "association_cache->application_failure_count";
            v69 = 2048;
            v70 = 1;
            v71 = 2048;
            *v72 = v36;
            *&v72[8] = 2082;
            v73 = v34;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v34);
          goto LABEL_64;
        }

        if (!v35)
        {
          goto LABEL_63;
        }

        v45 = *(v6 + 40);
        *buf = 136446978;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2082;
        v68 = "association_cache->application_failure_count";
        v69 = 2048;
        v70 = 1;
        v71 = 2048;
        *v72 = v45;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_62;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        v41 = *(v6 + 40);
        *buf = 136446978;
        v66 = "nw_quic_report_application_result_on_queue";
        v67 = 2082;
        v68 = "association_cache->application_failure_count";
        v69 = 2048;
        v70 = 1;
        v71 = 2048;
        *v72 = v41;
        v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_62;
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  *buf = 136446722;
  v66 = "nw_quic_report_application_result_on_queue";
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v67 = 2048;
  v68 = 1;
  v69 = 2048;
  v70 = 48;
  v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  if (!__nwlog_should_abort(v25))
  {
    free(v25);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v66 = "nw_quic_report_application_result_on_queue";
    LODWORD(v62) = 12;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null association_cache", buf, v62);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v27, &type, &v63))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null association_cache";
LABEL_48:
        v42 = v28;
        v43 = v29;
LABEL_49:
        _os_log_impl(&dword_181A37000, v42, v43, v30, buf, 0xCu);
      }
    }

    else
    {
      if (v63 == 1)
      {
        v37 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v38 = type;
        v39 = os_log_type_enabled(v28, type);
        if (v37)
        {
          if (v39)
          {
            *buf = 136446466;
            v66 = "nw_quic_report_application_result_on_queue";
            v67 = 2082;
            v68 = v37;
            _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null association_cache, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          if (!v27)
          {
            goto LABEL_72;
          }

          goto LABEL_52;
        }

        if (!v39)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null association_cache, no backtrace";
        v42 = v28;
        v43 = v38;
        goto LABEL_49;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v66 = "nw_quic_report_application_result_on_queue";
        v30 = "%{public}s called with null association_cache, backtrace limit exceeded";
        goto LABEL_48;
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  __break(1u);
}

uint64_t sub_181DAE950(uint64_t *a1, __int128 *a2)
{
  v10 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v4 = *(a2 + 32);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *a1;
  swift_beginAccess();
  v8 = *(*(v7 + 16) + 16);
  v11 = v10;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  return sub_181DAE9E4(v8, v8, &v11);
}

uint64_t sub_181DAE9E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_181DAEBE0();

    *v4 = v9;
  }

  swift_beginAccess();
  if (*(*(v9 + 16) + 16) == a1)
  {
    v10 = *a3;
    v11 = *(a3 + 8);
    v12 = *(a3 + 32);
    v21 = *(a3 + 16);
    v15 = v12;
    v16 = *(a3 + 48);
    result = sub_181CBD984(v10, v11);
    if ((result & 0x1FF) != 0x3A)
    {
      *&v22 = v10;
      *(&v22 + 1) = v11;
      v23 = v21;
      v24 = v15;
      v25 = v16;
      sub_181AB5D28(a3, &v17, &qword_1EA839C18, &qword_182AF2C00);
      sub_181CA21B0(&v22);
      return sub_181F49A88(a3, &qword_1EA839C18, &qword_182AF2C00);
    }
  }

  else
  {
    swift_beginAccess();
    *(v9 + 24) = 0;

    v14 = *(a3 + 16);
    v17 = *a3;
    v18 = v14;
    v19 = *(a3 + 32);
    v20 = *(a3 + 48);
    swift_beginAccess();
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = sub_1820883E8;
    v27 = 0;
    sub_181AB5D28(a3, &v15, &qword_1EA839C18, &qword_182AF2C00);
    sub_181FCDB58(a1, a2, &v22);
    swift_endAccess();
    result = sub_181F49A88(&v22, &qword_1EA83A080, &unk_182AF2C08);
    if (*(*(v9 + 16) + 16) <= 0xFFFEuLL)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181DAEBE0()
{
  v1 = v0;
  v2 = (*(*v0 + 144))();
  swift_beginAccess();
  v3 = v0[2];
  swift_beginAccess();
  *(v2 + 16) = v3;

  v5[2] = v1;
  v5[3] = v2;
  (*(*v1 + 152))(sub_181DAED4C, v5, MEMORY[0x1E69E7CA8] + 8);
  return v2;
}

uint64_t sub_181DAED00()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = sub_181CAF7B4(v1);
  return v0;
}

uint64_t sub_181DAED68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(a2 + 24) = v4;
}

uint64_t __nw_http_connection_metadata_copy_cached_token_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 224) & 0x20) != 0)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      *v11 = 1;
    }

    return 1;
  }

  v3 = *(a2 + 80);
  if (!v3)
  {
    return 1;
  }

  length = xpc_data_get_length(v3);
  if (!length)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v16 = 136446210;
    v17 = "nw_http_connection_metadata_copy_cached_token_block_invoke";
    v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_malloc called with size 0", &v16, 12);

    result = __nwlog_should_abort(v14);
    if (result)
    {
      goto LABEL_19;
    }

    free(v14);
  }

  v6 = malloc_type_malloc(length, 0x925691CFuLL);
  if (v6)
  {
LABEL_10:
    *(*(*(a1 + 32) + 8) + 24) = v6;
    **(a1 + 48) = xpc_data_get_bytes(*(a2 + 80), *(*(*(a1 + 32) + 8) + 24), 0, length);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v16 = 136446210;
  v17 = "nw_http_connection_metadata_copy_cached_token_block_invoke";
  LODWORD(v15) = 12;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict allocator failed", &v16, v15);

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v6 = 0;
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *nw_path_copy_token_from_agent(void *a1, const unsigned __int8 *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null path", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v45 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v45))
    {
      goto LABEL_37;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v33, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v45 != OS_LOG_TYPE_INFO)
    {
      v8 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v41, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v37 = type[0];
    v38 = os_log_type_enabled(v8, type[0]);
    if (!backtrace_string)
    {
      if (v38)
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v37, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v38)
    {
      *buf = 136446466;
      v47 = "nw_path_copy_token_from_agent";
      v48 = 2082;
      *v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v37, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_76;
  }

  if (!a3)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null out_token_length", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v45 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v45))
    {
      goto LABEL_37;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v35, "%{public}s called with null out_token_length", buf, 0xCu);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v45 != OS_LOG_TYPE_INFO)
    {
      v8 = __nwlog_obj();
      v42 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v42, "%{public}s called with null out_token_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v39 = type[0];
    v40 = os_log_type_enabled(v8, type[0]);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v39, "%{public}s called with null out_token_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v40)
    {
      *buf = 136446466;
      v47 = "nw_path_copy_token_from_agent";
      v48 = 2082;
      *v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v39, "%{public}s called with null out_token_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_76:

    free(backtrace_string);
    goto LABEL_37;
  }

  if (uuid_is_null(a2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v47 = "nw_path_copy_token_from_agent";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null agent_uuid", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v45 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v45))
    {
      goto LABEL_37;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null agent_uuid", buf, 0xCu);
      }
    }

    else if (v45 == OS_LOG_TYPE_INFO)
    {
      v19 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v20 = type[0];
      v21 = os_log_type_enabled(v8, type[0]);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v47 = "nw_path_copy_token_from_agent";
          v48 = 2082;
          *v49 = v19;
          _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        if (!v7)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v21)
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null agent_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v47 = "nw_path_copy_token_from_agent";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null agent_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  *a3 = 0;
  v10 = _nw_path_copy_parameters(v5);
  v11 = nw_parameters_copy_context(v10);
  v12 = nw_path_shared_necp_fd(v11);

  if (v12 < 0)
  {
    goto LABEL_39;
  }

  *type = *a2;
  v13 = malloc_type_calloc(1uLL, 0x1000uLL, 0x98510CB9uLL);
  if (v13)
  {
LABEL_16:
    v18 = necp_client_action();
    if (v18 > 0)
    {
      *a3 = v18;
LABEL_40:

      return v13;
    }

    if (v13)
    {
      free(v13);
    }

    v23 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v23 == 96 || v23 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "nw_path_copy_token_from_agent";
        v48 = 1024;
        *v49 = v23;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_39;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    *buf = 136446466;
    v47 = "nw_path_copy_token_from_agent";
    v48 = 1024;
    *v49 = v23;
    LODWORD(v43) = 18;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d", buf, v43);

    v45 = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v7, &v45, &v44))
    {
      if (v45 == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = v45;
        if (os_log_type_enabled(v26, v45))
        {
          *buf = 136446466;
          v47 = "nw_path_copy_token_from_agent";
          v48 = 1024;
          *v49 = v23;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d", buf, 0x12u);
        }

LABEL_56:

        goto LABEL_37;
      }

      if (v44 != 1)
      {
        v26 = __nwlog_obj();
        v31 = v45;
        if (os_log_type_enabled(v26, v45))
        {
          *buf = 136446466;
          v47 = "nw_path_copy_token_from_agent";
          v48 = 1024;
          *v49 = v23;
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }

        goto LABEL_56;
      }

      v28 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v29 = v45;
      v30 = os_log_type_enabled(v26, v45);
      if (!v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v47 = "nw_path_copy_token_from_agent";
          v48 = 1024;
          *v49 = v23;
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, no backtrace", buf, 0x12u);
        }

        goto LABEL_56;
      }

      if (v30)
      {
        *buf = 136446722;
        v47 = "nw_path_copy_token_from_agent";
        v48 = 1024;
        *v49 = v23;
        *&v49[4] = 2082;
        *&v49[6] = v28;
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s NECP_CLIENT_ACTION_ACQUIRE_AGENT_TOKEN %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v28);
    }

LABEL_37:
    if (v7)
    {
LABEL_38:
      free(v7);
    }

LABEL_39:
    v13 = 0;
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *buf = 136446722;
  v47 = "nw_path_copy_token_from_agent";
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v48 = 2048;
  *v49 = 1;
  *&v49[8] = 2048;
  *&v49[10] = 4096;
  v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void nw_http_connection_metadata_set_cached_token(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if ((nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_connection_definition_definition) & 1) == 0)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_http_connection_metadata_set_cached_token";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s metadata must be http_connection", buf, 12);

    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &v23, &v22))
    {
      goto LABEL_37;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection";
LABEL_35:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v23;
      v14 = os_log_type_enabled(v9, v23);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v25 = "nw_http_connection_metadata_set_cached_token";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v8);
        goto LABEL_7;
      }

      if (v14)
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v23;
      if (os_log_type_enabled(v9, v23))
      {
        *buf = 136446210;
        v25 = "nw_http_connection_metadata_set_cached_token";
        v11 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __nw_http_connection_metadata_set_cached_token_block_invoke;
  v19 = &__block_descriptor_48_e9_B16__0_v8l;
  v20 = a2;
  v21 = a3;
  if (v5)
  {
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v18(v17, handle);
    }

    goto LABEL_7;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_metadata_access_handle";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null metadata", buf, 12);

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &v23, &v22))
  {
    goto LABEL_37;
  }

  if (v23 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (os_log_type_enabled(v9, v23))
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v22 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v23;
    if (os_log_type_enabled(v9, v23))
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v23;
  v16 = os_log_type_enabled(v9, v23);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136446210;
      v25 = "nw_protocol_metadata_access_handle";
      v11 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v16)
  {
    *buf = 136446466;
    v25 = "nw_protocol_metadata_access_handle";
    v26 = 2082;
    v27 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_connection_metadata_set_cached_token_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 224) &= ~0x20u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v4 = xpc_data_create(v4, v5);
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = *(a2 + 80);
  *(a2 + 80) = v4;

  return 1;
}

void nw_http_metadata_set_request(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v21 = __nw_http_metadata_set_request_block_invoke;
    v22 = &unk_1E6A3A950;
    v23 = v4;
    if (v3)
    {
      handle = _nw_protocol_metadata_get_handle();
      if (handle)
      {
        v21(v20, handle);
      }

LABEL_7:

      goto LABEL_8;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_metadata_access_handle";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v12, &type, &v24))
    {
LABEL_41:
      if (v12)
      {
        free(v12);
      }

      goto LABEL_7;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata";
LABEL_39:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v19 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v27 = "nw_protocol_metadata_access_handle";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (!v19)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_39;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_metadata_access_handle";
        v15 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_http_metadata_set_request";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s metadata must be http", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v7, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http";
LABEL_33:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        v16 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v17 = os_log_type_enabled(v8, type);
        if (v16)
        {
          if (v17)
          {
            *buf = 136446466;
            v27 = "nw_http_metadata_set_request";
            v28 = 2082;
            v29 = v16;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v16);
          goto LABEL_35;
        }

        if (!v17)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http, no backtrace";
        goto LABEL_33;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v27 = "nw_http_metadata_set_request";
        v10 = "%{public}s metadata must be http, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:
  }

LABEL_35:
  if (v7)
  {
    free(v7);
  }

LABEL_8:
}

uint64_t __nw_http_metadata_set_request_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 24), *(a1 + 32));
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;

  return 1;
}

uint64_t nw_masque_send_metadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_send_metadata";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null masque", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v12, type, &v31))
    {
      goto LABEL_27;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v15 = "%{public}s called with null masque";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type[0];
      v20 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_send_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (!v20)
      {
LABEL_27:
        if (v12)
        {
          free(v12);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v15 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_send_metadata";
      v15 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_27;
  }

  *type = 0;
  v30 = type;
  v6 = (*(*(a3 + 24) + 88))(a3, a1 - 96, 0, 0, 1, type);
  if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    v16 = v6;
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v17 = gprivacy_proxyLogObj;
    v18 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
    v6 = v16;
    if (v18)
    {
      *buf = 136446978;
      *&buf[4] = "nw_masque_send_metadata";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 507;
      *&buf[22] = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u output frames", buf, 0x26u);
      v6 = v16;
    }
  }

  if (!v6)
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v33) = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v23 = ___ZL23nw_masque_send_metadataP9nw_masqueP20nw_protocol_metadataP11nw_protocol_block_invoke;
  v24 = &unk_1E6A2F6E8;
  v25 = buf;
  v26 = type;
  v27 = a1;
  v28 = a2;
  v7 = *type;
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 32);
    v9 = (v23)(v22);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  v10 = (*(*(a3 + 24) + 96))(a3, type);
  _Block_object_dispose(buf, 8);
  return v10;
}

uint64_t nw_protocol_http3_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, int a5, nw_frame_array_s *a6)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v18, &type, &v88))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol";
LABEL_123:
        v54 = v59;
        v55 = v60;
        v56 = 12;
        goto LABEL_80;
      }

LABEL_81:
      if (v18)
      {
        free(v18);
      }

      return 0;
    }

    if (v88 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v73 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (v73)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (!v73)
    {
      goto LABEL_47;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v34 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_106:
    v35 = v59;
    v36 = v60;
    v37 = 22;
    goto LABEL_46;
  }

  handle = a1->handle;
  if (!handle)
  {
    v61 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v18, &type, &v88))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (v88 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v74 = os_log_type_enabled(v59, type);
    if (!backtrace_string)
    {
      if (v74)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        v22 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (!v74)
    {
      goto LABEL_47;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v34 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
    goto LABEL_106;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v62 = a6;
    v63 = a5;
    v64 = a4;
    v65 = a3;
    v66 = __nwlog_obj();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
    a3 = v65;
    a4 = v64;
    a5 = v63;
    a6 = v62;
    if (v67)
    {
      v68 = *(*(handle + 43) + 1304);
      v69 = *(handle + 30);
      v70 = *(handle + 94);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v91) = 1024;
      *(&v91 + 2) = v68;
      WORD3(v91) = 2048;
      *(&v91 + 1) = v69;
      v92 = 1024;
      v93 = v70;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
      a3 = v65;
      a4 = v64;
      a5 = v63;
      a6 = v62;
    }
  }

  v7 = 0;
  v8 = *(handle + 94);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return v7;
      }

      v9 = *(handle + 49);
      *(v9 + 32) = 0;
      tqh_last = a6->tqh_last;
      *(v9 + 40) = tqh_last;
      *tqh_last = v9;
      a6->tqh_last = (v9 + 32);
      *(handle + 94) = 2;
      v11 = *(handle + 43);
      if (v11)
      {
        if ((*(v11 + 1397) & 1) == 0 && (*(v11 + 1399) & 8) == 0 && *(v11 + 1256) && *(v11 + 1292))
        {
          if ((*(v11 + 1399) & 0x20) == 0)
          {
            v12 = __nwlog_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = *(v11 + 1304);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              LOWORD(v91) = 1024;
              *(&v91 + 2) = v13;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> increasing QUIC keepalive frequency for requests", buf, 0x26u);
            }
          }

          *(v11 + 1399) |= 8u;
          nw_quic_connection_set_keepalive(*(v11 + 1256), 2);
        }

        nw_http_connection_metadata_increment_outbound_message_count(*(v11 + 1264));
        return 1;
      }

      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = *(handle + 94);
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v17;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Unexpected output state %d", buf, 18);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v18, &type, &v88))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_81;
      }

      v21 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v22 = "%{public}s Unexpected output state %d";
LABEL_79:
      v54 = v19;
      v55 = v20;
      v56 = 18;
LABEL_80:
      _os_log_impl(&dword_181A37000, v54, v55, v22, buf, v56);
      goto LABEL_81;
    }

    if (v88 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_81;
      }

      v38 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v38;
      v22 = "%{public}s Unexpected output state %d, backtrace limit exceeded";
      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    v32 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v32)
      {
        goto LABEL_81;
      }

      v53 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v53;
      v22 = "%{public}s Unexpected output state %d, no backtrace";
      goto LABEL_79;
    }

    if (!v32)
    {
LABEL_47:
      free(backtrace_string);
      goto LABEL_81;
    }

    v33 = *(handle + 94);
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v33;
    *&buf[18] = 2082;
    *&buf[20] = backtrace_string;
    v34 = "%{public}s Unexpected output state %d, dumping backtrace:%{public}s";
    v35 = v19;
    v36 = v20;
    v37 = 28;
LABEL_46:
    _os_log_impl(&dword_181A37000, v35, v36, v34, buf, v37);
    goto LABEL_47;
  }

  if (v8 != 3)
  {
    if (v8 != 5)
    {
      return v7;
    }

    v14 = a6;
    if (a5 && !a4 && (handle[734] & 1) != 0)
    {
      v15 = nw_frame_create(0, 0, 0, nw_protocol_http3_capsule_frame_finalizer, 0);
      *(v15 + 32) = 0;
      v16 = v14->tqh_last;
      *(v15 + 40) = v16;
      *v16 = v15;
      v14->tqh_last = (v15 + 32);
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v75 = __nwlog_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          v76 = *(*(handle + 43) + 1304);
          v77 = *(handle + 30);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = handle + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v91) = 1024;
          *(&v91 + 2) = v76;
          WORD3(v91) = 2048;
          *(&v91 + 1) = v77;
          _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> returning a metadata-only output frame", buf, 0x30u);
          return 1;
        }
      }

      return 1;
    }

    v27 = *(handle + 12);
    if (v27)
    {
      v7 = (*(*(v27 + 24) + 88))();
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v28 = __nwlog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(*(handle + 43) + 1304);
          v30 = *(handle + 30);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = handle + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v91) = 1024;
          *(&v91 + 2) = v29;
          WORD3(v91) = 2048;
          *(&v91 + 1) = v30;
          v92 = 1024;
          v93 = v7;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> returning %u output datagrams", buf, 0x36u);
        }
      }

      return v7;
    }

    if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v46 = __nwlog_obj();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(*(handle + 43) + 1304);
        v48 = *(handle + 30);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http3_stream_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 632;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v91) = 1024;
        *(&v91 + 2) = v47;
        WORD3(v91) = 2048;
        *(&v91 + 1) = v48;
        v49 = "%{public}s %{public}s%s<i%u:s%llu> no datagram output handler";
        v50 = v46;
        v51 = OS_LOG_TYPE_DEBUG;
        v52 = 48;
LABEL_97:
        _os_log_impl(&dword_181A37000, v50, v51, v49, buf, v52);
        return 0;
      }
    }

    return 0;
  }

  v23 = *(handle + 20);
  if (!v23 || (v24 = *(v23 + 24)) == 0 || !*(v24 + 88))
  {
    v71 = *(handle + 20);
    v72 = __nwlog_obj();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
      *&buf[12] = 2048;
      *&buf[14] = v71;
      v49 = "%{public}s Output handler (%p)'s get_output_frames callback is not properly set";
      v50 = v72;
      v51 = OS_LOG_TYPE_ERROR;
      v52 = 22;
      goto LABEL_97;
    }

    return 0;
  }

  if (a3 >= 0x40 && a3 >= 0x4000)
  {
    v39 = a3 >> 30 ? 9 : 5;
    v40 = a3 + v39;
    if (__CFADD__(a3, v39))
    {
      if (gLogDatapath == 1)
      {
        v85 = a4;
        v86 = *(handle + 20);
        v78 = a6;
        v79 = __nwlog_obj();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          if (v40 >= 0x40)
          {
            if (v40 >= 0x4000)
            {
              v80 = 9;
              if (!(v40 >> 30))
              {
                v80 = 5;
              }
            }

            else
            {
              v80 = 3;
            }
          }

          else
          {
            v80 = 2;
          }

          *buf = 136446978;
          *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
          *&buf[12] = 2082;
          *&buf[14] = "minimum_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v80;
          LOWORD(v91) = 2048;
          *(&v91 + 2) = v40;
          _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        a6 = v78;
        v23 = v86;
        a4 = v85;
        if (v85 >= 0x40)
        {
          goto LABEL_59;
        }
      }

      else if (a4 >= 0x40)
      {
        goto LABEL_59;
      }

LABEL_35:
      v25 = __CFADD__(a4, 2);
      v26 = a4 + 2;
      if (!v25)
      {
        goto LABEL_68;
      }

LABEL_67:
      if (gLogDatapath == 1)
      {
        v81 = v26;
        v87 = v23;
        v82 = a6;
        v83 = __nwlog_obj();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          if (v81 >= 0x40)
          {
            if (v81 >= 0x4000)
            {
              v84 = 9;
              if (!(v81 >> 30))
              {
                v84 = 5;
              }
            }

            else
            {
              v84 = 3;
            }
          }

          else
          {
            v84 = 2;
          }

          *buf = 136446978;
          *&buf[4] = "nw_http3_framer_get_output_frames_for_multiple_http3_frames";
          *&buf[12] = 2082;
          *&buf[14] = "maximum_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v84;
          LOWORD(v91) = 2048;
          *(&v91 + 2) = v81;
          _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        a6 = v82;
        v23 = v87;
      }

      goto LABEL_68;
    }
  }

  if (a4 < 0x40)
  {
    goto LABEL_35;
  }

LABEL_59:
  if (a4 >= 0x4000)
  {
    if (a4 >> 30)
    {
      v41 = 9;
    }

    else
    {
      v41 = 5;
    }

    v25 = __CFADD__(a4, v41);
    v26 = a4 + v41;
    if (v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v25 = __CFADD__(a4, 3);
    v26 = a4 + 3;
    if (v25)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  v42 = a6;
  v7 = (*(*(v23 + 24) + 88))();
  if (v7)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL59nw_http3_framer_get_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tjjjP16nw_frame_array_s_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_146_65285;
    *&v91 = 0;
    *(&v91 + 1) = handle + 128;
    tqh_first = v42->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v44 = *(tqh_first + 4);
      v45 = (*&buf[16])(buf);
      tqh_first = v44;
    }

    while ((v45 & 1) != 0);
  }

  return v7;
}

void nw_http_connection_metadata_increment_outbound_message_count(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_connection_metadata_increment_outbound_message_count";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_http_connection_metadata_increment_outbound_message_count";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_connection_metadata_increment_outbound_message_count";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_connection_definition_definition))
  {
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      __nw_http_connection_metadata_increment_outbound_message_count_block_invoke(&__block_literal_global_112, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_connection_metadata_increment_outbound_message_count";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s metadata must be http_connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http_connection_metadata_increment_outbound_message_count";
      v7 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http_connection_metadata_increment_outbound_message_count";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_quic_stream_set_application_error(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_application_error(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_application_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_application_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

uint64_t __nw_http_connection_metadata_increment_outbound_message_count_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 152) + 1;
  *(a2 + 152) = v2;
  if (v2 != v2 << 31 >> 31)
  {
    if (gLogDatapath == 1)
    {
      v4 = a2;
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v4 + 152);
        v7 = 136446978;
        v8 = "nw_http_connection_metadata_increment_outbound_message_count_block_invoke";
        v9 = 2082;
        v10 = "http_metadata->outbound_message_count";
        v11 = 2048;
        v12 = 1;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", &v7, 0x2Au);
      }

      a2 = v4;
    }

    *(a2 + 152) = -1;
  }

  return 1;
}

uint64_t _nw_quic_stream_set_application_error_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0, &qword_182B03870);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 72) + 16));
      v6 = *(v5 + 48);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 72) + 16));
    }
  }

  return result;
}

uint64_t ___ZL23nw_masque_send_metadataP9nw_masqueP20nw_protocol_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = (*(a1 + 40) + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = *(a1 + 48);
    if ((!v7 || (*(v7 + 505) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v8 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = "";
        v11 = v9 == 0;
        if (v9)
        {
          v12 = (v9 + 507);
        }

        else
        {
          v12 = "";
        }

        v14 = 136446722;
        v15 = "nw_masque_send_metadata_block_invoke";
        if (!v11)
        {
          v10 = " ";
        }

        v16 = 2082;
        v17 = v12;
        v18 = 2080;
        v19 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDropping unneeded output frame", &v14, 0x20u);
      }
    }
  }

  else
  {
    nw_frame_collapse(a2);
    nw_frame_set_metadata(a2, *(a1 + 56), 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t nw_protocol_http3_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v78) = 0;
    if (!__nwlog_fault(v17, type, &v78 + 4))
    {
      goto LABEL_87;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol";
      goto LABEL_85;
    }

    if (BYTE4(v78) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v62 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v62)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v63 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_116:
          _os_log_impl(&dword_181A37000, v18, v19, v63, buf, 0x16u);
        }

LABEL_117:
        free(backtrace_string);
        goto LABEL_87;
      }

      if (!v62)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_85:
    v52 = v18;
    v53 = v19;
LABEL_86:
    _os_log_impl(&dword_181A37000, v52, v53, v20, buf, 0xCu);
    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null http3_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v78) = 0;
    if (!__nwlog_fault(v17, type, &v78 + 4))
    {
      goto LABEL_87;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream";
      goto LABEL_85;
    }

    if (BYTE4(v78) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v64 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v64)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v63 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
          goto LABEL_116;
        }

        goto LABEL_117;
      }

      if (!v64)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      v20 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    }

    goto LABEL_85;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v57 = __nwlog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(*(handle + 43) + 1304);
      v59 = *(handle + 30);
      v60 = *(handle + 94);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v88) = 1024;
      *(&v88 + 2) = v58;
      WORD3(v88) = 2048;
      *(&v88 + 1) = v59;
      *v89 = 1024;
      *&v89[2] = v60;
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
    }
  }

  result = 0;
  v5 = *(handle + 94);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        if (nw_protocol_copy_http_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
        }

        v12 = nw_protocol_copy_http_definition_http_definition;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 0x40000000;
        v73 = ___ZL47nw_protocol_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_150;
        v74 = &__block_descriptor_tmp_151_65230;
        v75 = v12;
        v76 = handle;
        v77 = a2;
        tqh_first = a2->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v14 = *(tqh_first + 4);
          v15 = (v73)(v72);
          tqh_first = v14;
        }

        while ((v15 & 1) != 0);
        if (v12)
        {
          os_release(v12);
        }

        nw_http3_stream_send_pending_capsules(handle);
        result = *(handle + 12);
        if (result)
        {
          return (*(*(result + 24) + 96))();
        }
      }

      return result;
    }

    v21 = **(a2->tqh_last + 1);
    *type = 0;
    v84 = type;
    v85 = 0x2000000000;
    v86 = 0;
    if (!v21)
    {
      goto LABEL_58;
    }

    v22 = *(v21 + 186);
    v86 = (v22 & 0x80) != 0;
    if ((v22 & 0x80000000) != 0)
    {
      if (((v22 >> 7) & 1) != 1)
      {
LABEL_41:
        v26 = 0;
LABEL_57:
        *(v21 + 186) = v22 & 0x7F | v26;
LABEL_58:
        if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
        {
          v65 = __nwlog_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v66 = *(*(handle + 43) + 1304);
            v67 = *(handle + 30);
            *buf = 0;
            nw_frame_array_get_frame_count(a2, 1, buf);
            v68 = *buf;
            if (*(v84 + 24))
            {
              v69 = ", complete";
            }

            else
            {
              v69 = "";
            }

            *buf = 136447746;
            *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = handle + 632;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            LOWORD(v88) = 1024;
            *(&v88 + 2) = v66;
            WORD3(v88) = 2048;
            *(&v88 + 1) = v67;
            *v89 = 1024;
            *&v89[2] = v68;
            *&v89[6] = 2080;
            *&v89[8] = v69;
            _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> sending %u bytes of body data%s", buf, 0x40u);
          }
        }

        v78 = 0;
        v36 = *(handle + 20);
        if (v36 && (v37 = *(v36 + 24)) != 0 && *(v37 + 96))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL64nw_http3_framer_finalize_output_frames_for_multiple_http3_framesP15nw_http3_framer21nw_http3_frame_type_tP16nw_frame_array_sPjS4_Pc_block_invoke;
          *&buf[24] = &__block_descriptor_tmp_153_65225;
          *&v88 = 0;
          *(&v88 + 1) = handle + 128;
          *v89 = &v78 + 4;
          *&v89[8] = &v78;
          *&v89[16] = handle + 632;
          v38 = a2->tqh_first;
          do
          {
            if (!v38)
            {
              break;
            }

            v39 = *(v38 + 4);
            v40 = (*&buf[16])(buf);
            v38 = v39;
          }

          while ((v40 & 1) != 0);
          v41 = (*(*(v36 + 24) + 96))(v36, a2);
          v42 = v78;
        }

        else
        {
          v42 = 0;
          v41 = 0;
        }

        nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(handle + 50), v42);
        v43 = HIDWORD(v78);
        v44 = *(handle + 37);
        v45 = __CFADD__(v44, HIDWORD(v78));
        *(handle + 37) = v44 + HIDWORD(v78);
        if (v45)
        {
          if (gLogDatapath == 1)
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              v71 = *(handle + 37);
              *buf = 136446978;
              *&buf[4] = "increment_outbound_body_size";
              *&buf[12] = 2082;
              *&buf[14] = "outbound_body_size";
              *&buf[22] = 2048;
              *&buf[24] = v43;
              LOWORD(v88) = 2048;
              *(&v88 + 2) = v71;
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
            }
          }

          *(handle + 37) = -1;
        }

        if (*(v84 + 24) == 1)
        {
          nw_http_transaction_metadata_mark_outbound_message_end(*(handle + 50));
          if (handle[288] == 1 && *(handle + 35) != *(handle + 37))
          {
            if ((*(handle + 366) & 0x2000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v47 = *(*(handle + 43) + 1304);
                v48 = *(handle + 30);
                if (handle[288] == 1)
                {
                  v49 = *(handle + 35);
                }

                else
                {
                  v49 = -1;
                }

                v54 = *(handle + 37);
                *buf = 136447746;
                *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
                *&buf[12] = 2082;
                *&buf[14] = handle + 632;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                LOWORD(v88) = 1024;
                *(&v88 + 2) = v47;
                WORD3(v88) = 2048;
                *(&v88 + 1) = v48;
                *v89 = 2048;
                *&v89[2] = v49;
                *&v89[10] = 2048;
                *&v89[12] = v54;
                _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Content length header %llu does not equal body size %llu", buf, 0x44u);
              }
            }

            *(handle + 34) = 270;
            nw_protocol_http3_stream_error(handle, handle);
            nw_protocol_http3_stream_disconnect(handle, handle);
            v41 = 0;
          }
        }

        _Block_object_dispose(type, 8);
        return v41;
      }
    }

    else
    {
      v23 = *(v21 + 64);
      if (!v23 || (*(v23 + 66) & 0x40) == 0)
      {
        goto LABEL_41;
      }

      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 0x40000000;
      v80 = ___ZL47nw_protocol_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v81 = &unk_1E6A39158;
      v82 = type;
      do
      {
        while (1)
        {
          v24 = *v23;
          if (v23[6])
          {
            break;
          }

          v23 = *v23;
          if (!v24)
          {
            goto LABEL_40;
          }
        }

        _nw_protocol_metadata_is_ip();
        if (v80(v79, v23[6]))
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        v23 = v24;
      }

      while (!v25);
LABEL_40:
      LOBYTE(v22) = *(v21 + 186);
      if ((v84[24] & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v26 = 0x80;
    goto LABEL_57;
  }

  if (v5 < 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = *(handle + 94);
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Unexpected output state %d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v78) = 0;
    if (!__nwlog_fault(v7, type, &v78 + 4))
    {
      goto LABEL_81;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_81;
      }

      v10 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v11 = "%{public}s Unexpected output state %d";
    }

    else if (BYTE4(v78) == 1)
    {
      v27 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      v28 = os_log_type_enabled(gLogObj, type[0]);
      if (v27)
      {
        if (v28)
        {
          v29 = *(handle + 94);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 1024;
          *&buf[14] = v29;
          *&buf[18] = 2082;
          *&buf[20] = v27;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Unexpected output state %d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v27);
LABEL_81:
        if (v7)
        {
          v51 = v7;
LABEL_89:
          free(v51);
          return 0;
        }

        return 0;
      }

      if (!v28)
      {
        goto LABEL_81;
      }

      v50 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v50;
      v11 = "%{public}s Unexpected output state %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_81;
      }

      v30 = *(handle + 94);
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      v11 = "%{public}s Unexpected output state %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x12u);
    goto LABEL_81;
  }

  if (v5 == 2)
  {
    v16 = *(handle + 49);
    if (a2->tqh_first == v16)
    {
      is_metadata_complete = nw_frame_is_metadata_complete(v16);
      nw_http3_stream_send_fields(handle, is_metadata_complete);
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    BYTE4(v78) = 0;
    if (__nwlog_fault(v17, type, &v78 + 4))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame";
        goto LABEL_85;
      }

      if (BYTE4(v78) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, backtrace limit exceeded";
        goto LABEL_85;
      }

      v32 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type[0];
      v35 = os_log_type_enabled(gLogObj, type[0]);
      if (v32)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
      }

      else if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http3_stream_finalize_output_frames";
        v20 = "%{public}s Expected frame array first to be the same as http3_stream->output_fields_frame, no backtrace";
        v52 = v33;
        v53 = v34;
        goto LABEL_86;
      }
    }

LABEL_87:
    if (v17)
    {
      v51 = v17;
      goto LABEL_89;
    }

    return 0;
  }

  return result;
}

BOOL nw_http3_stream_send_fields(uint64_t a1, int a2)
{
  v475 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 734) & 0x10) != 0)
  {
    if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v15 = *(*(a1 + 344) + 1304);
      v16 = *(a1 + 240);
      v17 = *(a1 + 376);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v464 = " ";
      LOWORD(v465) = 1024;
      *(&v465 + 2) = v15;
      HIWORD(v465) = 2048;
      v466 = v16;
      *v467 = 1024;
      *&v467[2] = v17;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u - already sending headers", buf, 0x36u);
    }

    return 0;
  }

  if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v195 = __nwlog_obj();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
    {
      v196 = *(*(a1 + 344) + 1304);
      v197 = *(a1 + 240);
      v198 = *(a1 + 376);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v464 = " ";
      LOWORD(v465) = 1024;
      *(&v465 + 2) = v196;
      HIWORD(v465) = 2048;
      v466 = v197;
      *v467 = 1024;
      *&v467[2] = v198;
      _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, state %u", buf, 0x36u);
    }
  }

  if (*(a1 + 512))
  {
LABEL_179:
    v120 = *(a1 + 520);
    if (!v120)
    {
      goto LABEL_243;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v464 = __Block_byref_object_copy__63268;
    v465 = __Block_byref_object_dispose__63269;
    v466 = 0;
    *v467 = &v466;
    v450 = 0;
    v451 = &v450;
    v452 = 0x2000000000;
    LODWORD(v453) = dispatch_data_get_size(v120);
    v121 = *(a1 + 344);
    if (!v121)
    {
      v218 = __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_get_output_frames";
      LODWORD(v405) = 12;
      v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v218, 16, "%{public}s called with null http3", type, v405);
      v446[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v445[0]) = 0;
      if (__nwlog_fault(v132, v446, v445))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v133 = __nwlog_obj();
          v134 = v446[0];
          if (os_log_type_enabled(v133, v446[0]))
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v135 = "%{public}s called with null http3";
            goto LABEL_229;
          }
        }

        else if (LOBYTE(v445[0]) == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v133 = __nwlog_obj();
          v134 = v446[0];
          v237 = os_log_type_enabled(v133, v446[0]);
          if (backtrace_string)
          {
            if (v237)
            {
              *type = 136446466;
              *&type[4] = "nw_http3_encoder_stream_get_output_frames";
              *&type[12] = 2082;
              *&type[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null http3, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(backtrace_string);
          }

          else if (v237)
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v135 = "%{public}s called with null http3, no backtrace";
            goto LABEL_229;
          }
        }

        else
        {
          v133 = __nwlog_obj();
          v134 = v446[0];
          if (os_log_type_enabled(v133, v446[0]))
          {
            *type = 136446210;
            *&type[4] = "nw_http3_encoder_stream_get_output_frames";
            v135 = "%{public}s called with null http3, backtrace limit exceeded";
            goto LABEL_229;
          }
        }
      }

LABEL_230:
      if (!v132)
      {
        goto LABEL_185;
      }

LABEL_231:
      free(v132);
      goto LABEL_185;
    }

    if ((*(v121 + 1397) & 0x2000) == 0 || (v122 = *(v121 + 936)) != 0 && v122 != a1)
    {
      *(a1 + 568) = 0;
      v123 = *(v121 + 944);
      *(a1 + 576) = v123;
      *v123 = a1;
      *(v121 + 944) = a1 + 568;
LABEL_185:
      _Block_object_dispose(&v450, 8);
      v124 = buf;
LABEL_309:
      _Block_object_dispose(v124, 8);
      return 0;
    }

    if (!v122)
    {
      *(a1 + 568) = 0;
      v125 = *(v121 + 944);
      *(a1 + 576) = v125;
      *v125 = a1;
      *(v121 + 944) = a1 + 568;
    }

    nw_http3_start_encoder_stream_if_needed(v121);
    v126 = *(v121 + 1072);
    if (!v126)
    {
      goto LABEL_185;
    }

    v127 = *(v126 + 24);
    if (!v127)
    {
      goto LABEL_185;
    }

    v128 = *(v127 + 88);
    if (!v128 || !v128())
    {
      goto LABEL_185;
    }

    v417[0] = MEMORY[0x1E69E9820];
    v417[1] = 0x40000000;
    v418 = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_3;
    v419 = &unk_1E6A38C50;
    v420 = &v450;
    v421 = buf;
    v422 = a1;
    v129 = *(*&buf[8] + 40);
    do
    {
      if (!v129)
      {
        break;
      }

      v130 = *(v129 + 32);
      v131 = v418(v417);
      v129 = v130;
    }

    while ((v131 & 1) != 0);
    if (*(a1 + 520))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *type = 136446210;
      *&type[4] = "nw_http3_stream_send_fields";
      LODWORD(v405) = 12;
      v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Not enough space on encoder stream", type, v405);
      v446[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v445[0]) = 0;
      if (!__nwlog_fault(v132, v446, v445))
      {
        goto LABEL_230;
      }

      if (v446[0] == OS_LOG_TYPE_FAULT)
      {
        v133 = __nwlog_obj();
        v134 = v446[0];
        if (!os_log_type_enabled(v133, v446[0]))
        {
          goto LABEL_230;
        }

        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v135 = "%{public}s Not enough space on encoder stream";
        goto LABEL_229;
      }

      if (LOBYTE(v445[0]) != 1)
      {
        v133 = __nwlog_obj();
        v134 = v446[0];
        if (!os_log_type_enabled(v133, v446[0]))
        {
          goto LABEL_230;
        }

        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v135 = "%{public}s Not enough space on encoder stream, backtrace limit exceeded";
        goto LABEL_229;
      }

      v143 = __nw_create_backtrace_string();
      v133 = __nwlog_obj();
      v134 = v446[0];
      v144 = os_log_type_enabled(v133, v446[0]);
      if (v143)
      {
        if (v144)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_stream_send_fields";
          *&type[12] = 2082;
          *&type[14] = v143;
          _os_log_impl(&dword_181A37000, v133, v134, "%{public}s Not enough space on encoder stream, dumping backtrace:%{public}s", type, 0x16u);
        }

        free(v143);
        if (!v132)
        {
          goto LABEL_185;
        }

        goto LABEL_231;
      }

      if (v144)
      {
        *type = 136446210;
        *&type[4] = "nw_http3_stream_send_fields";
        v135 = "%{public}s Not enough space on encoder stream, no backtrace";
LABEL_229:
        _os_log_impl(&dword_181A37000, v133, v134, v135, type, 0xCu);
        goto LABEL_230;
      }

      goto LABEL_230;
    }

    *(a1 + 734) |= 0x10u;
    v136 = *(a1 + 344);
    if (v136)
    {
      v137 = v136[117];
      if (v137 != a1)
      {
        v138 = __nwlog_obj();
        *type = 136446210;
        *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
        LODWORD(v405) = 12;
        v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s Encoder stream is not being used by current stream", type, v405);
        v446[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v445[0]) = 0;
        if (!__nwlog_fault(v139, v446, v445))
        {
          goto LABEL_240;
        }

        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v140 = __nwlog_obj();
          v141 = v446[0];
          if (!os_log_type_enabled(v140, v446[0]))
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v142 = "%{public}s Encoder stream is not being used by current stream";
          goto LABEL_238;
        }

        if (LOBYTE(v445[0]) != 1)
        {
          v140 = __nwlog_obj();
          v141 = v446[0];
          if (!os_log_type_enabled(v140, v446[0]))
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v142 = "%{public}s Encoder stream is not being used by current stream, backtrace limit exceeded";
          goto LABEL_238;
        }

        v152 = __nw_create_backtrace_string();
        v140 = __nwlog_obj();
        v141 = v446[0];
        v153 = os_log_type_enabled(v140, v446[0]);
        if (!v152)
        {
          if (!v153)
          {
            goto LABEL_240;
          }

          *type = 136446210;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          v142 = "%{public}s Encoder stream is not being used by current stream, no backtrace";
          goto LABEL_238;
        }

        if (v153)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          *&type[12] = 2082;
          *&type[14] = v152;
          v154 = "%{public}s Encoder stream is not being used by current stream, dumping backtrace:%{public}s";
LABEL_224:
          _os_log_impl(&dword_181A37000, v140, v141, v154, type, 0x16u);
          goto LABEL_225;
        }

        goto LABEL_225;
      }

      v145 = (v137 + 568);
      v146 = *(v137 + 568);
      v147 = *(v137 + 576);
      v148 = v136 + 118;
      if (v146)
      {
        v148 = (v146 + 576);
      }

      *v148 = v147;
      *v147 = v146;
      *v145 = 0u;
      v149 = v136[134];
      if (v149)
      {
        v150 = *(v149 + 24);
        if (v150)
        {
          v151 = *(v150 + 96);
          if (v151)
          {
            v151();
            goto LABEL_242;
          }
        }

        v365 = v149;
        v366 = __nwlog_obj();
        v367 = v365;
        v368 = *(v365 + 16);
        if (!v368)
        {
          v368 = "invalid";
        }
      }

      else
      {
        v367 = 0;
        v366 = __nwlog_obj();
        v368 = "invalid";
      }

      *type = 136446466;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      *&type[12] = 2082;
      *&type[14] = v368;
      LODWORD(v405) = 22;
      v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v366, 16, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", type, v405);
      v446[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v445[0]) = 0;
      if (__nwlog_fault(v139, v446, v445))
      {
        if (v446[0] == OS_LOG_TYPE_FAULT)
        {
          v394 = __nwlog_obj();
          v395 = v446[0];
          if (os_log_type_enabled(v394, v446[0]))
          {
            v396 = "invalid";
            if (v367 && *(v367 + 16))
            {
              v396 = *(v367 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v396;
            v142 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
LABEL_689:
            v155 = v394;
            v156 = v395;
            v157 = 22;
            goto LABEL_239;
          }
        }

        else if (LOBYTE(v445[0]) == 1)
        {
          v397 = __nw_create_backtrace_string();
          v394 = __nwlog_obj();
          v395 = v446[0];
          v398 = os_log_type_enabled(v394, v446[0]);
          if (v397)
          {
            if (v398)
            {
              v399 = "invalid";
              if (v367 && *(v367 + 16))
              {
                v399 = *(v367 + 16);
              }

              *type = 136446722;
              *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
              *&type[12] = 2082;
              *&type[14] = v399;
              *&type[22] = 2082;
              v456 = v397;
              _os_log_impl(&dword_181A37000, v394, v395, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", type, 0x20u);
            }

            free(v397);
          }

          else if (v398)
          {
            v404 = "invalid";
            if (v367 && *(v367 + 16))
            {
              v404 = *(v367 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v404;
            v142 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
            goto LABEL_689;
          }
        }

        else
        {
          v394 = __nwlog_obj();
          v395 = v446[0];
          if (os_log_type_enabled(v394, v446[0]))
          {
            v403 = "invalid";
            if (v367 && *(v367 + 16))
            {
              v403 = *(v367 + 16);
            }

            *type = 136446466;
            *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
            *&type[12] = 2082;
            *&type[14] = v403;
            v142 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_689;
          }
        }
      }

LABEL_240:
      if (v139)
      {
LABEL_241:
        free(v139);
      }

LABEL_242:
      nw_http_transaction_metadata_increment_outbound_header_size(*(a1 + 400), *(v451 + 6));
      *(a1 + 734) &= ~0x10u;
      _Block_object_dispose(&v450, 8);
      _Block_object_dispose(buf, 8);
LABEL_243:
      v158 = *(a1 + 512);
      if (v158)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x3802000000;
        v456 = __Block_byref_object_copy__63268;
        v457 = __Block_byref_object_dispose__63269;
        v458[0] = 0;
        v458[1] = v458;
        v450 = 0;
        v451 = &v450;
        v452 = 0x2000000000;
        LODWORD(v453) = dispatch_data_get_size(v158);
        if (!nw_http3_framer_get_output_frames_for_single_http3_frame(a1 + 128, 1uLL, v453, v458))
        {
LABEL_308:
          _Block_object_dispose(&v450, 8);
          v124 = type;
          goto LABEL_309;
        }

        v411[0] = MEMORY[0x1E69E9820];
        v411[1] = 0x40000000;
        v412 = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_78;
        v413 = &unk_1E6A38C78;
        v415 = type;
        v416 = a1;
        v414 = &v450;
        v159 = *(*&type[8] + 40);
        do
        {
          if (!v159)
          {
            break;
          }

          v160 = *(v159 + 32);
          v161 = v412(v411);
          v159 = v160;
        }

        while ((v161 & 1) != 0);
        if (*(a1 + 512))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          LODWORD(v405) = 12;
          v162 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Not enough space in fields frame", buf, v405);
          v446[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v445[0]) = 0;
          if (!__nwlog_fault(v162, v446, v445))
          {
            goto LABEL_306;
          }

          if (v446[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v163 = gLogObj;
            v164 = v446[0];
            if (!os_log_type_enabled(gLogObj, v446[0]))
            {
              goto LABEL_306;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v165 = "%{public}s Not enough space in fields frame";
          }

          else if (LOBYTE(v445[0]) == 1)
          {
            v184 = __nw_create_backtrace_string();
            v163 = __nwlog_obj();
            v164 = v446[0];
            v185 = os_log_type_enabled(v163, v446[0]);
            if (v184)
            {
              if (v185)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v184;
                _os_log_impl(&dword_181A37000, v163, v164, "%{public}s Not enough space in fields frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v184);
              goto LABEL_306;
            }

            if (!v185)
            {
LABEL_306:
              if (v162)
              {
                free(v162);
              }

              goto LABEL_308;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v165 = "%{public}s Not enough space in fields frame, no backtrace";
          }

          else
          {
            v163 = __nwlog_obj();
            v164 = v446[0];
            if (!os_log_type_enabled(v163, v446[0]))
            {
              goto LABEL_306;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_send_fields";
            v165 = "%{public}s Not enough space in fields frame, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v163, v164, v165, buf, 0xCu);
          goto LABEL_306;
        }

        v166 = *(a1 + 734);
        v167 = *&type[8];
        if (a2 && (*(a1 + 734) & 7) == 0)
        {
          v168 = **(*(*&type[8] + 48) + 8);
          *(v168 + 186) |= 0x80u;
          v166 = *(a1 + 734);
        }

        *(a1 + 734) = v166 | 0x10;
        v169 = *(a1 + 160);
        if (v169 && (v170 = *(v169 + 24)) != 0 && *(v170 + 96))
        {
          v171 = *(v451 + 6);
          if (v171 >> 30)
          {
            v172 = 9;
          }

          else
          {
            v172 = 5;
          }

          if (v171 >= 0x4000)
          {
            v173 = v172;
          }

          else
          {
            v173 = 3;
          }

          if (v171 >= 0x40)
          {
            v174 = v173;
          }

          else
          {
            v174 = 2;
          }

          v175 = nw_http3_framer_write_http3_frame_header(a1 + 128, 1uLL, *(v451 + 6), v174, *(v167 + 40)) + v171;
          (*(*(v169 + 24) + 96))(v169, v167 + 40);
        }

        else
        {
          v175 = 0;
        }

        nw_http_transaction_metadata_increment_outbound_header_size(*(a1 + 400), v175);
        *(a1 + 734) &= ~0x10u;
        if (a2)
        {
          nw_http_transaction_metadata_mark_outbound_message_end(*(a1 + 400));
          if (*(a1 + 288) == 1 && *(a1 + 280) != *(a1 + 296))
          {
            if ((*(a1 + 732) & 0x2000) == 0)
            {
              v190 = __nwlog_obj();
              if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
              {
                v191 = *(*(a1 + 344) + 1304);
                v192 = *(a1 + 240);
                if (*(a1 + 288) == 1)
                {
                  v193 = *(a1 + 280);
                }

                else
                {
                  v193 = -1;
                }

                v194 = *(a1 + 296);
                *buf = 136447746;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 632;
                *&buf[22] = 2080;
                v464 = " ";
                LOWORD(v465) = 1024;
                *(&v465 + 2) = v191;
                HIWORD(v465) = 2048;
                v466 = v192;
                *v467 = 2048;
                *&v467[2] = v193;
                *&v467[10] = 2048;
                *&v467[12] = v194;
                _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Content length header %llu does not equal body size %llu", buf, 0x44u);
              }
            }

            *(a1 + 272) = 270;
            nw_protocol_http3_stream_error(a1, a1);
            nw_protocol_http3_stream_disconnect(a1, a1);
            goto LABEL_308;
          }
        }

        _Block_object_dispose(&v450, 8);
        _Block_object_dispose(type, 8);
        if ((*(a1 + 734) & 4) != 0)
        {
          nw_frame_reset(*(a1 + 392), 0, 0, 0, 0);
          v186 = *(a1 + 392);
          if (v186)
          {
            os_release(v186);
            *(a1 + 392) = 0;
          }

          *(a1 + 392) = nw_frame_create(0, 0, 0, 0, 0);
          *(a1 + 376) = 1;
        }

        else
        {
          v176 = *(a1 + 732);
          if ((v176 & 0xC0) != 0)
          {
            v177 = 5;
          }

          else
          {
            v177 = 3;
          }

          *(a1 + 376) = v177;
          if ((v176 & 1) == 0)
          {
            v178 = *(a1 + 32);
            if (v178)
            {
              v179 = *(v178 + 24);
              if (v179)
              {
                v180 = *(v179 + 160);
                if (v180)
                {
                  v180();
                  v176 = *(a1 + 732);
                }
              }
            }

            if ((v176 & 0x40) != 0)
            {
              v181 = *(a1 + 32);
              if (v181)
              {
                v182 = *(v181 + 24);
                if (v182)
                {
                  v183 = *(v182 + 160);
                  if (v183)
                  {
                    v183();
                  }
                }
              }
            }
          }
        }

        if ((*(a1 + 732) & 0x800) == 0)
        {
          return 1;
        }

        v187 = *(a1 + 32);
        if (v187)
        {
          v188 = *(v187 + 24);
          if (v188)
          {
            v189 = *(v188 + 192);
            if (v189)
            {
              v189();
LABEL_299:
              *(a1 + 732) &= ~0x800u;
              return 1;
            }
          }
        }

        v283 = __nwlog_obj();
        v284 = *(a1 + 32);
        v285 = "invalid";
        if (v284)
        {
          v286 = *(v284 + 16);
          if (v286)
          {
            v285 = v286;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v285;
        LODWORD(v405) = 22;
        v287 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v283, 16, "%{public}s protocol %{public}s has invalid output_finished callback", buf, v405);
        type[0] = 16;
        LOBYTE(v450) = 0;
        if (__nwlog_fault(v287, type, &v450))
        {
          if (type[0] == 17)
          {
            v288 = __nwlog_obj();
            v289 = type[0];
            if (!os_log_type_enabled(v288, type[0]))
            {
              goto LABEL_671;
            }

            v290 = *(a1 + 32);
            v291 = "invalid";
            if (v290)
            {
              v292 = *(v290 + 16);
              if (v292)
              {
                v291 = v292;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v291;
            v293 = "%{public}s protocol %{public}s has invalid output_finished callback";
            goto LABEL_670;
          }

          if (v450 != 1)
          {
            v288 = __nwlog_obj();
            v289 = type[0];
            if (!os_log_type_enabled(v288, type[0]))
            {
              goto LABEL_671;
            }

            v362 = *(a1 + 32);
            v363 = "invalid";
            if (v362)
            {
              v364 = *(v362 + 16);
              if (v364)
              {
                v363 = v364;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v363;
            v293 = "%{public}s protocol %{public}s has invalid output_finished callback, backtrace limit exceeded";
            goto LABEL_670;
          }

          v318 = __nw_create_backtrace_string();
          v288 = __nwlog_obj();
          v289 = type[0];
          v319 = os_log_type_enabled(v288, type[0]);
          if (v318)
          {
            if (v319)
            {
              v320 = *(a1 + 32);
              v321 = "invalid";
              if (v320)
              {
                v322 = *(v320 + 16);
                if (v322)
                {
                  v321 = v322;
                }
              }

              *buf = 136446722;
              *&buf[4] = "nw_http3_stream_send_fields";
              *&buf[12] = 2082;
              *&buf[14] = v321;
              *&buf[22] = 2082;
              v464 = v318;
              _os_log_impl(&dword_181A37000, v288, v289, "%{public}s protocol %{public}s has invalid output_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v318);
            goto LABEL_671;
          }

          if (v319)
          {
            v400 = *(a1 + 32);
            v401 = "invalid";
            if (v400)
            {
              v402 = *(v400 + 16);
              if (v402)
              {
                v401 = v402;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v401;
            v293 = "%{public}s protocol %{public}s has invalid output_finished callback, no backtrace";
LABEL_670:
            _os_log_impl(&dword_181A37000, v288, v289, v293, buf, 0x16u);
          }
        }

LABEL_671:
        if (v287)
        {
          free(v287);
        }

        goto LABEL_299;
      }

      v231 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http3_stream_send_fields";
      LODWORD(v405) = 12;
      v232 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v231, 16, "%{public}s called with null http3_stream->output_fields_frame_data", buf, v405);
      type[0] = 16;
      LOBYTE(v450) = 0;
      if (__nwlog_fault(v232, type, &v450))
      {
        if (type[0] == 17)
        {
          v233 = __nwlog_obj();
          v234 = type[0];
          if (!os_log_type_enabled(v233, type[0]))
          {
            goto LABEL_559;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v235 = "%{public}s called with null http3_stream->output_fields_frame_data";
          goto LABEL_558;
        }

        if (v450 != 1)
        {
          v233 = __nwlog_obj();
          v234 = type[0];
          if (!os_log_type_enabled(v233, type[0]))
          {
            goto LABEL_559;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v235 = "%{public}s called with null http3_stream->output_fields_frame_data, backtrace limit exceeded";
          goto LABEL_558;
        }

        v243 = __nw_create_backtrace_string();
        v233 = __nwlog_obj();
        v234 = type[0];
        v244 = os_log_type_enabled(v233, type[0]);
        if (v243)
        {
          if (v244)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v243;
            _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null http3_stream->output_fields_frame_data, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v243);
          goto LABEL_559;
        }

        if (v244)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_send_fields";
          v235 = "%{public}s called with null http3_stream->output_fields_frame_data, no backtrace";
LABEL_558:
          _os_log_impl(&dword_181A37000, v233, v234, v235, buf, 0xCu);
        }
      }

LABEL_559:
      if (v232)
      {
        free(v232);
      }

      return 0;
    }

    v361 = __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
    LODWORD(v405) = 12;
    v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v361, 16, "%{public}s called with null http3", type, v405);
    v446[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v445[0]) = 0;
    if (!__nwlog_fault(v139, v446, v445))
    {
      goto LABEL_240;
    }

    if (v446[0] == OS_LOG_TYPE_FAULT)
    {
      v140 = __nwlog_obj();
      v141 = v446[0];
      if (!os_log_type_enabled(v140, v446[0]))
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v142 = "%{public}s called with null http3";
    }

    else if (LOBYTE(v445[0]) == 1)
    {
      v152 = __nw_create_backtrace_string();
      v140 = __nwlog_obj();
      v141 = v446[0];
      v369 = os_log_type_enabled(v140, v446[0]);
      if (v152)
      {
        if (v369)
        {
          *type = 136446466;
          *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
          *&type[12] = 2082;
          *&type[14] = v152;
          v154 = "%{public}s called with null http3, dumping backtrace:%{public}s";
          goto LABEL_224;
        }

LABEL_225:
        free(v152);
        if (!v139)
        {
          goto LABEL_242;
        }

        goto LABEL_241;
      }

      if (!v369)
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v142 = "%{public}s called with null http3, no backtrace";
    }

    else
    {
      v140 = __nwlog_obj();
      v141 = v446[0];
      if (!os_log_type_enabled(v140, v446[0]))
      {
        goto LABEL_240;
      }

      *type = 136446210;
      *&type[4] = "nw_http3_encoder_stream_finalize_output_frames";
      v142 = "%{public}s called with null http3, backtrace limit exceeded";
    }

LABEL_238:
    v155 = v140;
    v156 = v141;
    v157 = 12;
LABEL_239:
    _os_log_impl(&dword_181A37000, v155, v156, v142, type, v157);
    goto LABEL_240;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v4 = nw_protocol_copy_http_definition_http_definition;
  v5 = nw_frame_copy_metadata_for_protocol(*(a1 + 392), v4);
  if (v5)
  {
    v6 = v5;
    if ((*(*(a1 + 344) + 1397) & 1) == 0)
    {
      v7 = nw_http_metadata_copy_request(v5);
      if (v7)
      {
        v8 = v7;
        v410 = v4;
        v9 = nw_protocol_waiting_for_output(*(a1 + 32), a1);
        v10 = v9;
        if (v9)
        {
          v11 = nw_http_request_copy(v8);
          nw_http_fields_append(v11, "Early-Data", "1");
          metadata_for_request = nw_http_create_metadata_for_request(v11);
          os_release(v6);
          nw_http_transaction_metadata_set_attempted_early_data(*(a1 + 400), 1);
          if (v11)
          {
            os_release(v11);
          }
        }

        else
        {
          metadata_for_request = v6;
        }

        nw_http_transaction_metadata_set_used_early_data(*(a1 + 400), v10);
        v6 = metadata_for_request;
LABEL_64:
        nw_http_transaction_metadata_set_outbound_message(*(a1 + 400), v6, a1 + 632);
        nw::http::content_length_manager::set_outbound_message((a1 + 280), v6);
        if (v8)
        {
          v64 = v8;
          has_method = _nw_http_request_has_method(v64, "CONNECT-UDP");

          v66 = v64;
          v67 = v66;
          if (has_method)
          {
            have_field_with_name = _nw_http_fields_have_field_with_name(v66, "Datagram-Flow-Id");

            if ((have_field_with_name & 1) == 0)
            {
              nw_protocol_http3_stream_start_datagram_flow(a1);
              *buf = 0;
              *&buf[8] = 0;
              snprintf(buf, 0x10uLL, "%llu", *(a1 + 248));
              nw_http_fields_append(v67, "Datagram-Flow-Id", buf);
            }

            *(a1 + 734) |= 2u;
          }

          else
          {
            v69 = _nw_http_request_has_method(v66, "CONNECT");

            if (v69)
            {
              v424[0] = MEMORY[0x1E69E9820];
              v424[1] = 0x40000000;
              v424[2] = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke;
              v424[3] = &__block_descriptor_tmp_71;
              v424[4] = a1;
              nw_http_fields_access_value_by_name(v67, "Capsule-Protocol", v424);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              LOBYTE(v464) = 0;
              v423[0] = MEMORY[0x1E69E9820];
              v423[1] = 0x40000000;
              v423[2] = ___ZL27nw_http3_stream_send_fieldsP24nw_protocol_http3_streamb_block_invoke_2;
              v423[3] = &unk_1E6A38C28;
              v423[4] = buf;
              nw_http_request_access_extended_connect_protocol(v67, v423);
              if (*(*&buf[8] + 24) == 1)
              {
                *(a1 + 256) = nw_http_metadata_get_datagram_context_id(v6);
                nw_protocol_http3_stream_start_datagram_flow(a1);
              }

              *(a1 + 734) |= 2u;
              _Block_object_dispose(buf, 8);
            }
          }
        }

        v70 = *(a1 + 344);
        if (v70)
        {
          if (v6)
          {
            if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
            {
              v252 = __nwlog_obj();
              v253 = os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG);
              v70 = *(a1 + 344);
              if (v253)
              {
                v254 = *(v70 + 1304);
                v255 = *(a1 + 240);
                *buf = 136447234;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 632;
                *&buf[22] = 2080;
                v464 = " ";
                LOWORD(v465) = 1024;
                *(&v465 + 2) = v254;
                HIWORD(v465) = 2048;
                v466 = v255;
                _os_log_impl(&dword_181A37000, v252, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                v70 = *(a1 + 344);
              }
            }

            v450 = 0;
            v451 = &v450;
            v452 = 0x2000000000;
            v453 = 0;
            *v446 = 0;
            v447 = v446;
            v448 = 0x2000000000;
            v449 = 0;
            v445[0] = 0;
            v445[1] = v445;
            v445[2] = 0x2000000000;
            v445[3] = 0;
            v444[0] = 0;
            v444[1] = v444;
            v444[2] = 0x2000000000;
            v444[3] = 0;
            v440 = 0;
            v441 = &v440;
            v442 = 0x2000000000;
            v443 = 22;
            v436 = 0;
            v437 = &v436;
            v438 = 0x2000000000;
            v439 = 0;
            v435[0] = 0;
            v435[1] = v435;
            v435[2] = 0x2000000000;
            v435[3] = 512;
            v434[0] = 0;
            v434[1] = v434;
            v434[2] = 0x2000000000;
            v434[3] = 512;
            v430 = 0;
            v431 = &v430;
            v432 = 0x2000000000;
            alloc = dispatch_data_create_alloc();
            v426 = 0;
            v427 = &v426;
            v428 = 0x2000000000;
            v429 = dispatch_data_create_alloc();
            v71 = *(a1 + 616);
            if (*(v70 + 260))
            {
              *(a1 + 616) = v71 + 1;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s lsqpack header already started", buf, 12);
              type[0] = 16;
              v459[0] = 0;
              if ((__nwlog_fault(v77, type, v459) & 1) == 0)
              {
                goto LABEL_169;
              }

              if (type[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v78 = gLogObj;
                v79 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v80 = "%{public}s lsqpack header already started";
              }

              else if (v459[0] == 1)
              {
                v86 = __nw_create_backtrace_string();
                v78 = __nwlog_obj();
                v79 = type[0];
                v87 = os_log_type_enabled(v78, type[0]);
                if (v86)
                {
                  if (v87)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http3_stream_serialize_fields";
                    *&buf[12] = 2082;
                    *&buf[14] = v86;
                    v88 = "%{public}s lsqpack header already started, dumping backtrace:%{public}s";
                    v89 = buf;
LABEL_139:
                    _os_log_impl(&dword_181A37000, v78, v79, v88, v89, 0x16u);
                  }

LABEL_140:
                  free(v86);
                  goto LABEL_169;
                }

                if (!v87)
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v80 = "%{public}s lsqpack header already started, no backtrace";
              }

              else
              {
                v78 = __nwlog_obj();
                v79 = type[0];
                if (!os_log_type_enabled(v78, type[0]))
                {
                  goto LABEL_169;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                v80 = "%{public}s lsqpack header already started, backtrace limit exceeded";
              }

              v119 = buf;
LABEL_168:
              _os_log_impl(&dword_181A37000, v78, v79, v80, v119, 0xCu);
              goto LABEL_169;
            }

            v409 = v70 + 248;
            v407 = v451[3];
            v72 = *(a1 + 240);
            v73 = *(v70 + 448);
            if (v73)
            {
              fwrite("qenc: debug: ", 0xDuLL, 1uLL, v73);
              fprintf(*(v70 + 448), "Start header for stream %llu", v72);
              fputc(10, *(v70 + 448));
            }

            v74 = (v70 + 328);
            v75 = (v70 + 328);
            v408 = v8;
            while (1)
            {
              v75 = *v75;
              if (!v75)
              {
                break;
              }

              v76 = v75[1];
              if (v76 != -1)
              {
                goto LABEL_92;
              }
            }

            if ((*(v70 + 260) & 4) != 0 || 4112 * *(v70 + 292) < *(v70 + 268))
            {
              v75 = malloc_type_malloc(0x1010uLL, 0x10A0040497EC00CuLL);
              if (v75)
              {
                v76 = 0;
                *v75 = 0;
                v75[1] = 0;
                **(v70 + 336) = v75;
                *(v70 + 336) = v75;
                ++*(v70 + 292);
LABEL_92:
                v81 = __clz(__rbit64(~v76));
                v75[1] = (1 << v81) | v76;
                v82 = &v75[8 * v81];
                v82[2] = 0;
                v82 += 2;
                *(v82 + 3) = 0u;
                v82[7] = 0;
                *(v82 + 5) = 0u;
                *(v82 + 1) = 0u;
                v82[4] = v82;
                v83 = *(v70 + 352);
                v82[1] = v83;
                *v83 = v82;
                *(v70 + 352) = v82;
                v84 = (v70 + 376);
                *(v70 + 376) = v82;
                v82[5] = v72;
                *(v82 + 12) = v71;
                goto LABEL_93;
              }
            }

            v84 = (v70 + 376);
            *(v70 + 376) = 0;
            v90 = *(v70 + 448);
            if (v90)
            {
              fwrite("qenc: info: ", 0xCuLL, 1uLL, v90);
              fprintf(*(v70 + 448), "could not allocate hinfo for stream %llu", v72);
              fputc(10, *(v70 + 448));
            }

LABEL_93:
            *(v70 + 400) = 0;
            *(v70 + 384) = 0;
            *(v70 + 392) = 0;
            *(v70 + 404) = *(v70 + 248);
            if (v71)
            {
              if (*v84)
              {
                v85 = *(v70 + 360);
                if (v85)
                {
                  while (*(v85 + 40) != v72)
                  {
                    v85 = *(v85 + 16);
                    if (!v85)
                    {
                      goto LABEL_108;
                    }
                  }

                  *(v70 + 384) = v85;
                }
              }
            }

LABEL_108:
            *(v70 + 260) |= 1u;
            ++*(a1 + 616);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL32nw_http3_stream_serialize_fieldsP24nw_protocol_http3_streamP20nw_protocol_metadata_block_invoke;
            v464 = &unk_1E6A38CC0;
            v465 = v445;
            v466 = v435;
            *v467 = &v440;
            *&v467[8] = v444;
            *&v467[16] = v434;
            v468 = &v436;
            v473 = a1;
            v474 = v70 + 248;
            v469 = v446;
            v470 = &v450;
            v471 = &v426;
            v472 = &v430;
            v91 = v6;
            v92 = buf;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            if (nw_protocol_metadata_matches_definition(v91, nw_protocol_copy_http_definition_http_definition))
            {
              *type = MEMORY[0x1E69E9820];
              *&type[8] = 3221225472;
              *&type[16] = __nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke;
              v456 = &unk_1E6A3A978;
              v457 = v92;
              handle = _nw_protocol_metadata_get_handle();
              if (handle)
              {
                (*&type[16])(type, handle);
              }

              goto LABEL_114;
            }

            v296 = __nwlog_obj();
            *type = 136446210;
            *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
            v297 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v296, 16, "%{public}s metadata must be http", type, 12);

            v459[0] = 16;
            v454 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v297, v459, &v454))
            {
              goto LABEL_577;
            }

            if (v459[0] == 17)
            {
              v298 = __nwlog_obj();
              v299 = v459[0];
              if (os_log_type_enabled(v298, v459[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                v300 = "%{public}s metadata must be http";
LABEL_575:
                _os_log_impl(&dword_181A37000, v298, v299, v300, type, 0xCu);
                goto LABEL_576;
              }

              goto LABEL_576;
            }

            if (v454 != OS_LOG_TYPE_INFO)
            {
              v298 = __nwlog_obj();
              v299 = v459[0];
              if (os_log_type_enabled(v298, v459[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                v300 = "%{public}s metadata must be http, backtrace limit exceeded";
                goto LABEL_575;
              }

LABEL_576:

LABEL_577:
              if (!v297)
              {
                goto LABEL_114;
              }

              goto LABEL_578;
            }

            v349 = __nw_create_backtrace_string();
            v350 = __nwlog_obj();
            v406 = v459[0];
            v351 = os_log_type_enabled(v350, v459[0]);
            if (v349)
            {
              if (v351)
              {
                *type = 136446466;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                *&type[12] = 2082;
                *&type[14] = v349;
                _os_log_impl(&dword_181A37000, v350, v406, "%{public}s metadata must be http, dumping backtrace:%{public}s", type, 0x16u);
              }

              free(v349);
              if (!v297)
              {
                goto LABEL_114;
              }
            }

            else
            {
              if (v351)
              {
                *type = 136446210;
                *&type[4] = "nw_http_metadata_enumerate_modern_header_fields_combined";
                _os_log_impl(&dword_181A37000, v350, v406, "%{public}s metadata must be http, no backtrace", type, 0xCu);
              }

              if (!v297)
              {
LABEL_114:

                if ((*(v70 + 260) & 1) == 0)
                {
                  goto LABEL_115;
                }

                if (*(v70 + 464))
                {
                  v95 = *(v70 + 460);
                  v96 = *(v70 + 392);
                  if (v95 != 0.0)
                  {
                    v96 = v95 + (v96 - v95) * 0.4;
                  }

                  *(v70 + 460) = v96;
                  v97 = *(v70 + 448);
                  if (v97)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v97);
                    fprintf(*(v70 + 448), "header count actual: %u; exponential moving average: %.3f", *(v70 + 392), *(v70 + 460));
                    fputc(10, *(v70 + 448));
                  }

                  v98 = *(v70 + 456);
                  if (v98 != 0.0 && v98 > *(v70 + 460))
                  {
                    v99 = vabds_f32(*(v70 + 476), v98);
                    if (v99 >= 1.5 || (v99 / v98) >= 0.1)
                    {
                      qenc_hist_update_size(v409, vcvtas_u32_f32(v98));
                    }
                  }
                }

                v100 = *(v70 + 376);
                if (v100)
                {
                  v101 = *(v100 + 60);
                  if (v101)
                  {
                    type[0] = 0;
                    v102 = v101 % (2 * *(v70 + 276));
                    v103 = v102 + 1;
                    v104 = *(v70 + 448);
                    if (v104)
                    {
                      fwrite("qenc: debug: ", 0xDuLL, 1uLL, v104);
                      fprintf(*(v70 + 448), "LargestRef for stream %llu is encoded as %u", *(v100 + 40), v102 + 1);
                      fputc(10, *(v70 + 448));
                    }

                    if (v102 > 0xFD)
                    {
                      type[0] = -1;
                      v116 = v102 - 254;
                      if ((v102 - 254) <= 0x7F)
                      {
                        type[1] = v102 + 2;
                        v105 = 2;
                      }

                      else
                      {
                        type[1] = (v102 + 2) | 0x80;
                        if (v116 < 0x4000)
                        {
                          v117 = v116 >> 7;
                          v105 = 3;
                          v118 = &type[2];
                        }

                        else
                        {
                          type[2] = (v116 >> 7) | 0x80;
                          if (v116 < 0x200000)
                          {
                            v117 = v116 >> 14;
                            v105 = 4;
                            v118 = &type[3];
                          }

                          else
                          {
                            type[3] = (v116 >> 14) | 0x80;
                            v117 = v116 >> 28;
                            if (v116 >> 28)
                            {
                              type[4] = (v116 >> 21) | 0x80;
                              v105 = 6;
                              v118 = &type[5];
                            }

                            else
                            {
                              v117 = v116 >> 21;
                              v105 = 5;
                              v118 = &type[4];
                            }
                          }
                        }

                        *v118 = v117;
                      }
                    }

                    else
                    {
                      type[0] |= v103;
                      v105 = 1;
                    }

                    v199 = &type[v105];
                    v200 = *(v70 + 404);
                    v201 = *(v100 + 60);
                    v202 = v200 >= v201;
                    v203 = v200 - v201;
                    v204 = v200 < v201;
                    LODWORD(v205) = v201 + ~v200;
                    if (v202)
                    {
                      v205 = v203;
                    }

                    else
                    {
                      v205 = v205;
                    }

                    if (v202)
                    {
                      v206 = 0;
                    }

                    else
                    {
                      v206 = 0x80;
                    }

                    *v199 = v204 << 7;
                    if (v205 <= 0x7E)
                    {
                      *v199 = v206 | v205;
                      v207 = v199 + 1;
                      goto LABEL_340;
                    }

                    type[v105] = v206 | 0x7F;
                    LOBYTE(v208) = v205 - 127;
                    if ((v205 - 127) < 0x80)
                    {
                      v212 = v105 + 1;
LABEL_339:
                      v207 = &type[v105 + 2];
                      type[v212] = v208;
                      if (v207 > v199)
                      {
LABEL_340:
                        if (*(v100 + 60) > *(v70 + 252))
                        {
                          qenc_add_to_risked_list(v409, v100);
                        }

                        v213 = *(v70 + 448);
                        if (v213)
                        {
                          fwrite("qenc: debug: ", 0xDuLL, 1uLL, v213);
                          fprintf(*(v70 + 448), "ended header for stream %llu; max ref: %u encoded as %u; risked: %d", *(v100 + 40), *(v100 + 60), v103, *(v100 + 60) > *(v70 + 252));
                          fputc(10, *(v70 + 448));
                        }

                        *(v70 + 376) = 0;
                        *(v70 + 260) &= ~1u;
                        v115 = v207 - &type[22] + 22;
                        *(v70 + 444) += v115;
                        if (v115 < 0)
                        {
LABEL_115:
                          v94 = __nwlog_obj();
                          *v459 = 136446210;
                          v460 = "nw_http3_stream_serialize_fields";
                          LODWORD(v405) = 12;
                          v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s lsqpack end header before starting", v459, v405);
                          v454 = OS_LOG_TYPE_ERROR;
                          v425 = 0;
                          v8 = v408;
                          if (!__nwlog_fault(v77, &v454, &v425))
                          {
                            goto LABEL_169;
                          }

                          if (v454 == OS_LOG_TYPE_FAULT)
                          {
                            v78 = __nwlog_obj();
                            v79 = v454;
                            if (os_log_type_enabled(v78, v454))
                            {
                              *v459 = 136446210;
                              v460 = "nw_http3_stream_serialize_fields";
                              v80 = "%{public}s lsqpack end header before starting";
LABEL_167:
                              v119 = v459;
                              goto LABEL_168;
                            }

                            goto LABEL_169;
                          }

                          if (v425 != 1)
                          {
                            v78 = __nwlog_obj();
                            v79 = v454;
                            if (os_log_type_enabled(v78, v454))
                            {
                              *v459 = 136446210;
                              v460 = "nw_http3_stream_serialize_fields";
                              v80 = "%{public}s lsqpack end header before starting, backtrace limit exceeded";
                              goto LABEL_167;
                            }

LABEL_169:
                            if (v77)
                            {
                              free(v77);
                            }

                            v4 = v410;
                            goto LABEL_172;
                          }

                          v86 = __nw_create_backtrace_string();
                          v78 = __nwlog_obj();
                          v79 = v454;
                          v106 = os_log_type_enabled(v78, v454);
                          if (!v86)
                          {
                            if (v106)
                            {
                              *v459 = 136446210;
                              v460 = "nw_http3_stream_serialize_fields";
                              v80 = "%{public}s lsqpack end header before starting, no backtrace";
                              goto LABEL_167;
                            }

                            goto LABEL_169;
                          }

                          if (v106)
                          {
                            *v459 = 136446466;
                            v460 = "nw_http3_stream_serialize_fields";
                            v461 = 2082;
                            v462 = v86;
                            v88 = "%{public}s lsqpack end header before starting, dumping backtrace:%{public}s";
                            v89 = v459;
                            goto LABEL_139;
                          }

                          goto LABEL_140;
                        }

LABEL_347:
                        memcpy((v407 - v115 + 22), type, v115);
                        *(a1 + 512) = dispatch_data_create_subrange(v431[3], 22 - v115, v115 + v441[3] - 22);
                        v214 = v431[3];
                        if (v214)
                        {
                          dispatch_release(v214);
                          v431[3] = 0;
                        }

                        v215 = v437[3];
                        v4 = v410;
                        v8 = v408;
                        if (v215)
                        {
                          subrange = dispatch_data_create_subrange(v427[3], 0, v215);
                        }

                        else
                        {
                          subrange = 0;
                        }

                        *(a1 + 520) = subrange;
                        v217 = v427[3];
                        if (v217)
                        {
                          dispatch_release(v217);
                          v427[3] = 0;
                        }

LABEL_172:
                        _Block_object_dispose(&v426, 8);
                        _Block_object_dispose(&v430, 8);
                        _Block_object_dispose(v434, 8);
                        _Block_object_dispose(v435, 8);
                        _Block_object_dispose(&v436, 8);
                        _Block_object_dispose(&v440, 8);
                        _Block_object_dispose(v444, 8);
                        _Block_object_dispose(v445, 8);
                        _Block_object_dispose(v446, 8);
                        _Block_object_dispose(&v450, 8);
                        if (!v8)
                        {
                          goto LABEL_174;
                        }

                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      v209 = v205 - 127;
                      while (1)
                      {
                        v210 = v105++;
                        if (v105 > 0x15)
                        {
                          break;
                        }

                        type[v210 + 1] = v209 | 0x80;
                        v208 = v209 >> 7;
                        v211 = v209 >> 14;
                        v209 >>= 7;
                        if (!v211)
                        {
                          v212 = v210 + 2;
                          if ((v210 + 2) <= 21)
                          {
                            goto LABEL_339;
                          }

                          break;
                        }
                      }
                    }

                    v115 = 0;
                    goto LABEL_347;
                  }

                  *type = 0;
                  v108 = *(v70 + 448);
                  if (v108)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v108);
                    fprintf(*(v70 + 448), "ended header for stream %llu; dynamic table not referenced", *(*(v70 + 376) + 40));
                    fputc(10, *(v70 + 448));
                    v100 = *(v70 + 376);
                  }

                  do
                  {
                    v74 = *v74;
                    if (!v74)
                    {
                      __assert_rtn("enc_free_hinfo", "lsqpack.c", 381, "0");
                    }

                    v109 = v74 + 2;
                  }

                  while ((v74 + 2) > v100 || (v74 + 514) <= v100);
                  v74[1] &= ~(1 << ((v100 - v109) >> 6));
                  v111 = &v109[8 * ((v100 - v109) >> 6)];
                  v113 = *v111;
                  v112 = v111[1];
                  v114 = (v70 + 352);
                  if (v113)
                  {
                    v114 = (v113 + 8);
                  }

                  *v114 = v112;
                  *v112 = v113;
                  *(v70 + 376) = 0;
                }

                else
                {
                  *type = 0;
                  v107 = *(v70 + 448);
                  if (v107)
                  {
                    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v107);
                    fwrite("ended header; hinfo absent", 0x1AuLL, 1uLL, *(v70 + 448));
                    fputc(10, *(v70 + 448));
                  }
                }

                *(v70 + 260) &= ~1u;
                *(v70 + 444) += 2;
                v115 = 2;
                goto LABEL_347;
              }
            }

LABEL_578:
            free(v297);
            goto LABEL_114;
          }

          v245 = v8;
          v251 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_serialize_fields";
          v247 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v251, 16, "%{public}s called with null http_metadata", buf, 12);
          type[0] = 16;
          LOBYTE(v450) = 0;
          if (__nwlog_fault(v247, type, &v450))
          {
            if (type[0] == 17)
            {
              v248 = __nwlog_obj();
              v249 = type[0];
              if (!os_log_type_enabled(v248, type[0]))
              {
                goto LABEL_588;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v250 = "%{public}s called with null http_metadata";
              goto LABEL_587;
            }

            if (v450 != 1)
            {
              v248 = __nwlog_obj();
              v249 = type[0];
              if (!os_log_type_enabled(v248, type[0]))
              {
                goto LABEL_588;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v250 = "%{public}s called with null http_metadata, backtrace limit exceeded";
              goto LABEL_587;
            }

            v301 = __nw_create_backtrace_string();
            v248 = __nwlog_obj();
            v249 = type[0];
            v302 = os_log_type_enabled(v248, type[0]);
            if (v301)
            {
              if (v302)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_serialize_fields";
                *&buf[12] = 2082;
                *&buf[14] = v301;
                _os_log_impl(&dword_181A37000, v248, v249, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v301);
              if (!v247)
              {
LABEL_590:
                v4 = v410;
                v8 = v245;
                if (!v245)
                {
LABEL_174:
                  v28 = 1;
                  if (!v6)
                  {
                    goto LABEL_176;
                  }

                  goto LABEL_175;
                }

LABEL_173:
                os_release(v8);
                goto LABEL_174;
              }

LABEL_589:
              free(v247);
              goto LABEL_590;
            }

            if (v302)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_serialize_fields";
              v250 = "%{public}s called with null http_metadata, no backtrace";
LABEL_587:
              _os_log_impl(&dword_181A37000, v248, v249, v250, buf, 0xCu);
            }
          }
        }

        else
        {
          v245 = v8;
          v246 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_serialize_fields";
          v247 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v246, 16, "%{public}s called with null http3_stream->http3_connection", buf, 12);
          type[0] = 16;
          LOBYTE(v450) = 0;
          if (!__nwlog_fault(v247, type, &v450))
          {
            goto LABEL_588;
          }

          if (type[0] == 17)
          {
            v248 = __nwlog_obj();
            v249 = type[0];
            if (!os_log_type_enabled(v248, type[0]))
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v250 = "%{public}s called with null http3_stream->http3_connection";
            goto LABEL_587;
          }

          if (v450 != 1)
          {
            v248 = __nwlog_obj();
            v249 = type[0];
            if (!os_log_type_enabled(v248, type[0]))
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v250 = "%{public}s called with null http3_stream->http3_connection, backtrace limit exceeded";
            goto LABEL_587;
          }

          v294 = __nw_create_backtrace_string();
          v248 = __nwlog_obj();
          v249 = type[0];
          v295 = os_log_type_enabled(v248, type[0]);
          if (!v294)
          {
            if (!v295)
            {
              goto LABEL_588;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            v250 = "%{public}s called with null http3_stream->http3_connection, no backtrace";
            goto LABEL_587;
          }

          if (v295)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_serialize_fields";
            *&buf[12] = 2082;
            *&buf[14] = v294;
            _os_log_impl(&dword_181A37000, v248, v249, "%{public}s called with null http3_stream->http3_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v294);
        }

LABEL_588:
        if (!v247)
        {
          goto LABEL_590;
        }

        goto LABEL_589;
      }

      if ((*(a1 + 732) & 0x2000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v34 = *(*(a1 + 344) + 1304);
          v35 = *(a1 + 240);
          v36 = *(a1 + 392);
          *buf = 136447490;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 632;
          *&buf[22] = 2080;
          v464 = " ";
          LOWORD(v465) = 1024;
          *(&v465 + 2) = v34;
          HIWORD(v465) = 2048;
          v466 = v35;
          *v467 = 2048;
          *&v467[2] = v36;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No request found in frame %p", buf, 0x3Au);
        }
      }

      v37 = *(a1 + 48);
      if (v37)
      {
        v38 = *(v37 + 24);
        if (v38)
        {
          v39 = *(v38 + 56);
          if (v39)
          {
            v39();
            v40 = *(a1 + 48);
            if (!v40)
            {
              goto LABEL_40;
            }

LABEL_38:
            v41 = *(v40 + 24);
            if (!v41)
            {
              goto LABEL_40;
            }

            v42 = *(v41 + 48);
            if (!v42)
            {
              goto LABEL_40;
            }

LABEL_59:
            v42();
            v28 = 0;
LABEL_175:
            os_release(v6);
LABEL_176:
            if (!v4)
            {
              goto LABEL_178;
            }

            goto LABEL_177;
          }
        }
      }

      v256 = v4;
      v257 = __nwlog_obj();
      v258 = *(a1 + 48);
      v259 = "invalid";
      if (v258)
      {
        v260 = *(v258 + 16);
        if (v260)
        {
          v259 = v260;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v259;
      v261 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v257, 16, "%{public}s protocol %{public}s has invalid error callback", buf, 22);
      type[0] = 16;
      LOBYTE(v450) = 0;
      if (__nwlog_fault(v261, type, &v450))
      {
        if (type[0] == 17)
        {
          v262 = __nwlog_obj();
          v263 = type[0];
          if (!os_log_type_enabled(v262, type[0]))
          {
            goto LABEL_603;
          }

          v264 = *(a1 + 48);
          v265 = "invalid";
          if (v264)
          {
            v266 = *(v264 + 16);
            if (v266)
            {
              v265 = v266;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v265;
          v267 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_602:
          _os_log_impl(&dword_181A37000, v262, v263, v267, buf, 0x16u);
          goto LABEL_603;
        }

        if (v450 != 1)
        {
          v262 = __nwlog_obj();
          v263 = type[0];
          if (!os_log_type_enabled(v262, type[0]))
          {
            goto LABEL_603;
          }

          v355 = *(a1 + 48);
          v356 = "invalid";
          if (v355)
          {
            v357 = *(v355 + 16);
            if (v357)
            {
              v356 = v357;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v356;
          v267 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
          goto LABEL_602;
        }

        v308 = __nw_create_backtrace_string();
        v262 = __nwlog_obj();
        v263 = type[0];
        v309 = os_log_type_enabled(v262, type[0]);
        if (!v308)
        {
          if (!v309)
          {
            goto LABEL_603;
          }

          v373 = *(a1 + 48);
          v374 = "invalid";
          if (v373)
          {
            v375 = *(v373 + 16);
            if (v375)
            {
              v374 = v375;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v374;
          v267 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
          goto LABEL_602;
        }

        if (v309)
        {
          v310 = *(a1 + 48);
          v311 = "invalid";
          if (v310)
          {
            v312 = *(v310 + 16);
            if (v312)
            {
              v311 = v312;
            }
          }

          *buf = 136446722;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v311;
          *&buf[22] = 2082;
          v464 = v308;
          _os_log_impl(&dword_181A37000, v262, v263, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v308);
      }

LABEL_603:
      if (v261)
      {
        free(v261);
      }

      v4 = v256;
      v40 = *(a1 + 48);
      if (!v40)
      {
LABEL_40:
        v43 = v4;
        v44 = __nwlog_obj();
        v45 = *(a1 + 48);
        v46 = "invalid";
        if (v45)
        {
          v47 = *(v45 + 16);
          if (v47)
          {
            v46 = v47;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v46;
        LODWORD(v405) = 22;
        v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, v405);
        type[0] = 16;
        LOBYTE(v450) = 0;
        if (__nwlog_fault(v48, type, &v450))
        {
          if (type[0] == 17)
          {
            v49 = __nwlog_obj();
            v50 = type[0];
            if (!os_log_type_enabled(v49, type[0]))
            {
              goto LABEL_646;
            }

            v51 = *(a1 + 48);
            v52 = "invalid";
            if (v51)
            {
              v53 = *(v51 + 16);
              if (v53)
              {
                v52 = v53;
              }
            }

LABEL_49:
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v52;
            v54 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_645:
            _os_log_impl(&dword_181A37000, v49, v50, v54, buf, 0x16u);
            goto LABEL_646;
          }

          if (v450 == 1)
          {
            v303 = __nw_create_backtrace_string();
            v49 = __nwlog_obj();
            v50 = type[0];
            v304 = os_log_type_enabled(v49, type[0]);
            if (v303)
            {
              if (v304)
              {
                v305 = *(a1 + 48);
                v306 = "invalid";
                if (v305)
                {
                  v307 = *(v305 + 16);
                  if (v307)
                  {
                    v306 = v307;
                  }
                }

                *buf = 136446722;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v306;
                *&buf[22] = 2082;
                v464 = v303;
                _os_log_impl(&dword_181A37000, v49, v50, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v303);
              goto LABEL_646;
            }

            if (!v304)
            {
              goto LABEL_646;
            }

            v370 = *(a1 + 48);
            v371 = "invalid";
            if (v370)
            {
              v372 = *(v370 + 16);
              if (v372)
              {
                v371 = v372;
              }
            }

LABEL_644:
            *buf = 136446466;
            *&buf[4] = "nw_http3_stream_send_fields";
            *&buf[12] = 2082;
            *&buf[14] = v371;
            v54 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
            goto LABEL_645;
          }

          v49 = __nwlog_obj();
          v50 = type[0];
          if (!os_log_type_enabled(v49, type[0]))
          {
            goto LABEL_646;
          }

          v352 = *(a1 + 48);
          v353 = "invalid";
          if (v352)
          {
            v354 = *(v352 + 16);
            if (v354)
            {
              v353 = v354;
            }
          }

LABEL_545:
          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v353;
          v54 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
          goto LABEL_645;
        }

        goto LABEL_646;
      }

      goto LABEL_38;
    }

    v29 = nw_http_metadata_copy_response(v5);
    if (v29)
    {
      v30 = v29;
      status_code = _nw_http_response_get_status_code(v30);

      *(a1 + 734) = *(a1 + 734) & 0xFB | (4 * ((status_code - 100) < 0x64));
      v32 = *(a1 + 408);
      v410 = v4;
      if (v32)
      {
        v8 = nw_http_metadata_copy_request(v32);
      }

      else
      {
        v8 = 0;
      }

      os_release(v30);
      goto LABEL_64;
    }

    if ((*(a1 + 732) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v55 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v56 = *(*(a1 + 344) + 1304);
        v57 = *(a1 + 240);
        v58 = *(a1 + 392);
        *buf = 136447490;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 632;
        *&buf[22] = 2080;
        v464 = " ";
        LOWORD(v465) = 1024;
        *(&v465 + 2) = v56;
        HIWORD(v465) = 2048;
        v466 = v57;
        *v467 = 2048;
        *&v467[2] = v58;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No response found in frame %p", buf, 0x3Au);
      }
    }

    v59 = *(a1 + 48);
    if (v59)
    {
      v60 = *(v59 + 24);
      if (v60)
      {
        v61 = *(v60 + 56);
        if (v61)
        {
          v61();
          v62 = *(a1 + 48);
          if (!v62)
          {
            goto LABEL_616;
          }

LABEL_57:
          v63 = *(v62 + 24);
          if (v63)
          {
            v42 = *(v63 + 48);
            if (v42)
            {
              goto LABEL_59;
            }
          }

LABEL_616:
          v43 = v4;
          v379 = __nwlog_obj();
          v380 = *(a1 + 48);
          v381 = "invalid";
          if (v380)
          {
            v382 = *(v380 + 16);
            if (v382)
            {
              v381 = v382;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http3_stream_send_fields";
          *&buf[12] = 2082;
          *&buf[14] = v381;
          LODWORD(v405) = 22;
          v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v379, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, v405);
          type[0] = 16;
          LOBYTE(v450) = 0;
          if (__nwlog_fault(v48, type, &v450))
          {
            if (type[0] == 17)
            {
              v49 = __nwlog_obj();
              v50 = type[0];
              if (!os_log_type_enabled(v49, type[0]))
              {
                goto LABEL_646;
              }

              v383 = *(a1 + 48);
              v52 = "invalid";
              if (v383)
              {
                v384 = *(v383 + 16);
                if (v384)
                {
                  v52 = v384;
                }
              }

              goto LABEL_49;
            }

            if (v450 != 1)
            {
              v49 = __nwlog_obj();
              v50 = type[0];
              if (!os_log_type_enabled(v49, type[0]))
              {
                goto LABEL_646;
              }

              v390 = *(a1 + 48);
              v353 = "invalid";
              if (v390)
              {
                v391 = *(v390 + 16);
                if (v391)
                {
                  v353 = v391;
                }
              }

              goto LABEL_545;
            }

            v385 = __nw_create_backtrace_string();
            v49 = __nwlog_obj();
            v50 = type[0];
            v386 = os_log_type_enabled(v49, type[0]);
            if (v385)
            {
              if (v386)
              {
                v387 = *(a1 + 48);
                v388 = "invalid";
                if (v387)
                {
                  v389 = *(v387 + 16);
                  if (v389)
                  {
                    v388 = v389;
                  }
                }

                *buf = 136446722;
                *&buf[4] = "nw_http3_stream_send_fields";
                *&buf[12] = 2082;
                *&buf[14] = v388;
                *&buf[22] = 2082;
                v464 = v385;
                _os_log_impl(&dword_181A37000, v49, v50, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v385);
              if (!v48)
              {
                goto LABEL_648;
              }

              goto LABEL_647;
            }

            if (v386)
            {
              v392 = *(a1 + 48);
              v371 = "invalid";
              if (v392)
              {
                v393 = *(v392 + 16);
                if (v393)
                {
                  v371 = v393;
                }
              }

              goto LABEL_644;
            }
          }

LABEL_646:
          if (!v48)
          {
LABEL_648:
            v28 = 0;
            v4 = v43;
            goto LABEL_175;
          }

LABEL_647:
          free(v48);
          goto LABEL_648;
        }
      }
    }

    v268 = v4;
    v269 = __nwlog_obj();
    v270 = *(a1 + 48);
    v271 = "invalid";
    if (v270)
    {
      v272 = *(v270 + 16);
      if (v272)
      {
        v271 = v272;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_http3_stream_send_fields";
    *&buf[12] = 2082;
    *&buf[14] = v271;
    v273 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v269, 16, "%{public}s protocol %{public}s has invalid error callback", buf, 22);
    type[0] = 16;
    LOBYTE(v450) = 0;
    if (__nwlog_fault(v273, type, &v450))
    {
      if (type[0] == 17)
      {
        v274 = __nwlog_obj();
        v275 = type[0];
        if (!os_log_type_enabled(v274, type[0]))
        {
          goto LABEL_613;
        }

        v276 = *(a1 + 48);
        v277 = "invalid";
        if (v276)
        {
          v278 = *(v276 + 16);
          if (v278)
          {
            v277 = v278;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v277;
        v279 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_612:
        _os_log_impl(&dword_181A37000, v274, v275, v279, buf, 0x16u);
        goto LABEL_613;
      }

      if (v450 != 1)
      {
        v274 = __nwlog_obj();
        v275 = type[0];
        if (!os_log_type_enabled(v274, type[0]))
        {
          goto LABEL_613;
        }

        v358 = *(a1 + 48);
        v359 = "invalid";
        if (v358)
        {
          v360 = *(v358 + 16);
          if (v360)
          {
            v359 = v360;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v359;
        v279 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_612;
      }

      v313 = __nw_create_backtrace_string();
      v274 = __nwlog_obj();
      v275 = type[0];
      v314 = os_log_type_enabled(v274, type[0]);
      if (!v313)
      {
        if (!v314)
        {
          goto LABEL_613;
        }

        v376 = *(a1 + 48);
        v377 = "invalid";
        if (v376)
        {
          v378 = *(v376 + 16);
          if (v378)
          {
            v377 = v378;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v377;
        v279 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
        goto LABEL_612;
      }

      if (v314)
      {
        v315 = *(a1 + 48);
        v316 = "invalid";
        if (v315)
        {
          v317 = *(v315 + 16);
          if (v317)
          {
            v316 = v317;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v316;
        *&buf[22] = 2082;
        v464 = v313;
        _os_log_impl(&dword_181A37000, v274, v275, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v313);
    }

LABEL_613:
    if (v273)
    {
      free(v273);
    }

    v4 = v268;
    v62 = *(a1 + 48);
    if (!v62)
    {
      goto LABEL_616;
    }

    goto LABEL_57;
  }

  if ((*(a1 + 732) & 0x2000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(a1 + 344) + 1304);
      v20 = *(a1 + 240);
      v21 = *(a1 + 392);
      *buf = 136447490;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 632;
      *&buf[22] = 2080;
      v464 = " ";
      LOWORD(v465) = 1024;
      *(&v465 + 2) = v19;
      HIWORD(v465) = 2048;
      v466 = v20;
      *v467 = 2048;
      *&v467[2] = v21;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No http metadata found in frame %p", buf, 0x3Au);
    }
  }

  v22 = *(a1 + 48);
  if (!v22 || (v23 = *(v22 + 24)) == 0 || (v24 = *(v23 + 56)) == 0)
  {
    v219 = v4;
    v220 = __nwlog_obj();
    v221 = *(a1 + 48);
    v222 = "invalid";
    if (v221)
    {
      v223 = *(v221 + 16);
      if (v223)
      {
        v222 = v223;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_http3_stream_send_fields";
    *&buf[12] = 2082;
    *&buf[14] = v222;
    v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v220, 16, "%{public}s protocol %{public}s has invalid error callback", buf, 22);
    type[0] = 16;
    LOBYTE(v450) = 0;
    if (__nwlog_fault(v224, type, &v450))
    {
      if (type[0] == 17)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_495;
        }

        v227 = *(a1 + 48);
        v228 = "invalid";
        if (v227)
        {
          v229 = *(v227 + 16);
          if (v229)
          {
            v228 = v229;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v228;
        v230 = "%{public}s protocol %{public}s has invalid error callback";
LABEL_494:
        _os_log_impl(&dword_181A37000, v225, v226, v230, buf, 0x16u);
        goto LABEL_495;
      }

      if (v450 != 1)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_495;
        }

        v280 = *(a1 + 48);
        v281 = "invalid";
        if (v280)
        {
          v282 = *(v280 + 16);
          if (v282)
          {
            v281 = v282;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v281;
        v230 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_494;
      }

      v238 = __nw_create_backtrace_string();
      v225 = __nwlog_obj();
      v226 = type[0];
      v239 = os_log_type_enabled(v225, type[0]);
      if (!v238)
      {
        if (!v239)
        {
          goto LABEL_495;
        }

        v323 = *(a1 + 48);
        v324 = "invalid";
        if (v323)
        {
          v325 = *(v323 + 16);
          if (v325)
          {
            v324 = v325;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v324;
        v230 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
        goto LABEL_494;
      }

      if (v239)
      {
        v240 = *(a1 + 48);
        v241 = "invalid";
        if (v240)
        {
          v242 = *(v240 + 16);
          if (v242)
          {
            v241 = v242;
          }
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_send_fields";
        *&buf[12] = 2082;
        *&buf[14] = v241;
        *&buf[22] = 2082;
        v464 = v238;
        _os_log_impl(&dword_181A37000, v225, v226, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v238);
    }

LABEL_495:
    if (v224)
    {
      free(v224);
    }

    v4 = v219;
    v25 = *(a1 + 48);
    if (!v25)
    {
      goto LABEL_498;
    }

    goto LABEL_24;
  }

  v24();
  v25 = *(a1 + 48);
  if (!v25)
  {
    goto LABEL_498;
  }

LABEL_24:
  v26 = *(v25 + 24);
  if (v26)
  {
    v27 = *(v26 + 48);
    if (v27)
    {
      v27();
      v28 = 0;
      if (!v4)
      {
        goto LABEL_178;
      }

LABEL_177:
      os_release(v4);
      goto LABEL_178;
    }
  }

LABEL_498:
  v326 = v4;
  v327 = __nwlog_obj();
  v328 = *(a1 + 48);
  v329 = "invalid";
  if (v328)
  {
    v330 = *(v328 + 16);
    if (v330)
    {
      v329 = v330;
    }
  }

  *buf = 136446466;
  *&buf[4] = "nw_http3_stream_send_fields";
  *&buf[12] = 2082;
  *&buf[14] = v329;
  LODWORD(v405) = 22;
  v331 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v327, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, v405);
  type[0] = 16;
  LOBYTE(v450) = 0;
  if (__nwlog_fault(v331, type, &v450))
  {
    if (type[0] == 17)
    {
      v332 = __nwlog_obj();
      v333 = type[0];
      if (!os_log_type_enabled(v332, type[0]))
      {
        goto LABEL_527;
      }

      v334 = *(a1 + 48);
      v335 = "invalid";
      if (v334)
      {
        v336 = *(v334 + 16);
        if (v336)
        {
          v335 = v336;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v335;
      v337 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_526:
      _os_log_impl(&dword_181A37000, v332, v333, v337, buf, 0x16u);
      goto LABEL_527;
    }

    if (v450 != 1)
    {
      v332 = __nwlog_obj();
      v333 = type[0];
      if (!os_log_type_enabled(v332, type[0]))
      {
        goto LABEL_527;
      }

      v343 = *(a1 + 48);
      v344 = "invalid";
      if (v343)
      {
        v345 = *(v343 + 16);
        if (v345)
        {
          v344 = v345;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v344;
      v337 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
      goto LABEL_526;
    }

    v338 = __nw_create_backtrace_string();
    v332 = __nwlog_obj();
    v333 = type[0];
    v339 = os_log_type_enabled(v332, type[0]);
    if (!v338)
    {
      if (!v339)
      {
        goto LABEL_527;
      }

      v346 = *(a1 + 48);
      v347 = "invalid";
      if (v346)
      {
        v348 = *(v346 + 16);
        if (v348)
        {
          v347 = v348;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v347;
      v337 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
      goto LABEL_526;
    }

    if (v339)
    {
      v340 = *(a1 + 48);
      v341 = "invalid";
      if (v340)
      {
        v342 = *(v340 + 16);
        if (v342)
        {
          v341 = v342;
        }
      }

      *buf = 136446722;
      *&buf[4] = "nw_http3_stream_send_fields";
      *&buf[12] = 2082;
      *&buf[14] = v341;
      *&buf[22] = 2082;
      v464 = v338;
      _os_log_impl(&dword_181A37000, v332, v333, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v338);
  }

LABEL_527:
  if (v331)
  {
    free(v331);
  }

  v28 = 0;
  v4 = v326;
  if (v326)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (v28)
  {
    goto LABEL_179;
  }

  return 0;
}